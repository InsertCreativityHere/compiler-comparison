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

public class fixed extends com.zeroc.Ice.UserException
{
    public fixed()
    {
    }

    public fixed(int _for)
    {
        this._for = _for;
    }

    public String ice_id()
    {
        return "::await::fixed";
    }

    public int _for;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::await::fixed", -1, true);
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
    private static final long serialVersionUID = 3808658699380434178L;
}
