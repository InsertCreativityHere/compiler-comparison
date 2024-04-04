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

public class F extends com.zeroc.Ice.Value
{
    public F()
    {
    }

    public F(E e1, E e2)
    {
        this.e1 = e1;
        this.e2 = e2;
    }

    protected E e1;

    public E e2;

    public F clone()
    {
        return (F)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::F";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 4937382879513786961L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeValue(e1);
        ostr_.writeValue(e2);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> e1 = v, E.class);
        istr_.readValue(v -> e2 = v, E.class);
        istr_.endSlice();
    }
}
