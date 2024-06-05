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

public class B1 extends com.zeroc.Ice.Value
{
    public B1()
    {
    }

    public B1(A1 a1, A1 a2)
    {
        this.a1 = a1;
        this.a2 = a2;
    }

    public A1 a1;

    public A1 a2;

    public B1 clone()
    {
        return (B1)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::B1";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -641758099213206012L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeValue(a1);
        ostr_.writeValue(a2);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> a1 = v, A1.class);
        istr_.readValue(v -> a2 = v, A1.class);
        istr_.endSlice();
    }
}
