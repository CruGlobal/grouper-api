package org.ccci.idm.grouper.test;

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

    @Test
    public void getAttester() throws Exception
    {
        String requester = "lee.braddock@ccci.org";
        String member = "nathan.kopp@ccci.org";
        String group = "ccci:employees";

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

            Assert.assertEquals(member, attester.getUsername().toLowerCase());
        }
        finally
        {
            if (grouperDao != null)
                grouperDao.close();
        }
    }
}
