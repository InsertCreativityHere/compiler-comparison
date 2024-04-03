//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Square.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Demo.gx;

public class Square implements java.lang.Cloneable,
                               java.io.Serializable
{
    public Point p1;

    public Point p2;

    public Point p3;

    public Point p4;

    public Square()
    {
        this.p1 = new Point();
        this.p2 = new Point();
        this.p3 = new Point();
        this.p4 = new Point();
    }

    public Square(Point p1, Point p2, Point p3, Point p4)
    {
        this.p1 = p1;
        this.p2 = p2;
        this.p3 = p3;
        this.p4 = p4;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        Square r = null;
        if(rhs instanceof Square)
        {
            r = (Square)rhs;
        }

        if(r != null)
        {
            if(this.p1 != r.p1)
            {
                if(this.p1 == null || r.p1 == null || !this.p1.equals(r.p1))
                {
                    return false;
                }
            }
            if(this.p2 != r.p2)
            {
                if(this.p2 == null || r.p2 == null || !this.p2.equals(r.p2))
                {
                    return false;
                }
            }
            if(this.p3 != r.p3)
            {
                if(this.p3 == null || r.p3 == null || !this.p3.equals(r.p3))
                {
                    return false;
                }
            }
            if(this.p4 != r.p4)
            {
                if(this.p4 == null || r.p4 == null || !this.p4.equals(r.p4))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Demo::gx::Square");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, p1);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, p2);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, p3);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, p4);
        return h_;
    }

    public Square clone()
    {
        Square c = null;
        try
        {
            c = (Square)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        Point.ice_write(ostr, this.p1);
        Point.ice_write(ostr, this.p2);
        Point.ice_write(ostr, this.p3);
        Point.ice_write(ostr, this.p4);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.p1 = Point.ice_read(istr);
        this.p2 = Point.ice_read(istr);
        this.p3 = Point.ice_read(istr);
        this.p4 = Point.ice_read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, Square v)
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

    static public Square ice_read(com.zeroc.Ice.InputStream istr)
    {
        Square v = new Square();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Square> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Square v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(32);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<Square> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(Square.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final Square _nullMarshalValue = new Square();

    /** @hidden */
    public static final long serialVersionUID = 8498048837156130226L;
}
