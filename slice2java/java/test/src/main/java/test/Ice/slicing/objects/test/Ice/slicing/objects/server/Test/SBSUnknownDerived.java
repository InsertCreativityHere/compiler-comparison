// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'ServerPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package test.Ice.slicing.objects.server.Test;

public class SBSUnknownDerived extends SBase
{
    public SBSUnknownDerived()
    {
        super();
        this.sbsud = "";
    }

    public SBSUnknownDerived(String sb, String sbsud)
    {
        super(sb);
        this.sbsud = sbsud;
    }

    public String sbsud;

    public SBSUnknownDerived clone()
    {
        return (SBSUnknownDerived)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::SBSUnknownDerived";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 2504262638580999861L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeString(sbsud);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        sbsud = istr_.readString();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
