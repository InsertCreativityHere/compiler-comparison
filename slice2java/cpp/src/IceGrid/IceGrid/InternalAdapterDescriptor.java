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

public class InternalAdapterDescriptor extends com.zeroc.Ice.Value
{
    public InternalAdapterDescriptor()
    {
        this.id = "";
    }

    public InternalAdapterDescriptor(String id, boolean serverLifetime)
    {
        this.id = id;
        this.serverLifetime = serverLifetime;
    }

    /**
     * The identifier of the server.
     **/
    public String id;

    /**
     * Specifies if the lifetime of the adapter is the same as the server.
     **/
    public boolean serverLifetime;

    public InternalAdapterDescriptor clone()
    {
        return (InternalAdapterDescriptor)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceGrid::InternalAdapterDescriptor";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 800689137338590156L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(id);
        ostr_.writeBool(serverLifetime);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        id = istr_.readString();
        serverLifetime = istr_.readBool();
        istr_.endSlice();
    }
}
