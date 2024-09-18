//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `LocalTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package LocalTest;

public class StructKey implements java.lang.Cloneable,
                                  java.io.Serializable
{
    public int i;

    public int j;

    public StructKey()
    {
    }

    public StructKey(int i, int j)
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
        StructKey r = null;
        if(rhs instanceof StructKey)
        {
            r = (StructKey)rhs;
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::LocalTest::StructKey");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, i);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, j);
        return h_;
    }

    public StructKey clone()
    {
        StructKey c = null;
        try
        {
            c = (StructKey)super.clone();
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

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, StructKey v)
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

    static public StructKey ice_read(com.zeroc.Ice.InputStream istr)
    {
        StructKey v = new StructKey();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<StructKey> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, StructKey v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(8);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<StructKey> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(StructKey.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final StructKey _nullMarshalValue = new StructKey();

    /** @hidden */
    private static final long serialVersionUID = 2486899690825611379L;
}
