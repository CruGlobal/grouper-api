package org.ccci.idm.grouperrecon;

import java.util.ArrayList;
import java.util.List;

public class ExternalFolder extends ExternalNode
{
    private List<ExternalNode> children;

    public ExternalFolder(String name)
    {
        super(name);
    }
    public void addChild(ExternalNode group)
    {
        if(children==null) children = new ArrayList<ExternalNode>();
        children.add(group);
    }

    public List<ExternalNode> getChildren()
    {
        if(children==null) children = new ArrayList<ExternalNode>();
        return children;
    }

    boolean hasChildren()
    {
        return children!=null && children.size()>0;
    }

    public void setChildren(List<ExternalNode> children)
    {
        this.children = children;
    }


}
