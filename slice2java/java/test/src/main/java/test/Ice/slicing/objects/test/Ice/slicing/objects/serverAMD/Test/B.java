//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
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

public class B extends com.zeroc.Ice.Value
{
    public B()
    {
        this.sb = "";
    }

    public B(String sb, B pb)
    {
        this.sb = sb;
        this.pb = pb;
    }

    public String sb;

    public B pb;

    public B clone()
    {
        return (B)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::B";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -5619289308304436669L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(sb);
        ostr_.writeValue(pb);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        sb = istr_.readString();
        istr_.readValue(v -> pb = v, B.class);
        istr_.endSlice();
    }
}
