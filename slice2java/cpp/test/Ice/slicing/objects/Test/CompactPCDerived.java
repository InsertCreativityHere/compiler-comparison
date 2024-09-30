//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
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

public class CompactPCDerived extends CompactPDerived
{
    public CompactPCDerived()
    {
        super();
    }

    public CompactPCDerived(int pi, String ps, PBase pb, PBase[] pbs)
    {
        super(pi, ps, pb);
        this.pbs = pbs;
    }

    public PBase[] pbs;

    public CompactPCDerived clone()
    {
        return (CompactPCDerived)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::CompactPCDerived";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -6397006067428244588L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), 57, false);
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
