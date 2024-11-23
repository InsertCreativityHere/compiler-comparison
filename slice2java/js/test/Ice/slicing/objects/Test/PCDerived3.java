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

public class PCDerived3 extends PCDerived2
{
    public PCDerived3()
    {
        super();
    }

    public PCDerived3(int pi, String ps, PBase pb, PBase[] pbs, int pcd2, com.zeroc.Ice.Value pcd3)
    {
        super(pi, ps, pb, pbs, pcd2);
        this.pcd3 = pcd3;
    }

    public com.zeroc.Ice.Value pcd3;

    public PCDerived3 clone()
    {
        return (PCDerived3)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::PCDerived3";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -4328899348098120859L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeValue(pcd3);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> pcd3 = v, com.zeroc.Ice.Value.class);
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
