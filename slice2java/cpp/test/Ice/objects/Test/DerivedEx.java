// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'DerivedEx.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package Test;

public class DerivedEx extends BaseEx
{
    public DerivedEx()
    {
    }

    public DerivedEx(String reason)
    {
        super(reason);
    }

    public String ice_id()
    {
        return "::Test::DerivedEx";
    }

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::DerivedEx", -1, false);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    private static final long serialVersionUID = 4268776817929044354L;
}
