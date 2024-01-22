//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
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

public class S2 implements java.lang.Cloneable,
                           java.io.Serializable
{
    public E1 E1;

    public S1 S1;

    public C1 C1;

    public S1[] S1Seq;

    public java.util.Map<java.lang.String, S1> S1Map;

    public S2()
    {
        this.E1 = E1.v1;
        this.S1 = new S1();
    }

    public S2(E1 E1, S1 S1, C1 C1, S1[] S1Seq, java.util.Map<java.lang.String, S1> S1Map)
    {
        this.E1 = E1;
        this.S1 = S1;
        this.C1 = C1;
        this.S1Seq = S1Seq;
        this.S1Map = S1Map;
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
            if(this.E1 != r.E1)
            {
                if(this.E1 == null || r.E1 == null || !this.E1.equals(r.E1))
                {
                    return false;
                }
            }
            if(this.S1 != r.S1)
            {
                if(this.S1 == null || r.S1 == null || !this.S1.equals(r.S1))
                {
                    return false;
                }
            }
            if(this.C1 != r.C1)
            {
                if(this.C1 == null || r.C1 == null || !this.C1.equals(r.C1))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.S1Seq, r.S1Seq))
            {
                return false;
            }
            if(this.S1Map != r.S1Map)
            {
                if(this.S1Map == null || r.S1Map == null || !this.S1Map.equals(r.S1Map))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::S2");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, E1);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, S1);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, C1);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, S1Seq);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, S1Map);
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
        E1.ice_write(ostr, this.E1);
        S1.ice_write(ostr, this.S1);
        ostr.writeValue(this.C1);
        S1SeqHelper.write(ostr, this.S1Seq);
        S1MapHelper.write(ostr, this.S1Map);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.E1 = E1.ice_read(istr);
        this.S1 = S1.ice_read(istr);
        istr.readValue(v -> C1 = v, C1.class);
        this.S1Seq = S1SeqHelper.read(istr);
        this.S1Map = S1MapHelper.read(istr);
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
    public static final long serialVersionUID = 3342625418823404280L;
}
