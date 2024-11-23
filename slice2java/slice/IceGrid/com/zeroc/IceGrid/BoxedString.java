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
 * A "boxed" string.
 **/
public class BoxedString extends com.zeroc.Ice.Value
{
    public BoxedString()
    {
        this.value = "";
    }

    public BoxedString(String value)
    {
        this.value = value;
    }

    /**
     * The value of the boxed string.
     **/
    public String value;

    public BoxedString clone()
    {
        return (BoxedString)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceGrid::BoxedString";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -2108810133209453371L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(value);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        value = istr_.readString();
        istr_.endSlice();
    }
}
