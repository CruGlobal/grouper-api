package org.ccci.idm.grouper.dao;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.ccci.idm.grouper.obj.GrouperFolder;
import org.ccci.idm.grouper.obj.GrouperGroup;
import org.ccci.idm.grouper.obj.GrouperMembership;
import org.ccci.idm.obj.SsoUser;

import edu.internet2.middleware.grouper.Group;
import edu.internet2.middleware.grouper.GroupFinder;
import edu.internet2.middleware.grouper.GrouperSession;
import edu.internet2.middleware.grouper.Member;
import edu.internet2.middleware.grouper.MemberFinder;
import edu.internet2.middleware.grouper.Membership;
import edu.internet2.middleware.grouper.Stem;
import edu.internet2.middleware.grouper.StemFinder;
import edu.internet2.middleware.grouper.SubjectFinder;
import edu.internet2.middleware.grouper.audit.AuditEntry;
import edu.internet2.middleware.grouper.audit.GrouperEngineBuiltin;
import edu.internet2.middleware.grouper.audit.UserAuditQuery;
import edu.internet2.middleware.grouper.exception.GroupNotFoundException;
import edu.internet2.middleware.grouper.exception.SessionException;
import edu.internet2.middleware.grouper.hibernate.GrouperContext;
import edu.internet2.middleware.grouper.privs.AccessPrivilege;
import edu.internet2.middleware.grouper.privs.NamingPrivilege;
import edu.internet2.middleware.subject.Subject;

public class GrouperDaoImpl implements GrouperDao
{
    private String sessionOwner = null;
    private Subject loggedInSubject = null;
    private Member loggedInMember = null;
    
    private GrouperSession grouperSession = null;
    private GrouperContext grouperContext = null;

    final private String SystemFolder = "sys";
    final private String AttestationAttributeDefName = "attestation";

    public GrouperDaoImpl(String sessionOwner) throws SessionException
    {
        this.sessionOwner = sessionOwner;
        if(sessionOwner==null)
        {
            grouperSession = GrouperSession.startRootSession();
        }
        else
        {
            grouperSession = GrouperSession.start(SubjectFinder.findByIdOrIdentifier(sessionOwner, true));
            grouperContext = GrouperContext.createNewDefaultContext(GrouperEngineBuiltin.UI, false, true);
            loggedInSubject = SubjectFinder.findByIdOrIdentifier(sessionOwner, true);
            loggedInMember = MemberFinder.findBySubject(grouperSession, loggedInSubject, true);
            grouperContext.setLoggedInMemberId(loggedInMember.getUuid());
            grouperContext.setLoggedInMemberIdActAs(loggedInMember.getUuid());
        }
    }
    
    public List<GrouperFolder> loadAllFolders(String folderPath)
    {
        Stem stem = StemFinder.findByName(grouperSession, folderPath, true);
        List<GrouperFolder> folders = new ArrayList<GrouperFolder>();
        for (Stem childStem : (Set<Stem>)stem.getChildStems())
        {
            folders.add(new GrouperFolder(childStem));
        }
        return folders;
    }
    

    public List<GrouperGroup> loadAllGroups(String folderPath)
    {
        Stem stem = StemFinder.findByName(grouperSession, folderPath, true);
        List<GrouperGroup> groups = new ArrayList<GrouperGroup>();
        for (Group group : (Set<Group>)stem.getChildGroups())
        {
            groups.add(new GrouperGroup(group));
        }
        return groups;
    }
    
    public GrouperGroup loadGroup(String fullPath)
    {
        try
        {
            Group group = GroupFinder.findByName(grouperSession, fullPath, true);
            if(group==null) return null;
            return new GrouperGroup(group);
        }
        catch (GroupNotFoundException e)
        {
            return null;
        }
        
    }
    public GrouperFolder loadFolder(String fullPath)
    {
        try
        {
            Stem stem = StemFinder.findByName(grouperSession, fullPath, true);
            if(stem==null) return null;
            return new GrouperFolder(stem);
        }
        catch (GroupNotFoundException e)
        {
            return null;
        }
        
    }
    

    public void removeGroup(String fullPath)
    {
        GroupFinder.findByName(grouperSession, fullPath, true).delete();
        Group grp = GroupFinder.findByName(grouperSession, fullPath, false);
        if(grp!=null) throw new RuntimeException("delete failed");
    }
    
    public void removeStem(String fullPath)
    {
        StemFinder.findByName(grouperSession, fullPath, true).delete();
    }


