//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Types.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.checksum.Test;

public class SimpleClass1 extends com.zeroc.Ice.Value
{
    public SimpleClass1()
    {
        this.str = "";
    }

    public SimpleClass1(String str, float f)
    {
        this.str = str;
        this.f = f;
    }

    public String str;

    public float f;

    public SimpleClass1 clone()
    {
        return (SimpleClass1)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::SimpleClass1";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -9216565256790539995L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(str);
        ostr_.writeFloat(f);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        str = istr_.readString();
        f = istr_.readFloat();
        istr_.endSlice();
    }
}
