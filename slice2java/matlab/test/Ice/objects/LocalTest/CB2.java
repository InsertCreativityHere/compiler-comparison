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

public class CB2 extends com.zeroc.Ice.Value
{
    public CB2()
    {
    }

    public CB2(C1[] c1seq)
    {
        this.c1seq = c1seq;
    }

    public C1[] c1seq;

    public CB2 clone()
    {
        return (CB2)super.clone();
    }

    public static String ice_staticId()
    {
        return "::LocalTest::CB2";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 4040525911747864855L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        C1SeqHelper.write(ostr_, c1seq);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        c1seq = C1SeqHelper.read(istr_);
        istr_.endSlice();
    }
}
