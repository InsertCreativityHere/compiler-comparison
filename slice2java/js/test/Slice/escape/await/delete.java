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
        this._clone = "";
        this._equals = "";
        this._hashCode = "";
        this.constructor = "";
    }

    public delete(int _if, casePrx _else, int export, String _clone, String _equals, String _hashCode, String constructor)
    {
        this._if = _if;
        this._else = _else;
        this.export = export;
        this._clone = _clone;
        this._equals = _equals;
        this._hashCode = _hashCode;
        this.constructor = constructor;
    }

    public int _if;

    public casePrx _else;

    public int export;

    public String _clone;

    public String _equals;

    public String _hashCode;

    public String constructor;

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
    private static final long serialVersionUID = 6485131413417274048L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(_if);
        ostr_.writeProxy(_else);
        ostr_.writeInt(export);
        ostr_.writeString(_clone);
        ostr_.writeString(_equals);
        ostr_.writeString(_hashCode);
        ostr_.writeString(constructor);
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
        _clone = istr_.readString();
        _equals = istr_.readString();
        _hashCode = istr_.readString();
        constructor = istr_.readString();
        istr_.endSlice();
    }
}
