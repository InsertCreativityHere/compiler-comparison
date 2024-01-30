//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Internal.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceGrid;

/**
 * Information about an IceGrid node.
 **/
public class InternalNodeInfo extends com.zeroc.Ice.Value
{
    public InternalNodeInfo()
    {
        this.name = "";
        this.os = "";
        this.hostname = "";
        this.release = "";
        this.version = "";
        this.machine = "";
        this.dataDir = "";
    }

    public InternalNodeInfo(String name, String os, String hostname, String release, String version, String machine, int nProcessors, String dataDir)
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
     * The number of processor threads (e.g. 8 on system with 1 quad-core CPU, with 2 threads per core)
     **/
    public int nProcessors;

    /**
     * The path to the node data directory.
     **/
    public String dataDir;

    public InternalNodeInfo clone()
    {
        return (InternalNodeInfo)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceGrid::InternalNodeInfo";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -9086346535626674612L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(name);
        ostr_.writeString(os);
        ostr_.writeString(hostname);
        ostr_.writeString(release);
        ostr_.writeString(version);
        ostr_.writeString(machine);
        ostr_.writeInt(nProcessors);
        ostr_.writeString(dataDir);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        name = istr_.readString();
        os = istr_.readString();
        hostname = istr_.readString();
        release = istr_.readString();
        version = istr_.readString();
        machine = istr_.readString();
        nProcessors = istr_.readInt();
        dataDir = istr_.readString();
        istr_.endSlice();
    }
}
