//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.optional.AMD.Test;

public class ClassVarStruct implements java.lang.Cloneable,
                                       java.io.Serializable
{
    public int a;

    public ClassVarStruct()
    {
    }

    public ClassVarStruct(int a)
    {
        this.a = a;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ClassVarStruct r = null;
        if(rhs instanceof ClassVarStruct)
        {
            r = (ClassVarStruct)rhs;
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::ClassVarStruct");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, a);
        return h_;
    }

    public ClassVarStruct clone()
    {
        ClassVarStruct c = null;
        try
        {
            c = (ClassVarStruct)super.clone();
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

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ClassVarStruct v)
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

    static public ClassVarStruct ice_read(com.zeroc.Ice.InputStream istr)
    {
        ClassVarStruct v = new ClassVarStruct();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ClassVarStruct> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ClassVarStruct v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(4);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<ClassVarStruct> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(ClassVarStruct.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ClassVarStruct _nullMarshalValue = new ClassVarStruct();

    /** @hidden */
    public static final long serialVersionUID = 4359993174812005982L;
}
