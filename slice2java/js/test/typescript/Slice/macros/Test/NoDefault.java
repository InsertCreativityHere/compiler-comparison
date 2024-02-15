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

public class NoDefault extends com.zeroc.Ice.Value
{
    public NoDefault()
    {
        this.x = 10;
        this.y = 10;
    }

    public NoDefault(int x, int y)
    {
        this.x = x;
        this.y = y;
    }

    public int x;

    public int y;

    public NoDefault clone()
    {
        return (NoDefault)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::NoDefault";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -31439240163852001L;

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
