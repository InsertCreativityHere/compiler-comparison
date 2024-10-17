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

package test.Slice.macros.Test;

public class Default extends com.zeroc.Ice.Value
{
    public Default()
    {
        this.x = 10;
        this.y = 10;
    }

    public Default(int x, int y)
    {
        this.x = x;
        this.y = y;
    }

    public int x;

    public int y;

    public Default clone()
    {
        return (Default)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Default";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -11098011781525890L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(x);
        ostr_.writeInt(y);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        x = istr_.readInt();
        y = istr_.readInt();
        istr_.endSlice();
    }
}
