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

public class S2 implements java.lang.Cloneable,
                           java.io.Serializable
{
    public boolean bo;

    public byte by;

    public short sh;

    public int i;

    public long l;

    public String str;

    public int[] seq;

    public S1 s;

    public S2()
    {
        this.str = "";
        this.s = new S1();
    }

    public S2(boolean bo, byte by, short sh, int i, long l, String str, int[] seq, S1 s)
    {
        this.bo = bo;
        this.by = by;
        this.sh = sh;
        this.i = i;
        this.l = l;
        this.str = str;
        this.seq = seq;
        this.s = s;
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
            if(this.bo != r.bo)
            {
                return false;
            }
            if(this.by != r.by)
            {
                return false;
            }
            if(this.sh != r.sh)
            {
                return false;
            }
            if(this.i != r.i)
            {
                return false;
            }
            if(this.l != r.l)
            {
                return false;
            }
            if(this.str != r.str)
            {
                if(this.str == null || r.str == null || !this.str.equals(r.str))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.seq, r.seq))
            {
                return false;
            }
            if(this.s != r.s)
            {
                if(this.s == null || r.s == null || !this.s.equals(r.s))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, bo);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, by);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, sh);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, i);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, l);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, str);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, seq);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, s);
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
        ostr.writeBool(this.bo);
        ostr.writeByte(this.by);
        ostr.writeShort(this.sh);
        ostr.writeInt(this.i);
        ostr.writeLong(this.l);
        ostr.writeString(this.str);
        ostr.writeIntSeq(this.seq);
        S1.ice_write(ostr, this.s);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.bo = istr.readBool();
        this.by = istr.readByte();
        this.sh = istr.readShort();
        this.i = istr.readInt();
        this.l = istr.readLong();
        this.str = istr.readString();
        this.seq = istr.readIntSeq();
        this.s = S1.ice_read(istr);
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
    public static final long serialVersionUID = 9164973118071503942L;
}
