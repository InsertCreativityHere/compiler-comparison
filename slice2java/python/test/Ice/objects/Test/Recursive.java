// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package Test;

public class Recursive extends com.zeroc.Ice.Value
{
    public Recursive()
    {
    }

    public Recursive(Recursive v)
    {
        this.v = v;
    }

    public Recursive v;

    public Recursive clone()
    {
        return (Recursive)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Recursive";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -1213438913446868246L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeValue(v);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> v = v, Recursive.class);
        istr_.endSlice();
    }
}
