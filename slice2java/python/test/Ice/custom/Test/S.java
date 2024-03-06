//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
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

public class S implements java.lang.Cloneable,
                          java.io.Serializable
{
    public byte[] b1;

    public byte[] b2;

    public byte[] b3;

    public byte[] b4;

    public String[] s1;

    public String[] s2;

    public String[] s3;

    public String[] s4;

    public S()
    {
    }

    public S(byte[] b1, byte[] b2, byte[] b3, byte[] b4, String[] s1, String[] s2, String[] s3, String[] s4)
    {
        this.b1 = b1;
        this.b2 = b2;
        this.b3 = b3;
        this.b4 = b4;
        this.s1 = s1;
        this.s2 = s2;
        this.s3 = s3;
        this.s4 = s4;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        S r = null;
        if(rhs instanceof S)
        {
            r = (S)rhs;
        }

        if(r != null)
        {
            if(!java.util.Arrays.equals(this.b1, r.b1))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.b2, r.b2))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.b3, r.b3))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.b4, r.b4))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.s1, r.s1))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.s2, r.s2))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.s3, r.s3))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.s4, r.s4))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::S");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, b1);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, b2);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, b3);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, b4);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, s1);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, s2);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, s3);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, s4);
        return h_;
    }

    public S clone()
    {
        S c = null;
        try
        {
            c = (S)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeByteSeq(this.b1);
        ostr.writeByteSeq(this.b2);
        ostr.writeByteSeq(this.b3);
        ostr.writeByteSeq(this.b4);
        ostr.writeStringSeq(this.s1);
        ostr.writeStringSeq(this.s2);
        ostr.writeStringSeq(this.s3);
        ostr.writeStringSeq(this.s4);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.b1 = istr.readByteSeq();
        this.b2 = istr.readByteSeq();
        this.b3 = istr.readByteSeq();
        this.b4 = istr.readByteSeq();
        this.s1 = istr.readStringSeq();
        this.s2 = istr.readStringSeq();
        this.s3 = istr.readStringSeq();
        this.s4 = istr.readStringSeq();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, S v)
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

    static public S ice_read(com.zeroc.Ice.InputStream istr)
    {
        S v = new S();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<S> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, S v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<S> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(S.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final S _nullMarshalValue = new S();

    /** @hidden */
    public static final long serialVersionUID = -1079768618161821202L;
}
