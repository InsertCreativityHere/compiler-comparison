// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Descriptor.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.IceGrid;

/**
 * An IceBox server descriptor.
 **/
public class IceBoxDescriptor extends ServerDescriptor
{
    public IceBoxDescriptor()
    {
        super();
    }

    public IceBoxDescriptor(java.util.List<AdapterDescriptor> adapters, PropertySetDescriptor propertySet, String[] logs, String description, String id, String exe, String iceVersion, String pwd, java.util.List<java.lang.String> options, java.util.List<java.lang.String> envs, String activation, String activationTimeout, String deactivationTimeout, boolean applicationDistrib, DistributionDescriptor distrib, boolean allocatable, String user, java.util.List<ServiceInstanceDescriptor> services)
    {
        super(adapters, propertySet, logs, description, id, exe, iceVersion, pwd, options, envs, activation, activationTimeout, deactivationTimeout, applicationDistrib, distrib, allocatable, user);
        this.services = services;
    }

    /**
     * The service instances.
     **/
    public java.util.List<ServiceInstanceDescriptor> services;

    public IceBoxDescriptor clone()
    {
        return (IceBoxDescriptor)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceGrid::IceBoxDescriptor";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -5439022632411906075L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ServiceInstanceDescriptorSeqHelper.write(ostr_, services);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        services = ServiceInstanceDescriptorSeqHelper.read(istr_);
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
