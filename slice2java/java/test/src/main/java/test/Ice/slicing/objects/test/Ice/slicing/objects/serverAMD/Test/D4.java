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

public class D4 extends B
{
    public D4()
    {
        super();
    }

    public D4(String sb, B pb, B p1, B p2)
    {
        super(sb, pb);
        this.p1 = p1;
        this.p2 = p2;
    }

    public B p1;

    public B p2;

    public D4 clone()
    {
        return (D4)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::D4";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -2123449646692409741L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeValue(p1);
        ostr_.writeValue(p2);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> p1 = v, B.class);
        istr_.readValue(v -> p2 = v, B.class);
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
