//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServerPrivateAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.slicing.objects.serverAMD.Test;

public class SS3 implements java.lang.Cloneable,
                            java.io.Serializable
{
    public SS1 c1;

    public SS2 c2;

    public SS3()
    {
    }

    public SS3(SS1 c1, SS2 c2)
    {
        this.c1 = c1;
        this.c2 = c2;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        SS3 r = null;
        if(rhs instanceof SS3)
        {
            r = (SS3)rhs;
        }

        if(r != null)
        {
            if(this.c1 != r.c1)
            {
                if(this.c1 == null || r.c1 == null || !this.c1.equals(r.c1))
                {
                    return false;
                }
            }
            if(this.c2 != r.c2)
            {
                if(this.c2 == null || r.c2 == null || !this.c2.equals(r.c2))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::SS3");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, c1);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, c2);
        return h_;
    }

    public SS3 clone()
    {
        SS3 c = null;
        try
        {
            c = (SS3)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeValue(this.c1);
        ostr.writeValue(this.c2);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        istr.readValue(v -> c1 = v, SS1.class);
        istr.readValue(v -> c2 = v, SS2.class);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, SS3 v)
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

    static public SS3 ice_read(com.zeroc.Ice.InputStream istr)
    {
        SS3 v = new SS3();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<SS3> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, SS3 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<SS3> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(SS3.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final SS3 _nullMarshalValue = new SS3();

    /** @hidden */
    public static final long serialVersionUID = -3572030971093698232L;
}
