//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package classdef._break;

public class xor extends logical
{
    public xor()
    {
        super();
        this._return = 1;
    }

    public xor(bitand _else, bitor _for, boolean int64, int _return)
    {
        super(_else, _for, int64);
        this._return = _return;
    }

    public int _return;

    public xor clone()
    {
        return (xor)super.clone();
    }

    public static String ice_staticId()
    {
        return "::classdef::break::xor";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -1008950798826488578L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeInt(_return);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        _return = istr_.readInt();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
