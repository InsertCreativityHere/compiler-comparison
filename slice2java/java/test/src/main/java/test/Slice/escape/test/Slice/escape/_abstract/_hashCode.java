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

public class _hashCode extends com.zeroc.Ice.UserException
{
    public _hashCode()
    {
    }

    public _hashCode(Throwable cause)
    {
        super(cause);
    }

    public _hashCode(int _if)
    {
        this._if = _if;
    }

    public _hashCode(int _if, Throwable cause)
    {
        super(cause);
        this._if = _if;
    }

    public String ice_id()
    {
        return "::abstract::hashCode";
    }

    public int _if;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::abstract::hashCode", -1, true);
        ostr_.writeInt(_if);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        _if = istr_.readInt();
        istr_.endSlice();
    }

    /** @hidden */
    private static final long serialVersionUID = -2944655823248196124L;
}
