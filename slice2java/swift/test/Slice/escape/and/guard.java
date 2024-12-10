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

public class guard implements java.lang.Cloneable,
                              java.io.Serializable
{
    public int _default;

    public guard()
    {
    }

    public guard(int _default)
    {
        this._default = _default;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        guard r = null;
        if(rhs instanceof guard)
        {
            r = (guard)rhs;
        }

        if(r != null)
        {
            if(this._default != r._default)
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::and::guard");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _default);
        return h_;
    }

    public guard clone()
    {
        guard c = null;
        try
        {
            c = (guard)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeInt(this._default);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this._default = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, guard v)
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

    static public guard ice_read(com.zeroc.Ice.InputStream istr)
    {
        guard v = new guard();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<guard> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, guard v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(4);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<guard> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(guard.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final guard _nullMarshalValue = new guard();

    /** @hidden */
    private static final long serialVersionUID = 6403718030629959554L;
}
