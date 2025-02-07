// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'LocalTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package LocalTest;

public class S8 implements java.lang.Cloneable,
                           java.io.Serializable
{
    public S1[][] s1seqseq;

    public S8()
    {
    }

    public S8(S1[][] s1seqseq)
    {
        this.s1seqseq = s1seqseq;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        S8 r = null;
        if(rhs instanceof S8)
        {
            r = (S8)rhs;
        }

        if(r != null)
        {
            if(!java.util.Arrays.equals(this.s1seqseq, r.s1seqseq))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::LocalTest::S8");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, s1seqseq);
        return h_;
    }

    public S8 clone()
    {
        S8 c = null;
        try
        {
            c = (S8)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        S1SeqSeqHelper.write(ostr, this.s1seqseq);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.s1seqseq = S1SeqSeqHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, S8 v)
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

    static public S8 ice_read(com.zeroc.Ice.InputStream istr)
    {
        S8 v = new S8();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<S8> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, S8 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<S8> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(S8.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final S8 _nullMarshalValue = new S8();

    /** @hidden */
    private static final long serialVersionUID = -5184084445714378089L;
}