    public void addGroup(GrouperGroup newGroup, String... admins)
    {
        Stem stem = StemFinder.findByName(grouperSession, newGroup.getContainingFolderPath(), true);
        Group createdGroup = stem.addChildGroup(newGroup.getId(), newGroup.getDisplayName());
        if(admins!=null) for(String admin : admins)
        {
            createdGroup.grantPriv(SubjectFinder.findById(admin, true), AccessPrivilege.ADMIN, false);
        }
    }

    public void addFolder(GrouperFolder newFolder, String... admins)
    {
        Stem stem = StemFinder.findByName(grouperSession, newFolder.getContainingFolderPath(), true);
        Stem createdStem = stem.addChildStem(newFolder.getId(), newFolder.getDisplayName());
        if(admins!=null) for(String admin : admins)
        {
            createdStem.grantPriv(SubjectFinder.findById(admin, true), NamingPrivilege.CREATE, false);
            createdStem.grantPriv(SubjectFinder.findById(admin, true), NamingPrivilege.STEM, false);
        }
    }
    
    public void addMember(String user, String groupName) throws Exception
    {
        // add new member to the group
        Subject subject = SubjectFinder.findByIdOrIdentifier(user, true);
        Group group = GroupFinder.findByName(grouperSession, groupName, true);
        group.addMember(subject, false);
    }

    public void deleteMember(String member, String group) throws Exception
    {
        // delete the member from the group
        GroupFinder.findByName(grouperSession, group, true).deleteMember(SubjectFinder.findByIdOrIdentifier(member, true));
    }
    
    @Override
    public List<SsoUser> getMembers(String groupFullPath)
    {
        List<SsoUser> retVal = new ArrayList<SsoUser>();
        Group group = GroupFinder.findByName(grouperSession, groupFullPath, true);
        for(Member member : group.getMembers())
        {
            retVal.add(new SsoUser(member.getSubject().getId(), member.getSubject().getName()));
        }
        return retVal;
    }
    
    public SsoUser getAttesterUsingAuditLog(String memberName, String groupName) throws Exception
    {
        Subject subj = SubjectFinder.findById(memberName, true);
        Member member = MemberFinder.findBySubject(grouperSession, subj, true);
        Group group = GroupFinder.findByName(grouperSession, groupName, true);
        
        List<AuditEntry> entries = (new UserAuditQuery()).addAuditTypeAction("membership", "addGroupMembership").addAuditTypeFieldValue("memberId", member.getUuid()).addAuditTypeFieldValue("groupId", group.getUuid()).execute();
        AuditEntry latest = null;
        for(AuditEntry entry : entries)
        {
            if(latest==null || entry.getCreatedOn().after(latest.getCreatedOn()))
            {
                latest = entry;
            }
        }
        if(latest!=null)
        {
            Member attester = MemberFinder.findByUuid(grouperSession, latest.getLoggedInMemberId(), true);
            return new SsoUser(attester.getSubject().getId(), attester.getSubject().getName());
        }
        return null;
    }
    
    public SsoUser getAttester(String memberName, String groupName)
    {
        Subject subj = SubjectFinder.findByIdOrIdentifier(memberName, true);
        Member member = MemberFinder.findBySubject(grouperSession,subj, false);
        Group group = GroupFinder.findByName(grouperSession, groupName, true);

        return getAttesterInternal(member, group);
    }

    private SsoUser getAttesterInternal(Member member, Group group)
    {
        Membership membership = group.getImmediateMembership(Group.getDefaultList(), member, false, false);
        if(membership==null) return null;
        Member attester = MemberFinder.findByUuid(grouperSession, membership.getCreatorUuid(), true);
        return new SsoUser(attester.getSubject().getId(), attester.getSubject().getName());
    }

/*   
    public String getAttesterUsingAttrib(String memberName, String groupName) throws Exception
    {
      Membership membership = MembershipFinder.findImmediateMembership(
          grouperSession, GroupFinder.findByName(grouperSession, group, true), 
          SubjectFinder.findByIdOrIdentifier(member, true), Group.getDefaultList(), true);

        List<String> attesters = membership.getAttributeValueDelegate().retrieveValuesString(SystemFolder + ":" + AttestationAttributeDefName);

        if (attesters.size() < 1)
            return null;
            //throw new Exception("Membership does not have an attester!");

        // the list should only contain one element
        return attesters.get(0);
    }

    private synchronized void setAttesterUsingAttrib(String member, String group) throws Exception
    {
      GrouperSession grouperSession2 = GrouperSession.internal_getRootSession();
      
        // get the membership
      Membership membership = MembershipFinder.findImmediateMembership(
          grouperSession2, GroupFinder.findByName(grouperSession, group, true), 
              SubjectFinder.findByIdOrIdentifier(member, true), Group.getDefaultList(), true);
  
        // record the attester on the membership
        membership.getAttributeValueDelegate().assignValue(SystemFolder + ":" + AttestationAttributeDefName, sessionOwner);
        List<String> attesters = membership.getAttributeValueDelegate().retrieveValuesString(SystemFolder + ":" + AttestationAttributeDefName);
        if (attesters.size() < 1)
          throw new Exception("failed to set attribute!");
    }
*/

    

