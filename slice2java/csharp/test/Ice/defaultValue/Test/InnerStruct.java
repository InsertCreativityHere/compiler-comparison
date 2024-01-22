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

public class InnerStruct implements java.lang.Cloneable,
                                    java.io.Serializable
{
    public int a;

    public InnerStruct()
    {
    }

    public InnerStruct(int a)
    {
        this.a = a;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        InnerStruct r = null;
        if(rhs instanceof InnerStruct)
        {
            r = (InnerStruct)rhs;
        }

        if(r != null)
        {
            if(this.a != r.a)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::InnerStruct");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, a);
        return h_;
    }

    public InnerStruct clone()
    {
        InnerStruct c = null;
        try
        {
            c = (InnerStruct)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeInt(this.a);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.a = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, InnerStruct v)
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

    static public InnerStruct ice_read(com.zeroc.Ice.InputStream istr)
    {
        InnerStruct v = new InnerStruct();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<InnerStruct> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, InnerStruct v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(4);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<InnerStruct> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(InnerStruct.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final InnerStruct _nullMarshalValue = new InnerStruct();

    /** @hidden */
    public static final long serialVersionUID = 5127385432194478614L;
}
