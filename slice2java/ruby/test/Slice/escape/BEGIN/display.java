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

package BEGIN;

public class display extends com.zeroc.Ice.Value
{
    public display()
    {
    }

    public display(int when, int _do, breakPrx dup, int _else)
    {
        this.when = when;
        this._do = _do;
        this.dup = dup;
        this._else = _else;
    }

    public int when;

    public int _do;

    public breakPrx dup;

    public int _else;

    public display clone()
    {
        return (display)super.clone();
    }

    public static String ice_staticId()
    {
        return "::BEGIN::display";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 1525859472028476332L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(when);
        ostr_.writeInt(_do);
        ostr_.writeProxy(dup);
        ostr_.writeInt(_else);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        when = istr_.readInt();
        _do = istr_.readInt();
        dup = breakPrx.uncheckedCast(istr_.readProxy());
        _else = istr_.readInt();
        istr_.endSlice();
    }
}
