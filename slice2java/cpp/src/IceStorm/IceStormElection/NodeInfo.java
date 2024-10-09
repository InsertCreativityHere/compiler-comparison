//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Election.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceStormElection;

/**
 * All nodes in the replication group.
 **/
public class NodeInfo implements java.lang.Cloneable,
                                 java.io.Serializable
{
    /**
     * The identity of the node.
     **/
    public int id;

    /**
     * The node proxy.
     **/
    public NodePrx n;

    public NodeInfo()
    {
    }

    public NodeInfo(int id, NodePrx n)
    {
        this.id = id;
        this.n = n;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        NodeInfo r = null;
        if(rhs instanceof NodeInfo)
        {
            r = (NodeInfo)rhs;
        }

        if(r != null)
        {
            if(this.id != r.id)
            {
                return false;
            }
            if(this.n != r.n)
            {
                if(this.n == null || r.n == null || !this.n.equals(r.n))
                {
                    return false;
                }
            }

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::IceStormElection::NodeInfo");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, n);
        return h_;
    }

    public NodeInfo clone()
    {
        NodeInfo c = null;
        try
        {
            c = (NodeInfo)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeInt(this.id);
        ostr.writeProxy(this.n);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.id = istr.readInt();
        this.n = NodePrx.uncheckedCast(istr.readProxy());
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, NodeInfo v)
    {
        if(v == null)
        {
            _nullMarshalValue.ice_writeMembers(ostr);
        }
        else
        {
            v.ice_writeMembers(ostr);
        }
    }

    static public NodeInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        NodeInfo v = new NodeInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<NodeInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, NodeInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<NodeInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(NodeInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final NodeInfo _nullMarshalValue = new NodeInfo();

    /** @hidden */
    private static final long serialVersionUID = 5504044889423858789L;
}
