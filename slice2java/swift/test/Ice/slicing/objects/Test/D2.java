//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServerPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class D2 extends B
{
    public D2()
    {
        super();
        this.sd2 = "";
    }

    public D2(String sb, B pb, String sd2, B pd2)
    {
        super(sb, pb);
        this.sd2 = sd2;
        this.pd2 = pd2;
    }

    public String sd2;

    public B pd2;

    public D2 clone()
    {
        return (D2)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::D2";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 9044504621248608838L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeString(sd2);
        ostr_.writeValue(pd2);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        sd2 = istr_.readString();
        istr_.readValue(v -> pd2 = v, B.class);
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
