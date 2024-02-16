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

package Test2.Sub2;

public class NestedClassStruct2 implements java.lang.Cloneable,
                                           java.io.Serializable
{
    public int i;

    public NestedClassStruct2()
    {
    }

    public NestedClassStruct2(int i)
    {
        this.i = i;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        NestedClassStruct2 r = null;
        if(rhs instanceof NestedClassStruct2)
        {
            r = (NestedClassStruct2)rhs;
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test2::Sub2::NestedClassStruct2");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, i);
        return h_;
    }

    public NestedClassStruct2 clone()
    {
        NestedClassStruct2 c = null;
        try
        {
            c = (NestedClassStruct2)super.clone();
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

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, NestedClassStruct2 v)
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

    static public NestedClassStruct2 ice_read(com.zeroc.Ice.InputStream istr)
    {
        NestedClassStruct2 v = new NestedClassStruct2();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<NestedClassStruct2> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, NestedClassStruct2 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(4);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<NestedClassStruct2> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(NestedClassStruct2.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final NestedClassStruct2 _nullMarshalValue = new NestedClassStruct2();

    /** @hidden */
    public static final long serialVersionUID = 9184128286895320454L;
}
