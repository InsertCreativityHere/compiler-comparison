//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package BEGIN;

public class and implements java.lang.Cloneable,
                            java.io.Serializable
{
    public int begin;

    public and()
    {
    }

    public and(int begin)
    {
        this.begin = begin;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        and r = null;
        if(rhs instanceof and)
        {
            r = (and)rhs;
        }

        if(r != null)
        {
            if(this.begin != r.begin)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::BEGIN::and");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, begin);
        return h_;
    }

    public and clone()
    {
        and c = null;
        try
        {
            c = (and)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeInt(this.begin);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.begin = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, and v)
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

    static public and ice_read(com.zeroc.Ice.InputStream istr)
    {
        and v = new and();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<and> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, and v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(4);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<and> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(and.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final and _nullMarshalValue = new and();

    /** @hidden */
    private static final long serialVersionUID = 1440105003684683127L;
}
