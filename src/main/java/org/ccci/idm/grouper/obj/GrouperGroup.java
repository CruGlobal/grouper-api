package org.ccci.idm.grouper.obj;

import edu.internet2.middleware.grouper.Group;
import edu.internet2.middleware.grouper.Stem;

public class GrouperGroup
{
    private String containingFolderPath;
    private String containingFolderDisplayName;
    private String id;
    private String displayName;
    
    public GrouperGroup()
    {
        super();
    }

    public GrouperGroup(Group group)
    {
        id = group.getExtension();
        displayName = group.getDisplayExtension();
        
        Stem parentStem = group.getParentStem();
        containingFolderPath = parentStem.getName();
        containingFolderDisplayName = parentStem.getDisplayName();
    }

    public String getFullPath()
    {
        return getContainingFolderPath()+":"+getId();
    }

    public String getFullDisplayName()
    {
        return getContainingFolderDisplayName()+":"+getDisplayName();
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

    public String getContainingFolderDisplayName()
    {
        return containingFolderDisplayName;
    }

    public void setContainingFolderDisplayName(String containingFolderDescr)
    {
        this.containingFolderDisplayName = containingFolderDescr;
    }
}
