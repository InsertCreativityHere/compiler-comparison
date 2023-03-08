//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Types.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.checksum.Test;

public class Struct4 implements java.lang.Cloneable,
                                java.io.Serializable
{
    public String str;

    public boolean b;

    public Struct4()
    {
        this.str = "";
    }

    public Struct4(String str, boolean b)
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
        Struct4 r = null;
        if(rhs instanceof Struct4)
        {
            r = (Struct4)rhs;
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::Struct4");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, str);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, b);
        return h_;
    }

    public Struct4 clone()
    {
        Struct4 c = null;
        try
        {
            c = (Struct4)super.clone();
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
        ostr.writeBool(this.b);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.str = istr.readString();
        this.b = istr.readBool();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, Struct4 v)
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

    static public Struct4 ice_read(com.zeroc.Ice.InputStream istr)
    {
        Struct4 v = new Struct4();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Struct4> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Struct4 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<Struct4> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(Struct4.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final Struct4 _nullMarshalValue = new Struct4();

    /** @hidden */
    public static final long serialVersionUID = -7201318249970720215L;
}
