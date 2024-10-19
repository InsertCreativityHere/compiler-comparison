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

public class _continue implements java.lang.Cloneable,
                                  java.io.Serializable
{
    public int def;

    public _continue()
    {
    }

    public _continue(int def)
    {
        this.def = def;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        _continue r = null;
        if(rhs instanceof _continue)
        {
            r = (_continue)rhs;
        }

        if(r != null)
        {
            if(this.def != r.def)
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::and::continue");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, def);
        return h_;
    }

    public _continue clone()
    {
        _continue c = null;
        try
        {
            c = (_continue)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeInt(this.def);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.def = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, _continue v)
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

    static public _continue ice_read(com.zeroc.Ice.InputStream istr)
    {
        _continue v = new _continue();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<_continue> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, _continue v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(4);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<_continue> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(_continue.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final _continue _nullMarshalValue = new _continue();

    /** @hidden */
    private static final long serialVersionUID = 1201370401648955076L;
}
