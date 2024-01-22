//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `ClientPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class PCDerived extends PDerived
{
    public PCDerived()
    {
        super();
    }

    public PCDerived(int pi, String ps, PBase pb, PBase[] pbs)
    {
        super(pi, ps, pb);
        this.pbs = pbs;
    }

    public PBase[] pbs;

    public PCDerived clone()
    {
        return (PCDerived)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::PCDerived";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -4426885100788453053L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        PBaseSeqHelper.write(ostr_, pbs);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        pbs = PBaseSeqHelper.read(istr_);
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
