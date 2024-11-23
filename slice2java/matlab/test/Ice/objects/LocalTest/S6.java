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

public class S6 implements java.lang.Cloneable,
                           java.io.Serializable
{
    public java.util.Map<java.lang.Integer, S1> s1dict;

    public S6()
    {
    }

    public S6(java.util.Map<java.lang.Integer, S1> s1dict)
    {
        this.s1dict = s1dict;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        S6 r = null;
        if(rhs instanceof S6)
        {
            r = (S6)rhs;
        }

        if(r != null)
        {
            if(this.s1dict != r.s1dict)
            {
                if(this.s1dict == null || r.s1dict == null || !this.s1dict.equals(r.s1dict))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::LocalTest::S6");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, s1dict);
        return h_;
    }

    public S6 clone()
    {
        S6 c = null;
        try
        {
            c = (S6)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        S1DictHelper.write(ostr, this.s1dict);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.s1dict = S1DictHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, S6 v)
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

    static public S6 ice_read(com.zeroc.Ice.InputStream istr)
    {
        S6 v = new S6();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<S6> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, S6 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<S6> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(S6.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final S6 _nullMarshalValue = new S6();

    /** @hidden */
    private static final long serialVersionUID = 3216397710065367896L;
}
