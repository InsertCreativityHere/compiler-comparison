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

public class _try extends com.zeroc.Ice.Value
{
    public _try()
    {
        this._while = 1;
        this.delete = 2;
    }

    public _try(int _while, int delete)
    {
        this._while = _while;
        this.delete = delete;
    }

    public int _while;

    public int delete;

    public _try clone()
    {
        return (_try)super.clone();
    }

    public static String ice_staticId()
    {
        return "::classdef::break::try";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -7030178286248322869L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(_while);
        ostr_.writeInt(delete);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        _while = istr_.readInt();
        delete = istr_.readInt();
        istr_.endSlice();
    }
}
