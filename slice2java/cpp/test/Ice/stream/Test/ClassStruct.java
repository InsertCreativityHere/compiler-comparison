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

public class ClassStruct implements java.lang.Cloneable,
                                    java.io.Serializable
{
    public int i;

    public ClassStruct()
    {
    }

    public ClassStruct(int i)
    {
        this.i = i;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ClassStruct r = null;
        if(rhs instanceof ClassStruct)
        {
            r = (ClassStruct)rhs;
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::Test::ClassStruct");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, i);
        return h_;
    }

    public ClassStruct clone()
    {
        ClassStruct c = null;
        try
        {
            c = (ClassStruct)super.clone();
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

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ClassStruct v)
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

    static public ClassStruct ice_read(com.zeroc.Ice.InputStream istr)
    {
        ClassStruct v = new ClassStruct();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ClassStruct> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ClassStruct v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(4);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<ClassStruct> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(ClassStruct.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ClassStruct _nullMarshalValue = new ClassStruct();

    /** @hidden */
    private static final long serialVersionUID = 4995618639888394520L;
}
