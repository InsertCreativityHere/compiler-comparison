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

public class B extends A
{
    public B()
    {
        super();
    }

    public B(B theB, C theC, boolean preMarshalInvoked, boolean postUnmarshalInvoked, A theA)
    {
        super(theB, theC, preMarshalInvoked, postUnmarshalInvoked);
        this.theA = theA;
    }

    public A theA;

    public B clone()
    {
        return (B)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::B";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -8890919058240389740L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeValue(theA);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> theA = v, A.class);
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
