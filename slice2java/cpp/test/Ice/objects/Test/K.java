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

public class K extends com.zeroc.Ice.Value
{
    public K()
    {
    }

    public K(com.zeroc.Ice.Value value)
    {
        this.value = value;
    }

    public com.zeroc.Ice.Value value;

    public K clone()
    {
        return (K)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::K";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 4645159705496925479L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeValue(value);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> value = v, com.zeroc.Ice.Value.class);
        istr_.endSlice();
    }
}
