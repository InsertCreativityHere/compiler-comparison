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

public class _import extends _hashCode
{
    public _import()
    {
        super();
    }

    public _import(Throwable cause)
    {
        super(cause);
    }

    public _import(int _if, int _instanceof, int _native)
    {
        super(_if);
        this._instanceof = _instanceof;
        this._native = _native;
    }

    public _import(int _if, int _instanceof, int _native, Throwable cause)
    {
        super(_if, cause);
        this._instanceof = _instanceof;
        this._native = _native;
    }

    public String ice_id()
    {
        return "::abstract::import";
    }

    public int _instanceof;

    public int _native;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::abstract::import", -1, false);
        ostr_.writeInt(_instanceof);
        ostr_.writeInt(_native);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        _instanceof = istr_.readInt();
        _native = istr_.readInt();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    private static final long serialVersionUID = -1161212058448434121L;
}
