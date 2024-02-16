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

public class PNode extends com.zeroc.Ice.Value
{
    public PNode()
    {
    }

    public PNode(PNode next)
    {
        this.next = next;
    }

    public PNode next;

    public PNode clone()
    {
        return (PNode)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::PNode";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -2438007003200112237L;

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
        ostr_.writeValue(next);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> next = v, PNode.class);
        istr_.endSlice();
    }

    /** @hidden */
    protected com.zeroc.Ice.SlicedData _iceSlicedData;
}
