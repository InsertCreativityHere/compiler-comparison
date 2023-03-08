//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ClientPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.slicing.exceptions.client.Test;

public class BaseClass extends com.zeroc.Ice.Value
{
    public BaseClass()
    {
        this.bc = "";
    }

    public BaseClass(String bc)
    {
        this.bc = bc;
    }

    public String bc;

    public BaseClass clone()
    {
        return (BaseClass)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::BaseClass";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 3083213556335677562L;

    /** @hidden */
    @Override
    public com.zeroc.Ice.SlicedData ice_getSlicedData()
    {
        return _iceSlicedData;
    }

    /** @hidden */
    @Override
    public void _iceWrite(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.startValue(_iceSlicedData);
        _iceWriteImpl(ostr);
        ostr.endValue();
    }

    /** @hidden */
    @Override
    public void _iceRead(com.zeroc.Ice.InputStream istr)
    {
        istr.startValue();
        _iceReadImpl(istr);
        _iceSlicedData = istr.endValue(true);
    }

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(bc);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        bc = istr_.readString();
        istr_.endSlice();
    }

    /** @hidden */
    protected com.zeroc.Ice.SlicedData _iceSlicedData;
}
