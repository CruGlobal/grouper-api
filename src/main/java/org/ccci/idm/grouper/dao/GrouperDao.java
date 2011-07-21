package org.ccci.idm.grouper.dao;

import java.util.List;
import java.util.Set;

import org.ccci.idm.grouper.obj.GrouperGroup;
import org.ccci.idm.grouper.obj.GrouperMembership;
import org.ccci.idm.obj.SsoUser;

public interface GrouperDao
{
    public List<GrouperGroup> loadAllGroups(String folder);
    public GrouperGroup loadGroup(String fullPath);
    public void removeGroup(String id);
    public void addGroup(GrouperGroup newGroup, String... admins);
    
    public SsoUser loadSsoUser(String subjectId);
    

    public void addMember(String user, String group) throws Exception;    
    public void deleteMember(String member, String group) throws Exception;
    public SsoUser getAttester(String member, String group) throws Exception;

    /**
     * Get user group memberships
     * 
     * @param member
     * @param folder - search from specified folder where null indicates root
     * @return
     * @throws Exception
     */
    public Set<GrouperMembership> getMemberships(String member, String folder) throws Exception;
    
    public void close();
}
