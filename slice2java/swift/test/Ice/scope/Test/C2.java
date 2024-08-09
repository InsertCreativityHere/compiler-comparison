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

public class C2 extends com.zeroc.Ice.Value
{
    public C2()
    {
        this.E1 = E1.v1;
        this.S1 = new S1();
    }

    public C2(E1 E1, S1 S1, C1 C1, S1[] S1Seq, java.util.Map<java.lang.String, S1> S1Map)
    {
        this.E1 = E1;
        this.S1 = S1;
        this.C1 = C1;
        this.S1Seq = S1Seq;
        this.S1Map = S1Map;
    }

    public E1 E1;

    public S1 S1;

    public C1 C1;

    public S1[] S1Seq;

    public java.util.Map<java.lang.String, S1> S1Map;

    public C2 clone()
    {
        return (C2)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::C2";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 7540703236553779212L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        E1.ice_write(ostr_, E1);
        S1.ice_write(ostr_, S1);
        ostr_.writeValue(C1);
        S1SeqHelper.write(ostr_, S1Seq);
        S1MapHelper.write(ostr_, S1Map);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        E1 = E1.ice_read(istr_);
        S1 = S1.ice_read(istr_);
        istr_.readValue(v -> C1 = v, C1.class);
        S1Seq = S1SeqHelper.read(istr_);
        S1Map = S1MapHelper.read(istr_);
        istr_.endSlice();
    }
}
