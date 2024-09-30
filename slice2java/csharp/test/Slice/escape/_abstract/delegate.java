//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package _abstract;

public class delegate extends com.zeroc.Ice.Value
{
    public delegate()
    {
    }

    public delegate(int _if, casePrx _else, int event)
    {
        this._if = _if;
        this._else = _else;
        this.event = event;
    }

    public int _if;

    public casePrx _else;

    public int event;

    public delegate clone()
    {
        return (delegate)super.clone();
    }

    public static String ice_staticId()
    {
        return "::abstract::delegate";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -1119942974593822205L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(_if);
        ostr_.writeProxy(_else);
        ostr_.writeInt(event);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        _if = istr_.readInt();
        _else = casePrx.uncheckedCast(istr_.readProxy());
        event = istr_.readInt();
        istr_.endSlice();
    }
}
