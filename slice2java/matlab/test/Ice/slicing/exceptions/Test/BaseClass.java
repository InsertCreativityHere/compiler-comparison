//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ClientPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class BaseClass extends com.zeroc.Ice.Value
{
    public BaseClass()
    {
        this.bc = "";
    }

    public BaseClass(String bc)
    {
        this.bc = bc;
    }

    public String bc;

    public BaseClass clone()
    {
        return (BaseClass)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::BaseClass";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -8435640743344710926L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(bc);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        bc = istr_.readString();
        istr_.endSlice();
    }
}
