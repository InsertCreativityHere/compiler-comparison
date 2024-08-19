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

public class PointD implements java.lang.Cloneable,
                               java.io.Serializable
{
    public double x;

    public double y;

    public double z;

    public PointD()
    {
    }

    public PointD(double x, double y, double z)
    {
        this.x = x;
        this.y = y;
        this.z = z;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        PointD r = null;
        if(rhs instanceof PointD)
        {
            r = (PointD)rhs;
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
            if(this.z != r.z)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::PointD");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, x);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, y);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, z);
        return h_;
    }

    public PointD clone()
    {
        PointD c = null;
        try
        {
            c = (PointD)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeDouble(this.x);
        ostr.writeDouble(this.y);
        ostr.writeDouble(this.z);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.x = istr.readDouble();
        this.y = istr.readDouble();
        this.z = istr.readDouble();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, PointD v)
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

    static public PointD ice_read(com.zeroc.Ice.InputStream istr)
    {
        PointD v = new PointD();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<PointD> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, PointD v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(24);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<PointD> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(PointD.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final PointD _nullMarshalValue = new PointD();

    /** @hidden */
    private static final long serialVersionUID = -1174669012416172841L;
}
