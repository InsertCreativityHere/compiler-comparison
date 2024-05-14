//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServerPrivateAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.slicing.objects.serverAMD.Test;

public class PSUnknown2 extends Preserved
{
    public PSUnknown2()
    {
        super();
    }

    public PSUnknown2(int pi, String ps, PBase pb)
    {
        super(pi, ps);
        this.pb = pb;
    }

    public PBase pb;

    public PSUnknown2 clone()
    {
        return (PSUnknown2)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::PSUnknown2";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -8813714459459790745L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
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
