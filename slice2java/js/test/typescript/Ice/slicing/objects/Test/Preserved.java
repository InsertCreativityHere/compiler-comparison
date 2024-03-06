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

package Test;

public class Preserved extends PBase
{
    public Preserved()
    {
        super();
        this.ps = "";
    }

    public Preserved(int pi, String ps)
    {
        super(pi);
        this.ps = ps;
    }

    public String ps;

    public Preserved clone()
    {
        return (Preserved)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Preserved";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 3651536258437497659L;

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
        ostr_.writeString(ps);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        ps = istr_.readString();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }

    /** @hidden */
    protected com.zeroc.Ice.SlicedData _iceSlicedData;
}
