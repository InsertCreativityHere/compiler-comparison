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

public class G2 implements java.lang.Cloneable,
                           java.io.Serializable
{
    public long a;

    public G2()
    {
    }

    public G2(long a)
    {
        this.a = a;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        G2 r = null;
        if(rhs instanceof G2)
        {
            r = (G2)rhs;
        }

        if(r != null)
        {
            if(this.a != r.a)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::G2");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, a);
        return h_;
    }

    public G2 clone()
    {
        G2 c = null;
        try
        {
            c = (G2)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeLong(this.a);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.a = istr.readLong();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, G2 v)
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

    static public G2 ice_read(com.zeroc.Ice.InputStream istr)
    {
        G2 v = new G2();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<G2> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, G2 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(8);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<G2> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(G2.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final G2 _nullMarshalValue = new G2();

    /** @hidden */
    private static final long serialVersionUID = 3824556158835675394L;
}
