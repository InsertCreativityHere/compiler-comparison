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

public class fixed extends com.zeroc.Ice.UserException
{
    public fixed()
    {
    }

    public fixed(Throwable cause)
    {
        super(cause);
    }

    public fixed(int _for)
    {
        this._for = _for;
    }

    public fixed(int _for, Throwable cause)
    {
        super(cause);
        this._for = _for;
    }

    public String ice_id()
    {
        return "::abstract::fixed";
    }

    public int _for;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::abstract::fixed", -1, true);
        ostr_.writeInt(_for);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        _for = istr_.readInt();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = -8293832562888136709L;
}
