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

public class PBase extends com.zeroc.Ice.Value
{
    public PBase()
    {
    }

    public PBase(int pi)
    {
        this.pi = pi;
    }

    public int pi;

    public PBase clone()
    {
        return (PBase)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::PBase";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 481717040496531503L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(pi);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        pi = istr_.readInt();
        istr_.endSlice();
    }
}
