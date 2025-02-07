// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Internal.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

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
        this.iceSoVersion = "";
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
        this.iceSoVersion = "";
    }

    public InternalNodeInfo(String name, String os, String hostname, String release, String version, String machine, int nProcessors, String dataDir, String iceSoVersion)
    {
        this.name = name;
        this.os = os;
        this.hostname = hostname;
        this.release = release;
        this.version = version;
        this.machine = machine;
        this.nProcessors = nProcessors;
        this.dataDir = dataDir;
        setIceSoVersion(iceSoVersion);
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

    /**
     * The Ice SO version of this node, for example 38. It is typically used to load the same version of the IceStorm
     * service in IceBox.
     **/
    private String iceSoVersion;
    private boolean _iceSoVersion;

    /**
     * The Ice SO version of this node, for example 38. It is typically used to load the same version of the IceStorm
     * service in IceBox.
     **/
    public String getIceSoVersion()
    {
        if(!_iceSoVersion)
        {
            throw new java.util.NoSuchElementException("iceSoVersion is not set");
        }
        return iceSoVersion;
    }

    /**
     * The Ice SO version of this node, for example 38. It is typically used to load the same version of the IceStorm
     * service in IceBox.
     **/
    public void setIceSoVersion(String iceSoVersion)
    {
        _iceSoVersion = true;
        this.iceSoVersion = iceSoVersion;
    }

    /**
     * The Ice SO version of this node, for example 38. It is typically used to load the same version of the IceStorm
     * service in IceBox.
     **/
    public boolean hasIceSoVersion()
    {
        return _iceSoVersion;
    }

    /**
     * The Ice SO version of this node, for example 38. It is typically used to load the same version of the IceStorm
     * service in IceBox.
     **/
    public void clearIceSoVersion()
    {
        _iceSoVersion = false;
    }

    /**
     * The Ice SO version of this node, for example 38. It is typically used to load the same version of the IceStorm
     * service in IceBox.
     **/
    public void optionalIceSoVersion(java.util.Optional<java.lang.String> v)
    {
        if(v == null || !v.isPresent())
        {
            _iceSoVersion = false;
        }
        else
        {
            _iceSoVersion = true;
            iceSoVersion = v.get();
        }
    }

    /**
     * The Ice SO version of this node, for example 38. It is typically used to load the same version of the IceStorm
     * service in IceBox.
     **/
    public java.util.Optional<java.lang.String> optionalIceSoVersion()
    {
        if(_iceSoVersion)
        {
            return java.util.Optional.of(iceSoVersion);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

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
    private static final long serialVersionUID = -2437932417795345960L;

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
        if(_iceSoVersion)
        {
            ostr_.writeString(1, iceSoVersion);
        }
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
        if(_iceSoVersion = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.VSize))
        {
            iceSoVersion = istr_.readString();
        }
        istr_.endSlice();
    }
}
