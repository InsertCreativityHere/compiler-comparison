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

package Test.MF;

public class A extends com.zeroc.Ice.Value
{
    public A()
    {
    }

    public A(int aA)
    {
        this.aA = aA;
    }

    public int aA;

    public A clone()
    {
        return (A)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::MF::A";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 6566349954412721987L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(aA);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        aA = istr_.readInt();
        istr_.endSlice();
    }
}
