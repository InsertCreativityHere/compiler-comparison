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

public class SD implements java.lang.Cloneable,
                           java.io.Serializable
{
    public int i;

    public SD()
    {
        this.i = 1;
    }

    public SD(int i)
    {
        this.i = i;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        SD r = null;
        if(rhs instanceof SD)
        {
            r = (SD)rhs;
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::SD");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, i);
        return h_;
    }

    public SD clone()
    {
        SD c = null;
        try
        {
            c = (SD)super.clone();
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

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, SD v)
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

    static public SD ice_read(com.zeroc.Ice.InputStream istr)
    {
        SD v = new SD();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<SD> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, SD v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ostr.writeSize(4);
            ice_write(ostr, v);
        }
    }

    static public java.util.Optional<SD> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr.skipSize();
            return java.util.Optional.of(SD.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final SD _nullMarshalValue = new SD();

    /** @hidden */
    public static final long serialVersionUID = 9219737455245742843L;
}
