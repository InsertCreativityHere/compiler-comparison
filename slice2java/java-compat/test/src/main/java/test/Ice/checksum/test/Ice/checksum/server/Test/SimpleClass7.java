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

public class SimpleClass7 extends com.zeroc.Ice.Value
{
    public SimpleClass7()
    {
        this.str = "";
    }

    public SimpleClass7(String str, double f)
    {
        this.str = str;
        this.f = f;
    }

    public String str;

    public double f;

    public SimpleClass7 clone()
    {
        return (SimpleClass7)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::SimpleClass7";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 5971500326171522211L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(str);
        ostr_.writeDouble(f);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        str = istr_.readString();
        f = istr_.readDouble();
        istr_.endSlice();
    }
}