    public Set<GrouperMembership> getMemberships(String memberName, String folder) throws Exception
    {
        Set<GrouperMembership> memberships = new HashSet<GrouperMembership>();

        // get user groups, searching from the specified folder
        Subject subj = SubjectFinder.findByIdOrIdentifier(memberName, true);
        Member member = MemberFinder.findBySubject(grouperSession,subj, false);
        Stem stem = folder != null ? StemFinder.findByName(grouperSession, folder, true) : null;
        Stem.Scope scope = folder != null ? Stem.Scope.SUB : null;
        Set<Group> groups = member.getGroups(Group.getDefaultList(), null, stem, scope, null, null);

        Iterator<Group> iterator = groups.iterator();
        while (iterator.hasNext())
        {
            Group group = iterator.next();
            memberships.add(new GrouperMembership(memberName, group.getName(), getAttesterInternal(member, group).getUsername(), getExpirationInternal(member, group)));
        }

        return memberships;
    }

    public Date getExpiration(String memberName, String groupName)
    {
        Subject subj = SubjectFinder.findByIdOrIdentifier(memberName, true);
        Member member = MemberFinder.findBySubject(grouperSession,subj, false);
        Group group = GroupFinder.findByName(grouperSession, groupName, true);
        
        return getExpirationInternal(member, group);
    }

    private Date getExpirationInternal(Member member, Group group)
    {
        Membership membership = group.getImmediateMembership(Group.getDefaultList(), member, false, false);
        if(membership==null) return null;
        return membership.getDisabledTime();
    }

    
    public void setExpiration(String memberName, String groupName, Date expiration)
    {
        Subject subj = SubjectFinder.findByIdOrIdentifier(memberName, true);
        Member member = MemberFinder.findBySubject(grouperSession,subj, false);
        Group group = GroupFinder.findByName(grouperSession, groupName, true);
        
        Membership membership = group.getImmediateMembership(Group.getDefaultList(), member, false, true);
        membership.setDisabledTime(expiration==null?null:new Timestamp(expiration.getTime()));
        membership.update();
    }

    public void close()
    {
        GrouperSession.stopQuietly(grouperSession);
        GrouperContext.deleteDefaultContext();
    }

    public SsoUser loadSsoUser(String subjectId)
    {
        Subject subj = SubjectFinder.findById(subjectId, false);
        
        if(subj==null) return null;
        if(!subj.getSourceId().equals("ccciLdap")) return null;
        
        return new SsoUser(subj.getId(), subj.getName());
    }

    @Override
    public GrouperMembership getMembership(String memberName, String groupName)
    {
        Subject subj = SubjectFinder.findByIdOrIdentifier(memberName, true);
        Member member = MemberFinder.findBySubject(grouperSession,subj, false);
        Group group = GroupFinder.findByName(grouperSession, groupName, true);
        Membership membership = group.getImmediateMembership(Group.getDefaultList(), member, false, false);
        if(membership==null) return null;
        return new GrouperMembership(memberName, group.getName(), getAttesterInternal(member, group).getUsername(), getExpirationInternal(member, group));
    }

    @Override
    public void loadChildGroupsAndFoldersRecursively(GrouperFolder folder)
    {
        List<GrouperGroup> groups = loadAllGroups(folder.getFullPath());
        List<GrouperFolder> folders = loadAllFolders(folder.getFullPath());
        folder.setChildGroups(groups);
        folder.setChildFolders(folders);
        for(GrouperFolder child : folders)
        {
            loadChildGroupsAndFoldersRecursively(child);
        }
    }
}
