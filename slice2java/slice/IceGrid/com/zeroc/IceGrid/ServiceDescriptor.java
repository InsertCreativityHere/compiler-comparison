//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Descriptor.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceGrid;

/**
 * An IceBox service descriptor.
 **/
public class ServiceDescriptor extends CommunicatorDescriptor
{
    public ServiceDescriptor()
    {
        super();
        this.name = "";
        this.entry = "";
    }

    public ServiceDescriptor(java.util.List<AdapterDescriptor> adapters, PropertySetDescriptor propertySet, java.util.List<DbEnvDescriptor> dbEnvs, String[] logs, String description, String name, String entry)
    {
        super(adapters, propertySet, dbEnvs, logs, description);
        this.name = name;
        this.entry = entry;
    }

    /**
     * The service name.
     **/
    public String name;

    /**
     * The entry point of the IceBox service.
     **/
    public String entry;

    public ServiceDescriptor clone()
    {
        return (ServiceDescriptor)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceGrid::ServiceDescriptor";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -2944051958701550358L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeString(name);
        ostr_.writeString(entry);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        name = istr_.readString();
        entry = istr_.readString();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
