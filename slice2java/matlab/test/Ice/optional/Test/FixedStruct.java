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

public class FixedStruct implements java.lang.Cloneable,
                                    java.io.Serializable
{
    public int m;

    public FixedStruct()
    {
    }

    public FixedStruct(int m)
    {
        this.m = m;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        FixedStruct r = null;
        if(rhs instanceof FixedStruct)
        {
            r = (FixedStruct)rhs;
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::FixedStruct");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, m);
        return h_;
    }

    public FixedStruct clone()
    {
        FixedStruct c = null;
        try
        {
            c = (FixedStruct)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeInt(this.m);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.m = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, FixedStruct v)
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

    static public FixedStruct ice_read(com.zeroc.Ice.InputStream istr)
    {
        FixedStruct v = new FixedStruct();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<FixedStruct> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, FixedStruct v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(4);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<FixedStruct> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(FixedStruct.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final FixedStruct _nullMarshalValue = new FixedStruct();

    /** @hidden */
    public static final long serialVersionUID = 1569613484091362231L;
}
