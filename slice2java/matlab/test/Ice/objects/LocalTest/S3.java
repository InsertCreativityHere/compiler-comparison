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

public class S3 implements java.lang.Cloneable,
                           java.io.Serializable
{
    public C1[] c1seq;

    public S3()
    {
    }

    public S3(C1[] c1seq)
    {
        this.c1seq = c1seq;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        S3 r = null;
        if(rhs instanceof S3)
        {
            r = (S3)rhs;
        }

        if(r != null)
        {
            if(!java.util.Arrays.equals(this.c1seq, r.c1seq))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::LocalTest::S3");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, c1seq);
        return h_;
    }

    public S3 clone()
    {
        S3 c = null;
        try
        {
            c = (S3)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        C1SeqHelper.write(ostr, this.c1seq);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.c1seq = C1SeqHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, S3 v)
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

    static public S3 ice_read(com.zeroc.Ice.InputStream istr)
    {
        S3 v = new S3();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<S3> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, S3 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<S3> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(S3.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final S3 _nullMarshalValue = new S3();

    /** @hidden */
    private static final long serialVersionUID = -9162151403305733338L;
}
