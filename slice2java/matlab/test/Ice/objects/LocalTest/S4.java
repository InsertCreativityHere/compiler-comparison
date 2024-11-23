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

public class S4 implements java.lang.Cloneable,
                           java.io.Serializable
{
    public S1[] s1seq;

    public S4()
    {
    }

    public S4(S1[] s1seq)
    {
        this.s1seq = s1seq;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        S4 r = null;
        if(rhs instanceof S4)
        {
            r = (S4)rhs;
        }

        if(r != null)
        {
            if(!java.util.Arrays.equals(this.s1seq, r.s1seq))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::LocalTest::S4");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, s1seq);
        return h_;
    }

    public S4 clone()
    {
        S4 c = null;
        try
        {
            c = (S4)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        S1SeqHelper.write(ostr, this.s1seq);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.s1seq = S1SeqHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, S4 v)
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

    static public S4 ice_read(com.zeroc.Ice.InputStream istr)
    {
        S4 v = new S4();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<S4> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, S4 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<S4> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(S4.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final S4 _nullMarshalValue = new S4();

    /** @hidden */
    private static final long serialVersionUID = -2752858997700445725L;
}
