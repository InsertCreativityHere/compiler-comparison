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

public class S7 implements java.lang.Cloneable,
                           java.io.Serializable
{
    public C1[][] c1seqseq;

    public S7()
    {
    }

    public S7(C1[][] c1seqseq)
    {
        this.c1seqseq = c1seqseq;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        S7 r = null;
        if(rhs instanceof S7)
        {
            r = (S7)rhs;
        }

        if(r != null)
        {
            if(!java.util.Arrays.equals(this.c1seqseq, r.c1seqseq))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::LocalTest::S7");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, c1seqseq);
        return h_;
    }

    public S7 clone()
    {
        S7 c = null;
        try
        {
            c = (S7)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        C1SeqSeqHelper.write(ostr, this.c1seqseq);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.c1seqseq = C1SeqSeqHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, S7 v)
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

    static public S7 ice_read(com.zeroc.Ice.InputStream istr)
    {
        S7 v = new S7();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<S7> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, S7 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<S7> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(S7.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final S7 _nullMarshalValue = new S7();

    /** @hidden */
    public static final long serialVersionUID = -3218143833569712705L;
}
