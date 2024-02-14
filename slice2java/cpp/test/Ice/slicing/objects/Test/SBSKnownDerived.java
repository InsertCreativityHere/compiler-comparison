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

public class SBSKnownDerived extends SBase
{
    public SBSKnownDerived()
    {
        super();
        this.sbskd = "";
    }

    public SBSKnownDerived(String sb, String sbskd)
    {
        super(sb);
        this.sbskd = sbskd;
    }

    public String sbskd;

    public SBSKnownDerived clone()
    {
        return (SBSKnownDerived)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::SBSKnownDerived";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 8804373127007622115L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeString(sbskd);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        sbskd = istr_.readString();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
