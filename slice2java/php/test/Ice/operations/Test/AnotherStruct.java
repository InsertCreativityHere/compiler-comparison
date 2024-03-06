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

package Test;

public class AnotherStruct implements java.lang.Cloneable,
                                      java.io.Serializable
{
    public String s;

    public AnotherStruct()
    {
        this.s = "";
    }

    public AnotherStruct(String s)
    {
        this.s = s;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        AnotherStruct r = null;
        if(rhs instanceof AnotherStruct)
        {
            r = (AnotherStruct)rhs;
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::AnotherStruct");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, s);
        return h_;
    }

    public AnotherStruct clone()
    {
        AnotherStruct c = null;
        try
        {
            c = (AnotherStruct)super.clone();
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

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, AnotherStruct v)
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

    static public AnotherStruct ice_read(com.zeroc.Ice.InputStream istr)
    {
        AnotherStruct v = new AnotherStruct();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<AnotherStruct> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, AnotherStruct v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<AnotherStruct> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(AnotherStruct.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final AnotherStruct _nullMarshalValue = new AnotherStruct();

    /** @hidden */
    public static final long serialVersionUID = 2723846630192849706L;
}
