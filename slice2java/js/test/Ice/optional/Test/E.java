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

public class E extends com.zeroc.Ice.Value
{
    public E()
    {
    }

    public E(A ae)
    {
        this.ae = ae;
    }

    public A ae;

    public E clone()
    {
        return (E)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::E";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 4399100014201460087L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeValue(ae);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> ae = v, A.class);
        istr_.endSlice();
    }
}
