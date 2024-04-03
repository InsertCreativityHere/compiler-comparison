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

public class CompactPDerived extends Preserved
{
    public CompactPDerived()
    {
        super();
    }

    public CompactPDerived(int pi, String ps, PBase pb)
    {
        super(pi, ps);
        this.pb = pb;
    }

    public PBase pb;

    public CompactPDerived clone()
    {
        return (CompactPDerived)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::CompactPDerived";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -9066889323752578494L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), 56, false);
        ostr_.writeValue(pb);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> pb = v, PBase.class);
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
