//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `TypesServer.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.checksum.server.Test;

public class EmptyClass1 extends com.zeroc.Ice.Value
{
    public EmptyClass1 clone()
    {
        return (EmptyClass1)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::EmptyClass1";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -4081804335819054335L;

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
