//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Package.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.packagemd.modpkg.Test3;

public class C1 extends com.zeroc.Ice.Value
{
    public C1()
    {
    }

    public C1(int i)
    {
        this.i = i;
    }

    public int i;

    public C1 clone()
    {
        return (C1)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test3::C1";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 5832348734137584632L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(i);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        i = istr_.readInt();
        istr_.endSlice();
    }
}
