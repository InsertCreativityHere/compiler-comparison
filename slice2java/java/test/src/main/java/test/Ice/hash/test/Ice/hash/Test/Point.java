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

public class Point implements java.lang.Cloneable,
                              java.io.Serializable
{
    public int x;

    public int y;

    public Point()
    {
    }

    public Point(int x, int y)
    {
        this.x = x;
        this.y = y;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        Point r = null;
        if(rhs instanceof Point)
        {
            r = (Point)rhs;
        }

        if(r != null)
        {
            if(this.x != r.x)
            {
                return false;
            }
            if(this.y != r.y)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::Point");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, x);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, y);
        return h_;
    }

    public Point clone()
    {
        Point c = null;
        try
        {
            c = (Point)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeInt(this.x);
        ostr.writeInt(this.y);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.x = istr.readInt();
        this.y = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, Point v)
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

    static public Point ice_read(com.zeroc.Ice.InputStream istr)
    {
        Point v = new Point();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Point> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Point v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(8);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<Point> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(Point.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final Point _nullMarshalValue = new Point();

    /** @hidden */
    public static final long serialVersionUID = 5888632904923358384L;
}
