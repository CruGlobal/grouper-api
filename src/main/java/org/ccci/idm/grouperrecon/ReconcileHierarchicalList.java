package org.ccci.idm.grouperrecon;

import java.util.ArrayList;
import java.util.List;

import org.ccci.idm.grouper.dao.GrouperDao;
import org.ccci.idm.grouper.dao.GrouperDaoImpl;
import org.ccci.idm.grouper.obj.GrouperFolder;
import org.ccci.idm.grouper.obj.GrouperGroup;

public abstract class ReconcileHierarchicalList implements ReconcileList
{
    private String grouperUser;
    private String groupPrefix;
    
    private List<String> adminUsers = new ArrayList<String>();
    
    protected abstract List<ExternalNode> getExternalGroups() throws Exception;
    
    
   
    public ReconcileHierarchicalList(String grouperUser, String adminUsersStr, String groupPrefix)
    {
        super();
        this.grouperUser = grouperUser;
        this.groupPrefix = groupPrefix;
        String admins[] = adminUsersStr.split(",");
        adminUsers.add(grouperUser);
        for(String admin : admins)
        {
            adminUsers.add(admin.trim());
        }
    }



    public void reconcileExternalGroups() throws Exception
    {
        
        GrouperDao gDao = new GrouperDaoImpl(grouperUser);
        
        List<ExternalNode> externalGroups = getExternalGroups();
        GrouperFolder root = new GrouperFolder(groupPrefix);
        loadChildGroupsAndFolders(gDao, root);
        
        addMissingGroupsForNewExternalGroups(gDao, externalGroups, root);
        removeGroupsForDeletedExternalGroups(gDao, externalGroups, root);
    }



    private void loadChildGroupsAndFolders(GrouperDao gDao, GrouperFolder root)
    {
        List<GrouperGroup> groups = gDao.loadAllGroups(root.getFullPath());
        List<GrouperFolder> folders = gDao.loadAllFolders(root.getFullPath());
        root.setChildGroups(groups);
        root.setChildFolders(folders);
        for(GrouperFolder folder : folders)
        {
            loadChildGroupsAndFolders(gDao, folder);
        }
    }

    private void removeGroupsForDeletedExternalGroups(GrouperDao gDao, List<ExternalNode> externalGroups, GrouperFolder root)
    {
      for(GrouperGroup group : root.getChildGroups())
      {
          ExternalNode externalGroup = findExternalGroupByDisplayName(externalGroups, group.getDisplayName());
          if(externalGroup==null)
          {
              System.out.println("removing group "+group.getContainingFolderPath()+":"+group.getId());
              gDao.removeGroup(group.getContainingFolderPath()+":"+group.getId());
          }
      }
      for(GrouperFolder folder : root.getChildFolders())
      {
          ExternalFolder externalFolder = findExternalFolderByDisplayName(externalGroups, folder.getDisplayName());
          if(externalFolder==null)
          {
              System.out.println("removing folder "+folder.getContainingFolderPath()+":"+folder.getId());
              gDao.removeStem(folder.getContainingFolderPath()+":"+folder.getId());
          }
          else
          {
              removeGroupsForDeletedExternalGroups(gDao, externalFolder.getChildren(), folder);
          }
      }
    }



    private ExternalGroup findExternalGroupByDisplayName(List<ExternalNode> externalGroups, String displayName)
    {
        if (externalGroups == null) return null;
        for (ExternalNode group : externalGroups)
        {
            if (displayName.equals(group.getName()) && group instanceof ExternalGroup) { return (ExternalGroup)group; }
        }
        return null;
    }
    private ExternalFolder findExternalFolderByDisplayName(List<ExternalNode> externalGroups, String displayName)
    {
        if (externalGroups == null) return null;
        for (ExternalNode group : externalGroups)
        {
            if (displayName.equals(group.getName()) && group instanceof ExternalFolder) { return (ExternalFolder)group; }
        }
        return null;
    }

    private void addMissingGroupsForNewExternalGroups(GrouperDao gDao, List<ExternalNode> externalGroups, GrouperFolder root)
    {
      for(ExternalNode externalNode : externalGroups)
      {
          if(externalNode instanceof ExternalGroup)
          {
              GrouperGroup group = findGrouperGroupByDisplayName(root, externalNode.getName());
              if(group==null)
              {
                  createGroupForExternalGroup(gDao, externalNode, root.getFullPath());
              }
          }
          else if (externalNode instanceof ExternalFolder && ((ExternalFolder)externalNode).hasChildren())
          {
              GrouperFolder folder = findGrouperFolderByDisplayName(root, externalNode.getName());
              if(folder==null)
              {
                  folder = createFolderForExternalGroup(gDao, externalNode, root.getFullPath());
              }
              addMissingGroupsForNewExternalGroups(gDao, ((ExternalFolder)externalNode).getChildren(), folder);
          }
      }
    }


    private GrouperGroup findGrouperGroupByDisplayName(GrouperFolder root, String name)
    {
        if(root.getChildGroups()==null) return null;
        for (GrouperGroup group : root.getChildGroups())
        {
            if (group.getDisplayName().equals(name))
            {
                return group;
            }
        }
        return null;
    }
    private GrouperFolder findGrouperFolderByDisplayName(GrouperFolder root, String name)
    {
        if(root.getChildFolders()==null) return null;
        for (GrouperFolder folder : root.getChildFolders())
        {
            if (folder.getDisplayName().equals(name))
            {
                return folder;
            }
        }
        return null;
    }

    private void createGroupForExternalGroup(GrouperDao gDao, ExternalNode externalGroup, String groupPrefix)
    {
        System.out.println("adding group: "+groupPrefix+":"+externalGroup.getName());
        GrouperGroup group = new GrouperGroup();
        group.setDisplayName(externalGroup.getName());
        group.setId(computeGroupId(externalGroup.getName()));
        group.setContainingFolderPath(groupPrefix);
        gDao.addGroup(group, adminUsers.toArray(new String[]{}));
    }
    private GrouperFolder createFolderForExternalGroup(GrouperDao gDao, ExternalNode externalGroup, String groupPrefix)
    {
        System.out.println("adding folder: "+groupPrefix+":"+externalGroup.getName());
        GrouperFolder folder = new GrouperFolder();
        folder.setDisplayName(externalGroup.getName());
        folder.setId(computeGroupId(externalGroup.getName()));
        folder.setContainingFolderPath(groupPrefix);
        gDao.addFolder(folder, grouperUser);
        return folder;
    }

    private String computeGroupId(String string)
    {
        return string.replace(" ", "_").toLowerCase();
    }
}
