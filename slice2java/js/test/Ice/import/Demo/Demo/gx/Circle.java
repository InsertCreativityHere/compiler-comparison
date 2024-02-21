//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Circle.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Demo.gx;

public class Circle implements java.lang.Cloneable,
                               java.io.Serializable
{
    public Point center;

    public long radius;

    public Circle()
    {
        this.center = new Point();
    }

    public Circle(Point center, long radius)
    {
        this.center = center;
        this.radius = radius;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        Circle r = null;
        if(rhs instanceof Circle)
        {
            r = (Circle)rhs;
        }

        if(r != null)
        {
            if(this.center != r.center)
            {
                if(this.center == null || r.center == null || !this.center.equals(r.center))
                {
                    return false;
                }
            }
            if(this.radius != r.radius)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Demo::gx::Circle");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, center);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, radius);
        return h_;
    }

    public Circle clone()
    {
        Circle c = null;
        try
        {
            c = (Circle)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        Point.ice_write(ostr, this.center);
        ostr.writeLong(this.radius);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.center = Point.ice_read(istr);
        this.radius = istr.readLong();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, Circle v)
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

    static public Circle ice_read(com.zeroc.Ice.InputStream istr)
    {
        Circle v = new Circle();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Circle> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Circle v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(16);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<Circle> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(Circle.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final Circle _nullMarshalValue = new Circle();

    /** @hidden */
    public static final long serialVersionUID = 3718523471373238692L;
}
