//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
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

public class properties extends _try
{
    public properties()
    {
        super();
        this._if = 2;
    }

    public properties(int _while, int delete, int _if, xor _catch, bitor[] spmd, java.util.Map<java.lang.Integer, bitor> otherwise)
    {
        super(_while, delete);
        this._if = _if;
        this._catch = _catch;
        this.spmd = spmd;
        this.otherwise = otherwise;
    }

    public int _if;

    public xor _catch;

    public bitor[] spmd;

    public java.util.Map<java.lang.Integer, bitor> otherwise;

    public properties clone()
    {
        return (properties)super.clone();
    }

    public static String ice_staticId()
    {
        return "::classdef::break::properties";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 2878595193188292859L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeInt(_if);
        ostr_.writeValue(_catch);
        parforHelper.write(ostr_, spmd);
        switchHelper.write(ostr_, otherwise);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        _if = istr_.readInt();
        istr_.readValue(v -> _catch = v, xor.class);
        spmd = parforHelper.read(istr_);
        otherwise = switchHelper.read(istr_);
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
