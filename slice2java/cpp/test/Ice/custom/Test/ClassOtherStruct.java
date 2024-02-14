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

public class ClassOtherStruct implements java.lang.Cloneable,
                                         java.io.Serializable
{
    public int x;

    public ClassOtherStruct()
    {
    }

    public ClassOtherStruct(int x)
    {
        this.x = x;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ClassOtherStruct r = null;
        if(rhs instanceof ClassOtherStruct)
        {
            r = (ClassOtherStruct)rhs;
        }

        if(r != null)
        {
            if(this.x != r.x)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::ClassOtherStruct");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, x);
        return h_;
    }

    public ClassOtherStruct clone()
    {
        ClassOtherStruct c = null;
        try
        {
            c = (ClassOtherStruct)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeInt(this.x);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.x = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ClassOtherStruct v)
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

    static public ClassOtherStruct ice_read(com.zeroc.Ice.InputStream istr)
    {
        ClassOtherStruct v = new ClassOtherStruct();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ClassOtherStruct> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ClassOtherStruct v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(4);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<ClassOtherStruct> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(ClassOtherStruct.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ClassOtherStruct _nullMarshalValue = new ClassOtherStruct();

    /** @hidden */
    public static final long serialVersionUID = 2624116696350933323L;
}
