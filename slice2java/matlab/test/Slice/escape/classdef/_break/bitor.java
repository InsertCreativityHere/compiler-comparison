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

package classdef._break;

public class bitor implements java.lang.Cloneable,
                              java.io.Serializable
{
    public bitand _case;

    public int _continue;

    public int eq;

    public int ne;

    public bitor()
    {
        this._case = classdef._break.bitand._catch;
        this._continue = 1;
        this.eq = 2;
        this.ne = 3;
    }

    public bitor(bitand _case, int _continue, int eq, int ne)
    {
        this._case = _case;
        this._continue = _continue;
        this.eq = eq;
        this.ne = ne;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        bitor r = null;
        if(rhs instanceof bitor)
        {
            r = (bitor)rhs;
        }

        if(r != null)
        {
            if(this._case != r._case)
            {
                if(this._case == null || r._case == null || !this._case.equals(r._case))
                {
                    return false;
                }
            }
            if(this._continue != r._continue)
            {
                return false;
            }
            if(this.eq != r.eq)
            {
                return false;
            }
            if(this.ne != r.ne)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::classdef::break::bitor");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, _case);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, _continue);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, eq);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, ne);
        return h_;
    }

    public bitor clone()
    {
        bitor c = null;
        try
        {
            c = (bitor)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        bitand.ice_write(ostr, this._case);
        ostr.writeInt(this._continue);
        ostr.writeInt(this.eq);
        ostr.writeInt(this.ne);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this._case = bitand.ice_read(istr);
        this._continue = istr.readInt();
        this.eq = istr.readInt();
        this.ne = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, bitor v)
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

    static public bitor ice_read(com.zeroc.Ice.InputStream istr)
    {
        bitor v = new bitor();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<bitor> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, bitor v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<bitor> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(bitor.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final bitor _nullMarshalValue = new bitor();

    /** @hidden */
    private static final long serialVersionUID = -2309895331962839043L;
}
