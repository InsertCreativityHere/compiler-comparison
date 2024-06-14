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

public class S5 implements java.lang.Cloneable,
                           java.io.Serializable
{
    public java.util.Map<java.lang.Integer, C1> c1dict;

    public S5()
    {
    }

    public S5(java.util.Map<java.lang.Integer, C1> c1dict)
    {
        this.c1dict = c1dict;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        S5 r = null;
        if(rhs instanceof S5)
        {
            r = (S5)rhs;
        }

        if(r != null)
        {
            if(this.c1dict != r.c1dict)
            {
                if(this.c1dict == null || r.c1dict == null || !this.c1dict.equals(r.c1dict))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::LocalTest::S5");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, c1dict);
        return h_;
    }

    public S5 clone()
    {
        S5 c = null;
        try
        {
            c = (S5)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        C1DictHelper.write(ostr, this.c1dict);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.c1dict = C1DictHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, S5 v)
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

    static public S5 ice_read(com.zeroc.Ice.InputStream istr)
    {
        S5 v = new S5();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<S5> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, S5 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<S5> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(S5.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final S5 _nullMarshalValue = new S5();

    /** @hidden */
    public static final long serialVersionUID = -6601221286359500343L;
}
