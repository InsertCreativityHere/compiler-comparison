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

public class Draw implements java.lang.Cloneable,
                             java.io.Serializable
{
    public Color backgroundColor;

    public Pen pen;

    public boolean shared;

    public Draw()
    {
        this.backgroundColor = new Color();
    }

    public Draw(Color backgroundColor, Pen pen, boolean shared)
    {
        this.backgroundColor = backgroundColor;
        this.pen = pen;
        this.shared = shared;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        Draw r = null;
        if(rhs instanceof Draw)
        {
            r = (Draw)rhs;
        }

        if(r != null)
        {
            if(this.backgroundColor != r.backgroundColor)
            {
                if(this.backgroundColor == null || r.backgroundColor == null || !this.backgroundColor.equals(r.backgroundColor))
                {
                    return false;
                }
            }
            if(this.pen != r.pen)
            {
                if(this.pen == null || r.pen == null || !this.pen.equals(r.pen))
                {
                    return false;
                }
            }
            if(this.shared != r.shared)
            {
                return false;
            }

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::Draw");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, backgroundColor);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, pen);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, shared);
        return h_;
    }

    public Draw clone()
    {
        Draw c = null;
        try
        {
            c = (Draw)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        Color.ice_write(ostr, this.backgroundColor);
        ostr.writeValue(this.pen);
        ostr.writeBool(this.shared);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.backgroundColor = Color.ice_read(istr);
        istr.readValue(v -> pen = v, Pen.class);
        this.shared = istr.readBool();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, Draw v)
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

    static public Draw ice_read(com.zeroc.Ice.InputStream istr)
    {
        Draw v = new Draw();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Draw> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Draw v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<Draw> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(Draw.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final Draw _nullMarshalValue = new Draw();

    /** @hidden */
    private static final long serialVersionUID = 6905606775808838649L;
}
