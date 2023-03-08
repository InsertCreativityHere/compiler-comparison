//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ClientPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.slicing.objects.client.Test;

public class D3 extends B
{
    public D3()
    {
        super();
        this.sd3 = "";
    }

    public D3(String sb, B pb, String sd3, B pd3)
    {
        super(sb, pb);
        this.sd3 = sd3;
        this.pd3 = pd3;
    }

    public String sd3;

    public B pd3;

    public D3 clone()
    {
        return (D3)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::D3";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 2979924891770959047L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeString(sd3);
        ostr_.writeValue(pd3);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        sd3 = istr_.readString();
        istr_.readValue(v -> pd3 = v, B.class);
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
