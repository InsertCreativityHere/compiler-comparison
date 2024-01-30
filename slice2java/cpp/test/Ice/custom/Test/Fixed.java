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

public class Fixed implements java.lang.Cloneable,
                              java.io.Serializable
{
    public short s;

    public Fixed()
    {
    }

    public Fixed(short s)
    {
        this.s = s;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        Fixed r = null;
        if(rhs instanceof Fixed)
        {
            r = (Fixed)rhs;
        }

        if(r != null)
        {
            if(this.s != r.s)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::Fixed");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, s);
        return h_;
    }

    public Fixed clone()
    {
        Fixed c = null;
        try
        {
            c = (Fixed)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeShort(this.s);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.s = istr.readShort();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, Fixed v)
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

    static public Fixed ice_read(com.zeroc.Ice.InputStream istr)
    {
        Fixed v = new Fixed();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Fixed> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Fixed v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(2);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<Fixed> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(Fixed.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final Fixed _nullMarshalValue = new Fixed();

    /** @hidden */
    public static final long serialVersionUID = -5072317967085905374L;
}
