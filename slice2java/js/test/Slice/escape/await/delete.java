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

package await;

public class delete extends com.zeroc.Ice.Value
{
    public delete()
    {
    }

    public delete(int _if, casePrx _else, int export)
    {
        this._if = _if;
        this._else = _else;
        this.export = export;
    }

    public int _if;

    public casePrx _else;

    public int export;

    public delete clone()
    {
        return (delete)super.clone();
    }

    public static String ice_staticId()
    {
        return "::await::delete";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 5161440591848329726L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(_if);
        ostr_.writeProxy(_else);
        ostr_.writeInt(export);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        _if = istr_.readInt();
        _else = casePrx.uncheckedCast(istr_.readProxy());
        export = istr_.readInt();
        istr_.endSlice();
    }
}
