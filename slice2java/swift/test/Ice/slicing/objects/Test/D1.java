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

public class D1 extends B
{
    public D1()
    {
        super();
        this.sd1 = "";
    }

    public D1(String sb, B pb, String sd1, B pd1)
    {
        super(sb, pb);
        this.sd1 = sd1;
        this.pd1 = pd1;
    }

    public String sd1;

    public B pd1;

    public D1 clone()
    {
        return (D1)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::D1";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -4968075449440249867L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeString(sd1);
        ostr_.writeValue(pd1);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        sd1 = istr_.readString();
        istr_.readValue(v -> pd1 = v, B.class);
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
