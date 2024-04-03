//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `LocalTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package LocalTest;

public class CB8 extends com.zeroc.Ice.Value
{
    public CB8()
    {
        this.s1 = new S1();
    }

    public CB8(S1 s1, C1[] c1seq, java.util.Map<java.lang.Integer, S1> s1dict)
    {
        this.s1 = s1;
        this.c1seq = c1seq;
        this.s1dict = s1dict;
    }

    public S1 s1;

    public C1[] c1seq;

    public java.util.Map<java.lang.Integer, S1> s1dict;

    public CB8 clone()
    {
        return (CB8)super.clone();
    }

    public static String ice_staticId()
    {
        return "::LocalTest::CB8";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -3384749769655874166L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        S1.ice_write(ostr_, s1);
        C1SeqHelper.write(ostr_, c1seq);
        S1DictHelper.write(ostr_, s1dict);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        s1 = S1.ice_read(istr_);
        c1seq = C1SeqHelper.read(istr_);
        s1dict = S1DictHelper.read(istr_);
        istr_.endSlice();
    }
}
