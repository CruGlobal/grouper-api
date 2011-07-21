package org.ccci.idm.grouper.demo2;

import org.ccci.idm.grouper.dao.GrouperDao;

import org.ccci.idm.grouper.dao.GrouperDaoImpl;

import org.ccci.idm.grouper.obj.GrouperGroup;

import org.junit.Assert;
import org.junit.Test;

public class AttestationTest
{
    public AttestationTest()
    {
        super();
    }
    
    @Test
    public void testAttestation() throws Exception
    {
        GrouperDao dao = new GrouperDaoImpl("nathan.kopp@ccci.org");
        
        GrouperGroup group = new GrouperGroup();
        group.setContainingFolderPath("ccci");
        group.setDisplayName("Demo");
        group.setId("demo");
        dao.addGroup(group, "nathan.kopp@ccci.org");
        
        dao.addMember("lee.braddock@ccci.org", "ccci:demo");
        
        try
        {
          String attestor = dao.getAttester("lee.braddock@ccci.org", "ccci:demo").getUsername();
          
          Assert.assertEquals("NATHAN.KOPP@CCCI.ORG",attestor);
        }
        finally
        {
            dao.deleteMember("lee.braddock@ccci.org", "ccci:demo");  
            dao.removeGroup("ccci:demo");
            
            dao.close();
        }
    }
}
