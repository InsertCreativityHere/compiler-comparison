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

package Test.Inner;

public class A extends com.zeroc.Ice.Value
{
    public A()
    {
    }

    public A(Test.A theA)
    {
        this.theA = theA;
    }

    public Test.A theA;

    public A clone()
    {
        return (A)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Inner::A";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -1425258704563250735L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeValue(theA);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> theA = v, Test.A.class);
        istr_.endSlice();
    }
}
