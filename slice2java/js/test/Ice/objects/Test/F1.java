//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Forward.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class F1 extends com.zeroc.Ice.Value
{
    public F1()
    {
        this.name = "";
    }

    public F1(String name)
    {
        this.name = name;
    }

    public String name;

    public F1 clone()
    {
        return (F1)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::F1";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 6192380928994703015L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(name);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        name = istr_.readString();
        istr_.endSlice();
    }
}
