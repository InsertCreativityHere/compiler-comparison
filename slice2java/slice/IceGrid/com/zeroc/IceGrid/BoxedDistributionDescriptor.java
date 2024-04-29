//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
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
 * A "boxed" distribution descriptor.
 **/
public class BoxedDistributionDescriptor extends com.zeroc.Ice.Value
{
    public BoxedDistributionDescriptor()
    {
        this.value = new DistributionDescriptor();
    }

    public BoxedDistributionDescriptor(DistributionDescriptor value)
    {
        this.value = value;
    }

    /**
     * The value of the boxed distribution descriptor.
     **/
    public DistributionDescriptor value;

    public BoxedDistributionDescriptor clone()
    {
        return (BoxedDistributionDescriptor)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceGrid::BoxedDistributionDescriptor";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -1971528380299525738L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        DistributionDescriptor.ice_write(ostr_, value);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        value = DistributionDescriptor.ice_read(istr_);
        istr_.endSlice();
    }
}
