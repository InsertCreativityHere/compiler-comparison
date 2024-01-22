//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class PCUnknown extends PBase
{
    public PCUnknown()
    {
        super();
        this.pu = "";
    }

    public PCUnknown(int pi, String pu)
    {
        super(pi);
        this.pu = pu;
    }

    public String pu;

    public PCUnknown clone()
    {
        return (PCUnknown)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::PCUnknown";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -5081816577557476485L;

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
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeString(pu);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        pu = istr_.readString();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }

    /** @hidden */
    protected com.zeroc.Ice.SlicedData _iceSlicedData;
}
