package org.ccci.idm.grouperrecon;

import java.util.List;

import org.ccci.idm.grouper.dao.GrouperDao;
import org.ccci.idm.grouper.dao.GrouperDaoImpl;
import org.ccci.idm.grouper.obj.GrouperGroup;

import edu.internet2.middleware.grouper.util.ConfigItem;

public abstract class ReconcileFlatList implements ReconcileList
{
    @ConfigItem
    private String grouperUser;
    @ConfigItem
    private String adminUser;
    @ConfigItem
    private String groupPrefix;
    
    protected abstract List<ExternalNode> getExternalGroups() throws Exception;
    
    
   
    public ReconcileFlatList(String grouperUser, String adminUser, String groupPrefix)
    {
        super();
        this.grouperUser = grouperUser;
        this.adminUser = adminUser;
        this.groupPrefix = groupPrefix;
    }



    public void reconcileExternalGroups() throws Exception
    {
        
        GrouperDao gDao = new GrouperDaoImpl(grouperUser);
        
        List<ExternalNode> externalGroups = getExternalGroups();
        List<GrouperGroup> groups = gDao.loadAllGroups(groupPrefix);
        
        addMissingGroupsForNewExternalGroups(gDao, externalGroups, groups);
        removeGroupsForDeletedExternalGroups(gDao, externalGroups, groups);
    }

    private void removeGroupsForDeletedExternalGroups(GrouperDao gDao, List<ExternalNode> externalGroups, List<GrouperGroup> groups)
    {
      for(GrouperGroup group : groups)
      {
          boolean found = false;
          for(ExternalNode grouperGroup : externalGroups)
          {
              if(group.getDisplayName().equals(grouperGroup.getName()))
              {
                  found = true;
              }
          }
          if(!found)
          {
              gDao.removeGroup(group.getContainingFolderPath()+":"+group.getId());
          }
      }
    }

    private void addMissingGroupsForNewExternalGroups(GrouperDao gDao, List<ExternalNode> externalGroups, List<GrouperGroup> groups)
    {
      for(ExternalNode externalGroup : externalGroups)
      {
          boolean found = false;
          for(GrouperGroup group : groups)
          {
              if(group.getDisplayName().equals(externalGroup.getName()))
              {
                  found = true;
              }
          }
          if(!found)
          {
              createGroupForExternalGroup(gDao, externalGroup);
          }
      }
    }

    private void createGroupForExternalGroup(GrouperDao gDao, ExternalNode externalGroups)
    {
        GrouperGroup group = new GrouperGroup();
        group.setDisplayName(externalGroups.getName());
        group.setId(computeGroupId(externalGroups.getName()));
        group.setContainingFolderPath(groupPrefix);
        gDao.addGroup(group, adminUser);
    }

    private String computeGroupId(String string)
    {
        return string.replace(" ", "_").toLowerCase();
    }
}
