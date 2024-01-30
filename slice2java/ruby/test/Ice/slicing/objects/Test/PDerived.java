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

public class PDerived extends Preserved
{
    public PDerived()
    {
        super();
    }

    public PDerived(int pi, String ps, PBase pb)
    {
        super(pi, ps);
        this.pb = pb;
    }

    public PBase pb;

    public PDerived clone()
    {
        return (PDerived)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::PDerived";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 643076092999279610L;

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
