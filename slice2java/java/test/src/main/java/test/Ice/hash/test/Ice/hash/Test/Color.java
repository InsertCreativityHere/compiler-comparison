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

package test.Ice.hash.Test;

public class Color implements java.lang.Cloneable,
                              java.io.Serializable
{
    public int r;

    public int g;

    public int b;

    public int a;

    public Color()
    {
    }

    public Color(int r, int g, int b, int a)
    {
        this.r = r;
        this.g = g;
        this.b = b;
        this.a = a;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        Color r = null;
        if(rhs instanceof Color)
        {
            r = (Color)rhs;
        }

        if(r != null)
        {
            if(this.r != r.r)
            {
                return false;
            }
            if(this.g != r.g)
            {
                return false;
            }
            if(this.b != r.b)
            {
                return false;
            }
            if(this.a != r.a)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::Color");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, r);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, g);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, b);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, a);
        return h_;
    }

    public Color clone()
    {
        Color c = null;
        try
        {
            c = (Color)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeInt(this.r);
        ostr.writeInt(this.g);
        ostr.writeInt(this.b);
        ostr.writeInt(this.a);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.r = istr.readInt();
        this.g = istr.readInt();
        this.b = istr.readInt();
        this.a = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, Color v)
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

    static public Color ice_read(com.zeroc.Ice.InputStream istr)
    {
        Color v = new Color();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Color> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Color v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(16);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<Color> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(Color.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final Color _nullMarshalValue = new Color();

    /** @hidden */
    public static final long serialVersionUID = -2071683697744854794L;
}
