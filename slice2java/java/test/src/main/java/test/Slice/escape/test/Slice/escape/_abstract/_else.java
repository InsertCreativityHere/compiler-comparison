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

package test.Slice.escape._abstract;

public class _else extends com.zeroc.Ice.Value
{
    public _else()
    {
    }

    public _else(int _if, defaultPrx _equals, int _final)
    {
        this._if = _if;
        this._equals = _equals;
        this._final = _final;
    }

    public int _if;

    public defaultPrx _equals;

    public int _final;

    public _else clone()
    {
        return (_else)super.clone();
    }

    public static String ice_staticId()
    {
        return "::abstract::else";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -7014645547935030906L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(_if);
        ostr_.writeProxy(_equals);
        ostr_.writeInt(_final);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        _if = istr_.readInt();
        _equals = defaultPrx.uncheckedCast(istr_.readProxy());
        _final = istr_.readInt();
        istr_.endSlice();
    }
}
