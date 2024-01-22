//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `ServerPrivateAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.slicing.objects.serverAMD.Test;

public class SBase extends com.zeroc.Ice.Value
{
    public SBase()
    {
        this.sb = "";
    }

    public SBase(String sb)
    {
        this.sb = sb;
    }

    public String sb;

    public SBase clone()
    {
        return (SBase)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::SBase";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -5353754572539410658L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(sb);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        sb = istr_.readString();
        istr_.endSlice();
    }
}
