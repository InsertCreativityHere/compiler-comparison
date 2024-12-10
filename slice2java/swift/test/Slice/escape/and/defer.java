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

package and;

public class defer implements java.lang.Cloneable,
                              java.io.Serializable
{
    public String _else;

    public defer()
    {
        this._else = "";
    }

    public defer(String _else)
    {
        this._else = _else;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        defer r = null;
        if(rhs instanceof defer)
        {
            r = (defer)rhs;
        }

        if(r != null)
        {
            if(this._else != r._else)
            {
                if(this._else == null || r._else == null || !this._else.equals(r._else))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::and::defer");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _else);
        return h_;
    }

    public defer clone()
    {
        defer c = null;
        try
        {
            c = (defer)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this._else);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this._else = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, defer v)
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

    static public defer ice_read(com.zeroc.Ice.InputStream istr)
    {
        defer v = new defer();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<defer> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, defer v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<defer> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(defer.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final defer _nullMarshalValue = new defer();

    /** @hidden */
    private static final long serialVersionUID = 8824796893299961803L;
}
