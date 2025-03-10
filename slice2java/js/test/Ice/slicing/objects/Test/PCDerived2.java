// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package Test;

public class PCDerived2 extends PCDerived
{
    public PCDerived2()
    {
        super();
    }

    public PCDerived2(int pi, String ps, PBase pb, PBase[] pbs, int pcd2)
    {
        super(pi, ps, pb, pbs);
        this.pcd2 = pcd2;
    }

    public int pcd2;

    public PCDerived2 clone()
    {
        return (PCDerived2)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::PCDerived2";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -5160468845551496906L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeInt(pcd2);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        pcd2 = istr_.readInt();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
