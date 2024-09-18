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

public class VarStruct implements java.lang.Cloneable,
                                  java.io.Serializable
{
    public String m;

    public VarStruct()
    {
        this.m = "";
    }

    public VarStruct(String m)
    {
        this.m = m;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        VarStruct r = null;
        if(rhs instanceof VarStruct)
        {
            r = (VarStruct)rhs;
        }

        if(r != null)
        {
            if(this.m != r.m)
            {
                if(this.m == null || r.m == null || !this.m.equals(r.m))
                {
                    return false;
                }
            }

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::VarStruct");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, m);
        return h_;
    }

    public VarStruct clone()
    {
        VarStruct c = null;
        try
        {
            c = (VarStruct)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.m);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.m = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, VarStruct v)
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

    static public VarStruct ice_read(com.zeroc.Ice.InputStream istr)
    {
        VarStruct v = new VarStruct();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<VarStruct> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, VarStruct v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<VarStruct> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(VarStruct.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final VarStruct _nullMarshalValue = new VarStruct();

    /** @hidden */
    private static final long serialVersionUID = -1912284193184695946L;
}
