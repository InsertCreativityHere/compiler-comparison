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

public class PointF implements java.lang.Cloneable,
                               java.io.Serializable
{
    public float x;

    public float y;

    public float z;

    public PointF()
    {
    }

    public PointF(float x, float y, float z)
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
        PointF r = null;
        if(rhs instanceof PointF)
        {
            r = (PointF)rhs;
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::PointF");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, x);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, y);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, z);
        return h_;
    }

    public PointF clone()
    {
        PointF c = null;
        try
        {
            c = (PointF)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeFloat(this.x);
        ostr.writeFloat(this.y);
        ostr.writeFloat(this.z);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.x = istr.readFloat();
        this.y = istr.readFloat();
        this.z = istr.readFloat();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, PointF v)
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

    static public PointF ice_read(com.zeroc.Ice.InputStream istr)
    {
        PointF v = new PointF();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<PointF> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, PointF v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(12);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<PointF> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(PointF.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final PointF _nullMarshalValue = new PointF();

    /** @hidden */
    public static final long serialVersionUID = -3635239559558704823L;
}
