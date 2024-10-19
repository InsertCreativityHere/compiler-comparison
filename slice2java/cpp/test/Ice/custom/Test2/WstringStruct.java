//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `WstringAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test2;

public class WstringStruct implements java.lang.Cloneable,
                                      java.io.Serializable
{
    public String s;

    public WstringStruct()
    {
        this.s = "";
    }

    public WstringStruct(String s)
    {
        this.s = s;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        WstringStruct r = null;
        if(rhs instanceof WstringStruct)
        {
            r = (WstringStruct)rhs;
        }

        if(r != null)
        {
            if(this.s != r.s)
            {
                if(this.s == null || r.s == null || !this.s.equals(r.s))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::Test2::WstringStruct");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, s);
        return h_;
    }

    public WstringStruct clone()
    {
        WstringStruct c = null;
        try
        {
            c = (WstringStruct)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.s);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.s = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, WstringStruct v)
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

    static public WstringStruct ice_read(com.zeroc.Ice.InputStream istr)
    {
        WstringStruct v = new WstringStruct();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<WstringStruct> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, WstringStruct v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<WstringStruct> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(WstringStruct.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final WstringStruct _nullMarshalValue = new WstringStruct();

    /** @hidden */
    private static final long serialVersionUID = 5997333620776811124L;
}
