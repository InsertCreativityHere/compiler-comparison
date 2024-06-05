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

public class S2 implements java.lang.Cloneable,
                           java.io.Serializable
{
    public S1 s1;

    public S2()
    {
        this.s1 = new S1();
    }

    public S2(S1 s1)
    {
        this.s1 = s1;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        S2 r = null;
        if(rhs instanceof S2)
        {
            r = (S2)rhs;
        }

        if(r != null)
        {
            if(this.s1 != r.s1)
            {
                if(this.s1 == null || r.s1 == null || !this.s1.equals(r.s1))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::LocalTest::S2");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, s1);
        return h_;
    }

    public S2 clone()
    {
        S2 c = null;
        try
        {
            c = (S2)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        S1.ice_write(ostr, this.s1);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.s1 = S1.ice_read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, S2 v)
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

    static public S2 ice_read(com.zeroc.Ice.InputStream istr)
    {
        S2 v = new S2();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<S2> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, S2 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<S2> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(S2.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final S2 _nullMarshalValue = new S2();

    /** @hidden */
    public static final long serialVersionUID = 3347993851439413413L;
}
