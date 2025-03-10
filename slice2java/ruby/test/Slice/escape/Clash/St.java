// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Clash.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package Clash;

public class St implements java.lang.Cloneable,
                           java.io.Serializable
{
    public String v;

    public short istr;

    public int ostr;

    public int rhs;

    public String other;

    public St()
    {
        this.v = "";
        this.other = "";
    }

    public St(String v, short istr, int ostr, int rhs, String other)
    {
        this.v = v;
        this.istr = istr;
        this.ostr = ostr;
        this.rhs = rhs;
        this.other = other;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        St r = null;
        if(rhs instanceof St)
        {
            r = (St)rhs;
        }

        if(r != null)
        {
            if(this.v != r.v)
            {
                if(this.v == null || r.v == null || !this.v.equals(r.v))
                {
                    return false;
                }
            }
            if(this.istr != r.istr)
            {
                return false;
            }
            if(this.ostr != r.ostr)
            {
                return false;
            }
            if(this.rhs != r.rhs)
            {
                return false;
            }
            if(this.other != r.other)
            {
                if(this.other == null || r.other == null || !this.other.equals(r.other))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::Clash::St");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, v);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, istr);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, ostr);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, rhs);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, other);
        return h_;
    }

    public St clone()
    {
        St c = null;
        try
        {
            c = (St)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.v);
        ostr.writeShort(this.istr);
        ostr.writeInt(this.ostr);
        ostr.writeInt(this.rhs);
        ostr.writeString(this.other);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.v = istr.readString();
        this.istr = istr.readShort();
        this.ostr = istr.readInt();
        this.rhs = istr.readInt();
        this.other = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, St v)
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

    static public St ice_read(com.zeroc.Ice.InputStream istr)
    {
        St v = new St();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<St> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, St v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<St> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(St.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final St _nullMarshalValue = new St();

    /** @hidden */
    private static final long serialVersionUID = 1340276510952747919L;
}
