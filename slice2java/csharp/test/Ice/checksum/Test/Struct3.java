//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ServerTypes.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class Struct3 implements java.lang.Cloneable,
                                java.io.Serializable
{
    public String str;

    public double b;

    public Struct3()
    {
        this.str = "";
    }

    public Struct3(String str, double b)
    {
        this.str = str;
        this.b = b;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        Struct3 r = null;
        if(rhs instanceof Struct3)
        {
            r = (Struct3)rhs;
        }

        if(r != null)
        {
            if(this.str != r.str)
            {
                if(this.str == null || r.str == null || !this.str.equals(r.str))
                {
                    return false;
                }
            }
            if(this.b != r.b)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::Struct3");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, str);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, b);
        return h_;
    }

    public Struct3 clone()
    {
        Struct3 c = null;
        try
        {
            c = (Struct3)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.str);
        ostr.writeDouble(this.b);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.str = istr.readString();
        this.b = istr.readDouble();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, Struct3 v)
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

    static public Struct3 ice_read(com.zeroc.Ice.InputStream istr)
    {
        Struct3 v = new Struct3();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Struct3> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Struct3 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<Struct3> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(Struct3.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final Struct3 _nullMarshalValue = new Struct3();

    /** @hidden */
    public static final long serialVersionUID = 7590387651838713262L;
}
