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

public class G2 extends com.zeroc.Ice.Value
{
    public G2()
    {
    }

    public G2(long a)
    {
        this.a = a;
    }

    public long a;

    public G2 clone()
    {
        return (G2)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::G2";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 44041451077548913L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeLong(a);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        a = istr_.readLong();
        istr_.endSlice();
    }
}
