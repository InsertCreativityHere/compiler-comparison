//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ObjectsTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class Compact extends com.zeroc.Ice.Value
{
    public Compact clone()
    {
        return (Compact)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Compact";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -3161237248285000852L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), 1, true);
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
