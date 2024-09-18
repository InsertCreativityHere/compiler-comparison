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

public class D extends com.zeroc.Ice.Value
{
    public D()
    {
    }

    public D(A theA, B theB, C theC, boolean preMarshalInvoked, boolean postUnmarshalInvoked)
    {
        this.theA = theA;
        this.theB = theB;
        this.theC = theC;
        this.preMarshalInvoked = preMarshalInvoked;
        this.postUnmarshalInvoked = postUnmarshalInvoked;
    }

    public A theA;

    public B theB;

    public C theC;

    public boolean preMarshalInvoked;

    public boolean postUnmarshalInvoked;

    public D clone()
    {
        return (D)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::D";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 4995165970116304945L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeValue(theA);
        ostr_.writeValue(theB);
        ostr_.writeValue(theC);
        ostr_.writeBool(preMarshalInvoked);
        ostr_.writeBool(postUnmarshalInvoked);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> theA = v, A.class);
        istr_.readValue(v -> theB = v, B.class);
        istr_.readValue(v -> theC = v, C.class);
        preMarshalInvoked = istr_.readBool();
        postUnmarshalInvoked = istr_.readBool();
        istr_.endSlice();
    }
}
