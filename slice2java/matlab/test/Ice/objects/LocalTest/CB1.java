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

public class CB1 extends com.zeroc.Ice.Value
{
    public CB1()
    {
        this.s1 = new S1();
    }

    public CB1(S1 s1)
    {
        this.s1 = s1;
    }

    public S1 s1;

    public CB1 clone()
    {
        return (CB1)super.clone();
    }

    public static String ice_staticId()
    {
        return "::LocalTest::CB1";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 8898655857814980717L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        S1.ice_write(ostr_, s1);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        s1 = S1.ice_read(istr_);
        istr_.endSlice();
    }
}
