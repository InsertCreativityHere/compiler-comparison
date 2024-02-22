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

public class C extends com.zeroc.Ice.Value
{
    public C()
    {
    }

    public C(B theB, boolean preMarshalInvoked, boolean postUnmarshalInvoked)
    {
        this.theB = theB;
        this.preMarshalInvoked = preMarshalInvoked;
        this.postUnmarshalInvoked = postUnmarshalInvoked;
    }

    public B theB;

    public boolean preMarshalInvoked;

    public boolean postUnmarshalInvoked;

    public C clone()
    {
        return (C)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::C";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -5045730459051877820L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeValue(theB);
        ostr_.writeBool(preMarshalInvoked);
        ostr_.writeBool(postUnmarshalInvoked);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> theB = v, B.class);
        preMarshalInvoked = istr_.readBool();
        postUnmarshalInvoked = istr_.readBool();
        istr_.endSlice();
    }
}
