//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
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

public class S implements java.lang.Cloneable,
                          java.io.Serializable
{
    public String str;

    public S()
    {
        this.str = "";
    }

    public S(String str)
    {
        this.str = str;
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
            if(this.str != r.str)
            {
                if(this.str == null || r.str == null || !this.str.equals(r.str))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, str);
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
        ostr.writeString(this.str);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.str = istr.readString();
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
    public static final long serialVersionUID = 481774728949662836L;
}
