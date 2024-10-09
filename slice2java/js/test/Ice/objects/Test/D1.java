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

public class D1 extends B1
{
    public D1()
    {
        super();
    }

    public D1(A1 a1, A1 a2, A1 a3, A1 a4)
    {
        super(a1, a2);
        this.a3 = a3;
        this.a4 = a4;
    }

    public A1 a3;

    public A1 a4;

    public D1 clone()
    {
        return (D1)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::D1";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 5113034853261232963L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeValue(a3);
        ostr_.writeValue(a4);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> a3 = v, A1.class);
        istr_.readValue(v -> a4 = v, A1.class);
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
