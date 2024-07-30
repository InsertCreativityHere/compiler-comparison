//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Admin.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceGrid;

/**
 * Dynamic information about the state of a node.
 **/
public class NodeDynamicInfo implements java.lang.Cloneable,
                                        java.io.Serializable
{
    /**
     * Some static information about the node.
     **/
    public NodeInfo info;

    /**
     * The dynamic information of the servers deployed on this node.
     **/
    public java.util.List<ServerDynamicInfo> servers;

    /**
     * The dynamic information of the adapters deployed on this node.
     **/
    public java.util.List<AdapterDynamicInfo> adapters;

    public NodeDynamicInfo()
    {
        this.info = new NodeInfo();
    }

    public NodeDynamicInfo(NodeInfo info, java.util.List<ServerDynamicInfo> servers, java.util.List<AdapterDynamicInfo> adapters)
    {
        this.info = info;
        this.servers = servers;
        this.adapters = adapters;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        NodeDynamicInfo r = null;
        if(rhs instanceof NodeDynamicInfo)
        {
            r = (NodeDynamicInfo)rhs;
        }

        if(r != null)
        {
            if(this.info != r.info)
            {
                if(this.info == null || r.info == null || !this.info.equals(r.info))
                {
                    return false;
                }
            }
            if(this.servers != r.servers)
            {
                if(this.servers == null || r.servers == null || !this.servers.equals(r.servers))
                {
                    return false;
                }
            }
            if(this.adapters != r.adapters)
            {
                if(this.adapters == null || r.adapters == null || !this.adapters.equals(r.adapters))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceGrid::NodeDynamicInfo");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, info);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, servers);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, adapters);
        return h_;
    }

    public NodeDynamicInfo clone()
    {
        NodeDynamicInfo c = null;
        try
        {
            c = (NodeDynamicInfo)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        NodeInfo.ice_write(ostr, this.info);
        ServerDynamicInfoSeqHelper.write(ostr, this.servers);
        AdapterDynamicInfoSeqHelper.write(ostr, this.adapters);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.info = NodeInfo.ice_read(istr);
        this.servers = ServerDynamicInfoSeqHelper.read(istr);
        this.adapters = AdapterDynamicInfoSeqHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, NodeDynamicInfo v)
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

    static public NodeDynamicInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        NodeDynamicInfo v = new NodeDynamicInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<NodeDynamicInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, NodeDynamicInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<NodeDynamicInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(NodeDynamicInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final NodeDynamicInfo _nullMarshalValue = new NodeDynamicInfo();

    /** @hidden */
    private static final long serialVersionUID = 3723071994685654228L;
}
