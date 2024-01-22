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

package Test.Sub;

public class NestedClassStruct implements java.lang.Cloneable,
                                          java.io.Serializable
{
    public int i;

    public NestedClassStruct()
    {
    }

    public NestedClassStruct(int i)
    {
        this.i = i;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        NestedClassStruct r = null;
        if(rhs instanceof NestedClassStruct)
        {
            r = (NestedClassStruct)rhs;
        }

        if(r != null)
        {
            if(this.i != r.i)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::Sub::NestedClassStruct");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, i);
        return h_;
    }

    public NestedClassStruct clone()
    {
        NestedClassStruct c = null;
        try
        {
            c = (NestedClassStruct)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeInt(this.i);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.i = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, NestedClassStruct v)
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

    static public NestedClassStruct ice_read(com.zeroc.Ice.InputStream istr)
    {
        NestedClassStruct v = new NestedClassStruct();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<NestedClassStruct> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, NestedClassStruct v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(4);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<NestedClassStruct> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(NestedClassStruct.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final NestedClassStruct _nullMarshalValue = new NestedClassStruct();

    /** @hidden */
    public static final long serialVersionUID = -2609318704038225268L;
}
