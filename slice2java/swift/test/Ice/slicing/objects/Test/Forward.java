// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package Test;

public class Forward extends com.zeroc.Ice.Value
{
    public Forward()
    {
    }

    public Forward(Hidden h)
    {
        this.h = h;
    }

    public Hidden h;

    public Forward clone()
    {
        return (Forward)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Forward";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -3804376327419785307L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeValue(h);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> h = v, Hidden.class);
        istr_.endSlice();
    }
}
