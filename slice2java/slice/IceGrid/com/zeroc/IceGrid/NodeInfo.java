// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Admin.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.IceGrid;

/**
 * Information about an IceGrid node.
 **/
public class NodeInfo implements java.lang.Cloneable,
                                 java.io.Serializable
{
    /**
     * The name of the node.
     **/
    public String name;

    /**
     * The operating system name.
     **/
    public String os;

    /**
     * The network name of the host running this node (as defined in uname()).
     **/
    public String hostname;

    /**
     * The operation system release level (as defined in uname()).
     **/
    public String release;

    /**
     * The operation system version (as defined in uname()).
     **/
    public String version;

    /**
     * The machine hardware type (as defined in uname()).
     **/
    public String machine;

    /**
     * The number of processor threads on the node. For example, nProcessors is 8 on a computer with a single
     * quad-core processor and two HT threads per core.
     **/
    public int nProcessors;

    /**
     * The path to the node data directory.
     **/
    public String dataDir;

    public NodeInfo()
    {
        this.name = "";
        this.os = "";
        this.hostname = "";
        this.release = "";
        this.version = "";
        this.machine = "";
        this.dataDir = "";
    }

    public NodeInfo(String name, String os, String hostname, String release, String version, String machine, int nProcessors, String dataDir)
    {
        this.name = name;
        this.os = os;
        this.hostname = hostname;
        this.release = release;
        this.version = version;
        this.machine = machine;
        this.nProcessors = nProcessors;
        this.dataDir = dataDir;
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
            if(this.name != r.name)
            {
                if(this.name == null || r.name == null || !this.name.equals(r.name))
                {
                    return false;
                }
            }
            if(this.os != r.os)
            {
                if(this.os == null || r.os == null || !this.os.equals(r.os))
                {
                    return false;
                }
            }
            if(this.hostname != r.hostname)
            {
                if(this.hostname == null || r.hostname == null || !this.hostname.equals(r.hostname))
                {
                    return false;
                }
            }
            if(this.release != r.release)
            {
                if(this.release == null || r.release == null || !this.release.equals(r.release))
                {
                    return false;
                }
            }
            if(this.version != r.version)
            {
                if(this.version == null || r.version == null || !this.version.equals(r.version))
                {
                    return false;
                }
            }
            if(this.machine != r.machine)
            {
                if(this.machine == null || r.machine == null || !this.machine.equals(r.machine))
                {
                    return false;
                }
            }
            if(this.nProcessors != r.nProcessors)
            {
                return false;
            }
            if(this.dataDir != r.dataDir)
            {
                if(this.dataDir == null || r.dataDir == null || !this.dataDir.equals(r.dataDir))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::IceGrid::NodeInfo");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, name);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, os);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, hostname);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, release);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, version);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, machine);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, nProcessors);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, dataDir);
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
        ostr.writeString(this.name);
        ostr.writeString(this.os);
        ostr.writeString(this.hostname);
        ostr.writeString(this.release);
        ostr.writeString(this.version);
        ostr.writeString(this.machine);
        ostr.writeInt(this.nProcessors);
        ostr.writeString(this.dataDir);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.name = istr.readString();
        this.os = istr.readString();
        this.hostname = istr.readString();
        this.release = istr.readString();
        this.version = istr.readString();
        this.machine = istr.readString();
        this.nProcessors = istr.readInt();
        this.dataDir = istr.readString();
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
    private static final long serialVersionUID = -9210259541658731115L;
}
