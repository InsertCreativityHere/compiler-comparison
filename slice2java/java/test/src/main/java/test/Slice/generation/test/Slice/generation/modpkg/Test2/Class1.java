// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'File1.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package test.Slice.generation.modpkg.Test2;

public class Class1 extends com.zeroc.Ice.Value
{
    public Class1 clone()
    {
        return (Class1)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test2::Class1";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -6376717777360967265L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.endSlice();
    }
}
