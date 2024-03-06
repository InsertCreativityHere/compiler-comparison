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

public class CTwoMembers extends com.zeroc.Ice.Value
{
    public CTwoMembers()
    {
    }

    public CTwoMembers(Empty e1, Empty e2)
    {
        this.e1 = e1;
        this.e2 = e2;
    }

    public Empty e1;

    public Empty e2;

    public CTwoMembers clone()
    {
        return (CTwoMembers)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::CTwoMembers";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 884157500761885787L;

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
        istr_.readValue(v -> e1 = v, Empty.class);
        istr_.readValue(v -> e2 = v, Empty.class);
        istr_.endSlice();
    }
}
