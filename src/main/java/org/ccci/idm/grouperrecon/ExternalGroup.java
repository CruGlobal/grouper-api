package org.ccci.idm.grouperrecon;

import java.util.ArrayList;
import java.util.List;

public class ExternalGroup
{
    private String name;
    private List<ExternalGroup> children;

    public ExternalGroup(String name)
    {
        this.name = name;
    }
    
    public void addChild(ExternalGroup group)
    {
        if(children==null) children = new ArrayList<ExternalGroup>();
        children.add(group);
    }

    public List<ExternalGroup> getChildren()
    {
        if(children==null) children = new ArrayList<ExternalGroup>();
        return children;
    }

    boolean hasChildren()
    {
        return children!=null && children.size()>0;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public void setChildren(List<ExternalGroup> children)
    {
        this.children = children;
    }
    
}
