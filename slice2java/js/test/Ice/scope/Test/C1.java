//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class C1 extends com.zeroc.Ice.Value
{
    public C1()
    {
        this.s = "";
    }

    public C1(String s)
    {
        this.s = s;
    }

    public String s;

    public C1 clone()
    {
        return (C1)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::C1";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 8893234915916296496L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(s);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        s = istr_.readString();
        istr_.endSlice();
    }
}
