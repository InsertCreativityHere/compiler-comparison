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

public class ColorPalette implements java.lang.Cloneable,
                                     java.io.Serializable
{
    public java.util.Map<java.lang.Integer, Color> colors;

    public ColorPalette()
    {
    }

    public ColorPalette(java.util.Map<java.lang.Integer, Color> colors)
    {
        this.colors = colors;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ColorPalette r = null;
        if(rhs instanceof ColorPalette)
        {
            r = (ColorPalette)rhs;
        }

        if(r != null)
        {
            if(this.colors != r.colors)
            {
                if(this.colors == null || r.colors == null || !this.colors.equals(r.colors))
                {
                    return false;
                }
            }

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::Test::ColorPalette");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, colors);
        return h_;
    }

    public ColorPalette clone()
    {
        ColorPalette c = null;
        try
        {
            c = (ColorPalette)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        StringColorMapHelper.write(ostr, this.colors);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.colors = StringColorMapHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ColorPalette v)
    {
        if(v == null)
        {
            _nullMarshalValue.ice_writeMembers(ostr);
        }
        else
        {
            v.ice_writeMembers(ostr);
        }
    }

    static public ColorPalette ice_read(com.zeroc.Ice.InputStream istr)
    {
        ColorPalette v = new ColorPalette();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ColorPalette> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ColorPalette v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ColorPalette> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ColorPalette.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ColorPalette _nullMarshalValue = new ColorPalette();

    /** @hidden */
    private static final long serialVersionUID = -2820063886464259949L;
}
