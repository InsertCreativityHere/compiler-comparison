// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package and;

public class xor implements java.lang.Cloneable,
                            java.io.Serializable
{
    public int _abstract;

    public int _clone;

    public int _private;

    public int _protected;

    public int _public;

    public int _this;

    public int _throw;

    public int use;

    public int _var;

    public xor()
    {
    }

    public xor(int _abstract, int _clone, int _private, int _protected, int _public, int _this, int _throw, int use, int _var)
    {
        this._abstract = _abstract;
        this._clone = _clone;
        this._private = _private;
        this._protected = _protected;
        this._public = _public;
        this._this = _this;
        this._throw = _throw;
        this.use = use;
        this._var = _var;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        xor r = null;
        if(rhs instanceof xor)
        {
            r = (xor)rhs;
        }

        if(r != null)
        {
            if(this._abstract != r._abstract)
            {
                return false;
            }
            if(this._clone != r._clone)
            {
                return false;
            }
            if(this._private != r._private)
            {
                return false;
            }
            if(this._protected != r._protected)
            {
                return false;
            }
            if(this._public != r._public)
            {
                return false;
            }
            if(this._this != r._this)
            {
                return false;
            }
            if(this._throw != r._throw)
            {
                return false;
            }
            if(this.use != r.use)
            {
                return false;
            }
            if(this._var != r._var)
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::and::xor");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _abstract);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _clone);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _private);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _protected);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _public);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _this);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _throw);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, use);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _var);
        return h_;
    }

    public xor clone()
    {
        xor c = null;
        try
        {
            c = (xor)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeInt(this._abstract);
        ostr.writeInt(this._clone);
        ostr.writeInt(this._private);
        ostr.writeInt(this._protected);
        ostr.writeInt(this._public);
        ostr.writeInt(this._this);
        ostr.writeInt(this._throw);
        ostr.writeInt(this.use);
        ostr.writeInt(this._var);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this._abstract = istr.readInt();
        this._clone = istr.readInt();
        this._private = istr.readInt();
        this._protected = istr.readInt();
        this._public = istr.readInt();
        this._this = istr.readInt();
        this._throw = istr.readInt();
        this.use = istr.readInt();
        this._var = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, xor v)
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

    static public xor ice_read(com.zeroc.Ice.InputStream istr)
    {
        xor v = new xor();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<xor> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, xor v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(36);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<xor> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(xor.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final xor _nullMarshalValue = new xor();

    /** @hidden */
    private static final long serialVersionUID = 3877433945681715636L;
}
