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
 * Information about an IceGrid registry replica.
 **/
public class InternalReplicaInfo extends com.zeroc.Ice.Value
{
    public InternalReplicaInfo()
    {
        this.name = "";
        this.hostname = "";
    }

    public InternalReplicaInfo(String name, String hostname)
    {
        this.name = name;
        this.hostname = hostname;
    }

    /**
     * The name of the registry.
     **/
    public String name;

    /**
     * The network name of the host running this registry (as defined in uname()).
     **/
    public String hostname;

    public InternalReplicaInfo clone()
    {
        return (InternalReplicaInfo)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceGrid::InternalReplicaInfo";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 517861047408245372L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(name);
        ostr_.writeString(hostname);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        name = istr_.readString();
        hostname = istr_.readString();
        istr_.endSlice();
    }
}
