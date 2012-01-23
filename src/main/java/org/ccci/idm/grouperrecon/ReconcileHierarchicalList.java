package org.ccci.idm.grouperrecon;

import java.util.List;

import org.ccci.idm.grouper.dao.GrouperDao;
import org.ccci.idm.grouper.dao.GrouperDaoImpl;
import org.ccci.idm.grouper.obj.GrouperFolder;
import org.ccci.idm.grouper.obj.GrouperGroup;

import edu.internet2.middleware.grouper.util.ConfigItem;

public abstract class ReconcileHierarchicalList implements ReconcileList
{
    @ConfigItem
    private String grouperUser;
    @ConfigItem
    private String adminUser;
    @ConfigItem
    private String groupPrefix;
    
    protected abstract List<ExternalGroup> getExternalGroups() throws Exception;
    
    
   
    public ReconcileHierarchicalList(String grouperUser, String adminUser, String groupPrefix)
    {
        super();
        this.grouperUser = grouperUser;
        this.adminUser = adminUser;
        this.groupPrefix = groupPrefix;
    }



    public void reconcileExternalGroups() throws Exception
    {
        
        GrouperDao gDao = new GrouperDaoImpl(grouperUser);
        
        List<ExternalGroup> externalGroups = getExternalGroups();
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

    private void removeGroupsForDeletedExternalGroups(GrouperDao gDao, List<ExternalGroup> externalGroups, GrouperFolder root)
    {
      for(GrouperGroup group : root.getChildGroups())
      {
          ExternalGroup externalGroup = findGroupByDisplayName(externalGroups, group.getDisplayName());
          if(externalGroup==null)
          {
              System.out.println("removing group "+group.getContainingFolderPath()+":"+group.getId());
              gDao.removeGroup(group.getContainingFolderPath()+":"+group.getId());
          }
      }
      for(GrouperFolder folder : root.getChildFolders())
      {
          ExternalGroup externalGroup = findGroupByDisplayName(externalGroups, folder.getDisplayName());
          if(externalGroup==null)
          {
              System.out.println("removing folder "+folder.getContainingFolderPath()+":"+folder.getId());
              gDao.removeStem(folder.getContainingFolderPath()+":"+folder.getId());
          }
          else
          {
              removeGroupsForDeletedExternalGroups(gDao, externalGroup.getChildren(), folder);
          }
      }
    }



    private ExternalGroup findGroupByDisplayName(List<ExternalGroup> externalGroups, String displayName)
    {
        if (externalGroups == null) return null;
        for (ExternalGroup group : externalGroups)
        {
            if (displayName.equals(group.getName())) { return group; }
        }
        return null;
    }

    private void addMissingGroupsForNewExternalGroups(GrouperDao gDao, List<ExternalGroup> externalGroups, GrouperFolder root)
    {
      for(ExternalGroup externalGroup : externalGroups)
      {
          GrouperGroup group = findGrouperGroupByDisplayName(root, externalGroup.getName());
          if(group==null)
          {
              createGroupForExternalGroup(gDao, externalGroup, root.getFullPath());
          }
          if(externalGroup.hasChildren())
          {
              GrouperFolder folder = findGrouperFolderByDisplayName(root, externalGroup.getName());
              if(folder==null)
              {
                  folder = createFolderForExternalGroup(gDao, externalGroup, root.getFullPath());
              }
              addMissingGroupsForNewExternalGroups(gDao, externalGroup.getChildren(), folder);
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

    private void createGroupForExternalGroup(GrouperDao gDao, ExternalGroup externalGroup, String groupPrefix)
    {
        System.out.println("adding group: "+groupPrefix+":"+externalGroup.getName());
        GrouperGroup group = new GrouperGroup();
        group.setDisplayName(externalGroup.getName());
        group.setId(computeGroupId(externalGroup.getName()));
        group.setContainingFolderPath(groupPrefix);
        gDao.addGroup(group, adminUser, grouperUser);
    }
    private GrouperFolder createFolderForExternalGroup(GrouperDao gDao, ExternalGroup externalGroup, String groupPrefix)
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
