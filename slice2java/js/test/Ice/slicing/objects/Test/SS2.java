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

public class SS2 extends com.zeroc.Ice.Value
{
    public SS2()
    {
    }

    public SS2(B[] s)
    {
        this.s = s;
    }

    public B[] s;

    public SS2 clone()
    {
        return (SS2)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::SS2";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 7620286024998902378L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        BSeqHelper.write(ostr_, s);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        s = BSeqHelper.read(istr_);
        istr_.endSlice();
    }
}
