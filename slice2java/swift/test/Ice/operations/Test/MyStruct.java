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

public class MyStruct implements java.lang.Cloneable,
                                 java.io.Serializable
{
    public int i;

    public int j;

    public MyStruct()
    {
    }

    public MyStruct(int i, int j)
    {
        this.i = i;
        this.j = j;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        MyStruct r = null;
        if(rhs instanceof MyStruct)
        {
            r = (MyStruct)rhs;
        }

        if(r != null)
        {
            if(this.i != r.i)
            {
                return false;
            }
            if(this.j != r.j)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::MyStruct");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, i);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, j);
        return h_;
    }

    public MyStruct clone()
    {
        MyStruct c = null;
        try
        {
            c = (MyStruct)super.clone();
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
        ostr.writeInt(this.j);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.i = istr.readInt();
        this.j = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, MyStruct v)
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

    static public MyStruct ice_read(com.zeroc.Ice.InputStream istr)
    {
        MyStruct v = new MyStruct();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<MyStruct> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, MyStruct v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(8);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<MyStruct> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(MyStruct.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final MyStruct _nullMarshalValue = new MyStruct();

    /** @hidden */
    public static final long serialVersionUID = -7866489620948574307L;
}
