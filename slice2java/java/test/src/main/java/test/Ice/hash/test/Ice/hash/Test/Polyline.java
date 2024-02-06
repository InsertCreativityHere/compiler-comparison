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

public class Polyline implements java.lang.Cloneable,
                                 java.io.Serializable
{
    public Point[] vertices;

    public Polyline()
    {
    }

    public Polyline(Point[] vertices)
    {
        this.vertices = vertices;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        Polyline r = null;
        if(rhs instanceof Polyline)
        {
            r = (Polyline)rhs;
        }

        if(r != null)
        {
            if(!java.util.Arrays.equals(this.vertices, r.vertices))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::Polyline");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, vertices);
        return h_;
    }

    public Polyline clone()
    {
        Polyline c = null;
        try
        {
            c = (Polyline)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        PointsHelper.write(ostr, this.vertices);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.vertices = PointsHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, Polyline v)
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

    static public Polyline ice_read(com.zeroc.Ice.InputStream istr)
    {
        Polyline v = new Polyline();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Polyline> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Polyline v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<Polyline> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(Polyline.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final Polyline _nullMarshalValue = new Polyline();

    /** @hidden */
    public static final long serialVersionUID = -345033300010966173L;
}
