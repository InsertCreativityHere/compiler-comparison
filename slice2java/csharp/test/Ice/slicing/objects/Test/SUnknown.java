//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServerPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class SUnknown extends com.zeroc.Ice.Value
{
    public SUnknown()
    {
        this.su = "";
    }

    public SUnknown(String su, SUnknown cycle)
    {
        this.su = su;
        this.cycle = cycle;
    }

    public String su;

    public SUnknown cycle;

    public SUnknown clone()
    {
        return (SUnknown)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::SUnknown";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -5190370419027258180L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(su);
        ostr_.writeValue(cycle);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        su = istr_.readString();
        istr_.readValue(v -> cycle = v, SUnknown.class);
        istr_.endSlice();
    }
}
