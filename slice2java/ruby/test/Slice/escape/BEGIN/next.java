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

public class next extends com.zeroc.Ice.UserException
{
    public next()
    {
    }

    public next(int _new)
    {
        this._new = _new;
    }

    public String ice_id()
    {
        return "::BEGIN::next";
    }

    public int _new;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::BEGIN::next", -1, true);
        ostr_.writeInt(_new);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        _new = istr_.readInt();
        istr_.endSlice();
    }

    /** @hidden */
    private static final long serialVersionUID = 3375552964233740547L;
}
