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

package test.Ice.custom.Test;

public class S implements java.lang.Cloneable,
                          java.io.Serializable
{
    public E en;

    public S()
    {
        this.en = E.E1;
    }

    public S(E en)
    {
        this.en = en;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        S r = null;
        if(rhs instanceof S)
        {
            r = (S)rhs;
        }

        if(r != null)
        {
            if(this.en != r.en)
            {
                if(this.en == null || r.en == null || !this.en.equals(r.en))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::S");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, en);
        return h_;
    }

    public S clone()
    {
        S c = null;
        try
        {
            c = (S)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        E.ice_write(ostr, this.en);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.en = E.ice_read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, S v)
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

    static public S ice_read(com.zeroc.Ice.InputStream istr)
    {
        S v = new S();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<S> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, S v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<S> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(S.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final S _nullMarshalValue = new S();

    /** @hidden */
    public static final long serialVersionUID = -2014569499570006908L;
}
