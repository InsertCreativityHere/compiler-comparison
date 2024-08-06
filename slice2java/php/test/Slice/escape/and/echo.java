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

package and;

public class echo extends com.zeroc.Ice.Value
{
    public echo()
    {
    }

    public echo(int _if, int _else, diePrx elseif, int empty)
    {
        this._if = _if;
        this._else = _else;
        this.elseif = elseif;
        this.empty = empty;
    }

    public int _if;

    public int _else;

    public diePrx elseif;

    public int empty;

    public echo clone()
    {
        return (echo)super.clone();
    }

    public static String ice_staticId()
    {
        return "::and::echo";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 5721577894377233318L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(_if);
        ostr_.writeInt(_else);
        ostr_.writeProxy(elseif);
        ostr_.writeInt(empty);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        _if = istr_.readInt();
        _else = istr_.readInt();
        elseif = diePrx.uncheckedCast(istr_.readProxy());
        empty = istr_.readInt();
        istr_.endSlice();
    }
}
