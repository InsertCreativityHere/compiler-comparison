//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
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
 * A communicator descriptor.
 **/
public class CommunicatorDescriptor extends com.zeroc.Ice.Value
{
    public CommunicatorDescriptor()
    {
        this.propertySet = new PropertySetDescriptor();
        this.description = "";
    }

    public CommunicatorDescriptor(java.util.List<AdapterDescriptor> adapters, PropertySetDescriptor propertySet, String[] logs, String description)
    {
        this.adapters = adapters;
        this.propertySet = propertySet;
        this.logs = logs;
        this.description = description;
    }

    /**
     * The object adapters.
     **/
    public java.util.List<AdapterDescriptor> adapters;

    /**
     * The property set.
     **/
    public PropertySetDescriptor propertySet;

    /**
     * The path of each log file.
     **/
    public String[] logs;

    /**
     * A description of this descriptor.
     **/
    public String description;

    public CommunicatorDescriptor clone()
    {
        return (CommunicatorDescriptor)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceGrid::CommunicatorDescriptor";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -6290521901616781484L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        AdapterDescriptorSeqHelper.write(ostr_, adapters);
        PropertySetDescriptor.ice_write(ostr_, propertySet);
        ostr_.writeStringSeq(logs);
        ostr_.writeString(description);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        adapters = AdapterDescriptorSeqHelper.read(istr_);
        propertySet = PropertySetDescriptor.ice_read(istr_);
        logs = istr_.readStringSeq();
        description = istr_.readString();
        istr_.endSlice();
    }
}
