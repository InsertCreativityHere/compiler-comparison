// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package classdef._break;

public class logical extends com.zeroc.Ice.Value
{
    public logical()
    {
        this._else = classdef._break.bitand.enumeration;
        this._for = new bitor();
        this.int64 = true;
    }

    public logical(bitand _else, bitor _for, boolean int64)
    {
        this._else = _else;
        this._for = _for;
        this.int64 = int64;
    }

    public bitand _else;

    public bitor _for;

    public boolean int64;

    public logical clone()
    {
        return (logical)super.clone();
    }

    public static String ice_staticId()
    {
        return "::classdef::break::logical";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 1139776460120636768L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        bitand.ice_write(ostr_, _else);
        bitor.ice_write(ostr_, _for);
        ostr_.writeBool(int64);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        _else = bitand.ice_read(istr_);
        _for = bitor.ice_read(istr_);
        int64 = istr_.readBool();
        istr_.endSlice();
    }
}
