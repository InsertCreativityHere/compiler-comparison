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

public class COneMember extends com.zeroc.Ice.Value
{
    public COneMember()
    {
    }

    public COneMember(Empty e)
    {
        this.e = e;
    }

    public Empty e;

    public COneMember clone()
    {
        return (COneMember)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::COneMember";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 3050979367310982951L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeValue(e);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> e = v, Empty.class);
        istr_.endSlice();
    }
}
