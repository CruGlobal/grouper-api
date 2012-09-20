package org.ccci.idm.grouper.obj;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.WordUtils;
import org.ccci.util.strings.Strings;

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

	public GrouperGroup(String containingFolderDisplayName, String displayName, String id, String containingFolderPath)
	{
		setContainingFolderDisplayName(containingFolderDisplayName);
		setDisplayName(displayName);
		setContainingFolderPath(containingFolderPath);
		setId(id);
	}

	public GrouperGroup(String groupName)
	{
		this(folderDisplayNameFromPath(groupName.substring(0, groupName.lastIndexOf(":"))), 
				groupName.substring(groupName.lastIndexOf(":") + 1), 
				groupName.substring(groupName.lastIndexOf(":") + 1),
				groupName.substring(0, groupName.lastIndexOf(":")));		
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
    
	private static String folderDisplayNameFromPath(String folderPath)
	{
		Map<String, String> pathToDisplayName = new HashMap<String, String>()
		{
			{
				put("ccci", "Campus Crusade");
				put("itroles", "IT Roles");
				put("uscore", "U.S. Core");
			}
		};

		String delimiter = ":";
		String[] tokens = folderPath.split(delimiter);
		if (tokens.length < 1)
			return folderPath;

		String folderDisplayName = "";
		for (String token : tokens)
		{
			if (!Strings.isEmpty(folderDisplayName))
				folderDisplayName += delimiter;

			folderDisplayName += pathToDisplayName.get(token) != null ? pathToDisplayName.get(token) : WordUtils.capitalize(token);
		}

		return folderDisplayName;
	}
}
