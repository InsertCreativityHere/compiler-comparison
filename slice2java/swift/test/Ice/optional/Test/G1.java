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

public class G1 extends com.zeroc.Ice.Value
{
    public G1()
    {
        this.a = "";
    }

    public G1(String a)
    {
        this.a = a;
    }

    public String a;

    public G1 clone()
    {
        return (G1)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::G1";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -356166127389988091L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(a);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        a = istr_.readString();
        istr_.endSlice();
    }
}
