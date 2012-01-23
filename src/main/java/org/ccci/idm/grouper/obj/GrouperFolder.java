package org.ccci.idm.grouper.obj;

import java.util.List;

import edu.internet2.middleware.grouper.Stem;

public class GrouperFolder
{
    private String containingFolderPath;
    private String id;
    private String displayName;
    private String containingFolderDisplayName;
    
    private List<GrouperFolder> childFolders;
    private List<GrouperGroup> childGroups;
    
    public GrouperFolder()
    {
        super();
    }
    
    public GrouperFolder(String groupPrefix)
    {
        if(groupPrefix.contains(":"))
        {
            containingFolderPath = groupPrefix.substring(0,groupPrefix.lastIndexOf(':'));
            id = groupPrefix.substring(groupPrefix.lastIndexOf(':')+1,groupPrefix.length());
        }
        else
        {
            containingFolderPath = "";
            id = groupPrefix;
        }
        displayName = id;
    }

    public GrouperFolder(Stem stem)
    {
        id = stem.getExtension();
        displayName = stem.getDisplayExtension();
        
        
        if(stem.isRootStem())
        {
            containingFolderDisplayName = "";
        }
        else
        {
            Stem parentStem = stem.getParentStem();
            containingFolderDisplayName = parentStem.getDisplayName();
        }
    }

    public String getFullDisplayName()
    {
        return getContainingFolderDisplayName()+":"+getDisplayName();
    }

    public String getFullPath()
    {
        return getContainingFolderPath()+":"+getId();
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

    public List<GrouperFolder> getChildFolders()
    {
        return childFolders;
    }

    public void setChildFolders(List<GrouperFolder> childFolders)
    {
        this.childFolders = childFolders;
    }

    public List<GrouperGroup> getChildGroups()
    {
        return childGroups;
    }

    public void setChildGroups(List<GrouperGroup> childGroups)
    {
        this.childGroups = childGroups;
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
