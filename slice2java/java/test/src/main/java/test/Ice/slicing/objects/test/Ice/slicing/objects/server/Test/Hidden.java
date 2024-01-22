//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServerPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.slicing.objects.server.Test;

public class Hidden extends com.zeroc.Ice.Value
{
    public Hidden()
    {
    }

    public Hidden(Forward f)
    {
        this.f = f;
    }

    public Forward f;

    public Hidden clone()
    {
        return (Hidden)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Hidden";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -2271128137346587530L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeValue(f);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> f = v, Forward.class);
        istr_.endSlice();
    }
}
