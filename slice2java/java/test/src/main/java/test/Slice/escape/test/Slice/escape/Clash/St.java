//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Clash.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Slice.escape.Clash;

public class St implements java.lang.Cloneable,
                           java.io.Serializable
{
    public String v;

    public short istr;

    public int ostr;

    public int rhs;

    public String _hashCode;

    public int _clone;

    public St()
    {
        this.v = "";
        this._hashCode = "";
    }

    public St(String v, short istr, int ostr, int rhs, String _hashCode, int _clone)
    {
        this.v = v;
        this.istr = istr;
        this.ostr = ostr;
        this.rhs = rhs;
        this._hashCode = _hashCode;
        this._clone = _clone;
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
            if(this._hashCode != r._hashCode)
            {
                if(this._hashCode == null || r._hashCode == null || !this._hashCode.equals(r._hashCode))
                {
                    return false;
                }
            }
            if(this._clone != r._clone)
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::Clash::St");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, v);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, istr);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, ostr);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, rhs);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _hashCode);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _clone);
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
        ostr.writeString(this._hashCode);
        ostr.writeInt(this._clone);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.v = istr.readString();
        this.istr = istr.readShort();
        this.ostr = istr.readInt();
        this.rhs = istr.readInt();
        this._hashCode = istr.readString();
        this._clone = istr.readInt();
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
    private static final long serialVersionUID = -464492645187922636L;
}
