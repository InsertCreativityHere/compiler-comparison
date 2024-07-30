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

public class S1 implements java.lang.Cloneable,
                           java.io.Serializable
{
    public C1 c1;

    public S1()
    {
    }

    public S1(C1 c1)
    {
        this.c1 = c1;
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
            if(this.c1 != r.c1)
            {
                if(this.c1 == null || r.c1 == null || !this.c1.equals(r.c1))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::LocalTest::S1");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, c1);
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
        ostr.writeValue(this.c1);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        istr.readValue(v -> c1 = v, C1.class);
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
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<S1> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(S1.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final S1 _nullMarshalValue = new S1();

    /** @hidden */
    private static final long serialVersionUID = -5145825108005986203L;
}
