package org.ccci.idm.grouper.dao;

import java.util.Date;
import java.util.List;
import java.util.Set;

import org.ccci.idm.grouper.obj.GrouperFolder;
import org.ccci.idm.grouper.obj.GrouperGroup;
import org.ccci.idm.grouper.obj.GrouperMembership;
import org.ccci.idm.obj.SsoUser;

public interface GrouperDao
{
    public List<GrouperGroup> loadAllGroups(String folder);
    public List<GrouperFolder> loadAllFolders(String folder);
    public GrouperGroup loadGroup(String fullPath);
    public GrouperFolder loadFolder(String fullPath);
    public void loadChildGroupsAndFoldersRecursively(GrouperFolder folder);
    public void removeGroup(String id);
    public void removeStem(String id);
    public void addGroup(GrouperGroup newGroup, String... admins);
    public void addFolder(GrouperFolder newFolder, String... admins);
    
    public SsoUser loadSsoUser(String subjectId);
    

    public void addMember(String user, String group) throws Exception;    
    public void deleteMember(String member, String group) throws Exception;
    public List<SsoUser> getMembers(String groupFullPath);
    public SsoUser getAttester(String member, String group) throws Exception;
    public void setExpiration(String member, String group, Date expiration);
    public Date getExpiration(String member, String group);

    /**
     * Get user group memberships
     * 
     * @param member
     * @param folder - search from specified folder where null indicates root
     * @return
     * @throws Exception
     */
    public Set<GrouperMembership> getMemberships(String member, String folder) throws Exception;
    
    public GrouperMembership getMembership(String assigneeId, String roleId);
    
    public void close();
}
