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

package test.Slice.escape._abstract;

public class _break implements java.lang.Cloneable,
                               java.io.Serializable
{
    public int _case;

    public _break()
    {
    }

    public _break(int _case)
    {
        this._case = _case;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        _break r = null;
        if(rhs instanceof _break)
        {
            r = (_break)rhs;
        }

        if(r != null)
        {
            if(this._case != r._case)
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::abstract::break");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _case);
        return h_;
    }

    public _break clone()
    {
        _break c = null;
        try
        {
            c = (_break)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeInt(this._case);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this._case = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, _break v)
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

    static public _break ice_read(com.zeroc.Ice.InputStream istr)
    {
        _break v = new _break();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<_break> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, _break v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(4);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<_break> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(_break.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final _break _nullMarshalValue = new _break();

    /** @hidden */
    private static final long serialVersionUID = 8654140762710125546L;
}
