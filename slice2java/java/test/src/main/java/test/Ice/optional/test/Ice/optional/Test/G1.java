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

package test.Ice.optional.Test;

public class G1 implements java.lang.Cloneable,
                           java.io.Serializable
{
    public String a;

    public G1()
    {
        this.a = "";
    }

    public G1(String a)
    {
        this.a = a;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        G1 r = null;
        if(rhs instanceof G1)
        {
            r = (G1)rhs;
        }

        if(r != null)
        {
            if(this.a != r.a)
            {
                if(this.a == null || r.a == null || !this.a.equals(r.a))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::G1");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, a);
        return h_;
    }

    public G1 clone()
    {
        G1 c = null;
        try
        {
            c = (G1)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.a);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.a = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, G1 v)
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

    static public G1 ice_read(com.zeroc.Ice.InputStream istr)
    {
        G1 v = new G1();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<G1> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, G1 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<G1> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(G1.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final G1 _nullMarshalValue = new G1();

    /** @hidden */
    public static final long serialVersionUID = 7339780078142791226L;
}
