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

package test.Ice.optional.Test;

public class SmallStruct implements java.lang.Cloneable,
                                    java.io.Serializable
{
    public byte m;

    public SmallStruct()
    {
    }

    public SmallStruct(byte m)
    {
        this.m = m;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        SmallStruct r = null;
        if(rhs instanceof SmallStruct)
        {
            r = (SmallStruct)rhs;
        }

        if(r != null)
        {
            if(this.m != r.m)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::SmallStruct");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, m);
        return h_;
    }

    public SmallStruct clone()
    {
        SmallStruct c = null;
        try
        {
            c = (SmallStruct)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeByte(this.m);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.m = istr.readByte();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, SmallStruct v)
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

    static public SmallStruct ice_read(com.zeroc.Ice.InputStream istr)
    {
        SmallStruct v = new SmallStruct();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<SmallStruct> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, SmallStruct v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(1);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<SmallStruct> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(SmallStruct.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final SmallStruct _nullMarshalValue = new SmallStruct();

    /** @hidden */
    public static final long serialVersionUID = 6700991674707751324L;
}
