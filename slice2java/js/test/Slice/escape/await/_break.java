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

package await;

public class _break implements java.lang.Cloneable,
                               java.io.Serializable
{
    public int _while;

    public String _clone;

    public String _equals;

    public String _hashCode;

    public String constructor;

    public _break()
    {
        this._clone = "";
        this._equals = "";
        this._hashCode = "";
        this.constructor = "";
    }

    public _break(int _while, String _clone, String _equals, String _hashCode, String constructor)
    {
        this._while = _while;
        this._clone = _clone;
        this._equals = _equals;
        this._hashCode = _hashCode;
        this.constructor = constructor;
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
            if(this._while != r._while)
            {
                return false;
            }
            if(this._clone != r._clone)
            {
                if(this._clone == null || r._clone == null || !this._clone.equals(r._clone))
                {
                    return false;
                }
            }
            if(this._equals != r._equals)
            {
                if(this._equals == null || r._equals == null || !this._equals.equals(r._equals))
                {
                    return false;
                }
            }
            if(this._hashCode != r._hashCode)
            {
                if(this._hashCode == null || r._hashCode == null || !this._hashCode.equals(r._hashCode))
                {
                    return false;
                }
            }
            if(this.constructor != r.constructor)
            {
                if(this.constructor == null || r.constructor == null || !this.constructor.equals(r.constructor))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::await::break");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _while);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _clone);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _equals);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, _hashCode);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, constructor);
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
        ostr.writeInt(this._while);
        ostr.writeString(this._clone);
        ostr.writeString(this._equals);
        ostr.writeString(this._hashCode);
        ostr.writeString(this.constructor);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this._while = istr.readInt();
        this._clone = istr.readString();
        this._equals = istr.readString();
        this._hashCode = istr.readString();
        this.constructor = istr.readString();
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
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<_break> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(_break.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final _break _nullMarshalValue = new _break();

    /** @hidden */
    private static final long serialVersionUID = 8352618550063876812L;
}
