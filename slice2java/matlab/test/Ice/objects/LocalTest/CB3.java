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

public class CB3 extends com.zeroc.Ice.Value
{
    public CB3()
    {
    }

    public CB3(S1[] s1seq)
    {
        this.s1seq = s1seq;
    }

    public S1[] s1seq;

    public CB3 clone()
    {
        return (CB3)super.clone();
    }

    public static String ice_staticId()
    {
        return "::LocalTest::CB3";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 5383252497551628379L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        S1SeqHelper.write(ostr_, s1seq);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        s1seq = S1SeqHelper.read(istr_);
        istr_.endSlice();
    }
}
