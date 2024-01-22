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

public class Pen extends com.zeroc.Ice.Value
{
    public Pen()
    {
        this.color = new Color();
    }

    public Pen(int thickness, Color color)
    {
        this.thickness = thickness;
        this.color = color;
    }

    public int thickness;

    public Color color;

    public Pen clone()
    {
        return (Pen)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Pen";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 5907676840871551223L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(thickness);
        Color.ice_write(ostr_, color);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        thickness = istr_.readInt();
        color = Color.ice_read(istr_);
        istr_.endSlice();
    }
}
