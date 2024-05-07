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

public class S1 implements java.lang.Cloneable,
                           java.io.Serializable
{
    public int id;

    public S1()
    {
    }

    public S1(int id)
    {
        this.id = id;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        S1 r = null;
        if(rhs instanceof S1)
        {
            r = (S1)rhs;
        }

        if(r != null)
        {
            if(this.id != r.id)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::S1");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, id);
        return h_;
    }

    public S1 clone()
    {
        S1 c = null;
        try
        {
            c = (S1)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeInt(this.id);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.id = istr.readInt();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, S1 v)
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

    static public S1 ice_read(com.zeroc.Ice.InputStream istr)
    {
        S1 v = new S1();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<S1> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, S1 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(4);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<S1> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(S1.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final S1 _nullMarshalValue = new S1();

    /** @hidden */
    public static final long serialVersionUID = 7211335892260197629L;
}
