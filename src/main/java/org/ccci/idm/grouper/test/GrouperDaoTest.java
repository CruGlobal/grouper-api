package org.ccci.idm.grouper.test;

import java.util.Date;

import org.ccci.idm.grouper.dao.GrouperDao;
import org.ccci.idm.grouper.dao.GrouperDaoImpl;
import org.ccci.idm.obj.SsoUser;
import org.junit.Assert;
import org.junit.Test;

public class GrouperDaoTest
{
    public GrouperDaoTest()
    {
    }

    //@Test
    public void testGetAttester() throws Exception
    {
        String requester = "nathan.kopp@ccci.org";
        String member = "lee.braddock@ccci.org";
        String group = "sys:test";

        GrouperDao grouperDao = null;

        try
        {
            grouperDao = new GrouperDaoImpl(requester);
            // ensure the user does not exist in the group
            try
            {
                grouperDao.deleteMember(member, group);
            }
            catch (Exception e)
            {
            }

            grouperDao.addMember(member, group);

            SsoUser attester = grouperDao.getAttester(member, group);
            
            Assert.assertNotNull(attester);

            Assert.assertEquals(requester, attester.getUsername().toLowerCase());
        }
        finally
        {
            if (grouperDao != null)
                grouperDao.close();
        }
    }
    
    @Test
    public void testGetSetExpiration() throws Exception
    {
        String requester = "nathan.kopp@ccci.org";
        String member = "lee.braddock@ccci.org";
        String group = "sys:test";

        GrouperDao grouperDao = null;

        try
        {
            grouperDao = new GrouperDaoImpl(requester);
            // ensure the user does not exist in the group
            try
            {
                grouperDao.deleteMember(member, group);
            }
            catch (Exception e)
            {
            }
            
            Date now = new Date();
            now.setTime(now.getTime()+3*24*60*60*1000);

            grouperDao.addMember(member, group);

            Date expiration = grouperDao.getExpiration(member, group);
            Assert.assertNull(expiration);

            grouperDao.setExpiration(member, group,now);
            expiration = grouperDao.getExpiration(member, group);
            Assert.assertNotNull(expiration);
            
            grouperDao.setExpiration(member, group,null);
            expiration = grouperDao.getExpiration(member, group);
            Assert.assertNull(expiration);
            
        }
        finally
        {
            if (grouperDao != null)
                grouperDao.close();
        }
    }
}
