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

public class M extends com.zeroc.Ice.Value
{
    public M()
    {
    }

    public M(java.util.Map<StructKey, L> v)
    {
        this.v = v;
    }

    public java.util.Map<StructKey, L> v;

    public M clone()
    {
        return (M)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::M";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -8088101314200208123L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        LMapHelper.write(ostr_, v);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        v = LMapHelper.read(istr_);
        istr_.endSlice();
    }
}
