package org.ccci.idm.grouper.obj;

import edu.internet2.middleware.grouper.Group;

public class GrouperGroup
{
    private String containingFolderPath;
    private String id;
    private String displayName;
    
    public GrouperGroup()
    {
        super();
    }

    public GrouperGroup(Group group)
    {
        containingFolderPath = group.getParentStemName();
        id = group.getExtension();
        displayName = group.getDisplayExtension();
    }

    public void setDisplayName(String descr)
    {
        this.displayName = descr;
    }

    public String getDisplayName()
    {
        return displayName;
    }

    public void setId(String id)
    {
        this.id = id;
    }

    public String getId()
    {
        return id;
    }

    public void setContainingFolderPath(String stemId)
    {
        this.containingFolderPath = stemId;
    }

    public String getContainingFolderPath()
    {
        return containingFolderPath;
    }
}
