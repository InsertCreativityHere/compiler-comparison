// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package test.Ice.defaultValue.Test;

public class StructNoDefaults implements java.lang.Cloneable,
                                         java.io.Serializable
{
    public boolean bo;

    public byte b;

    public short s;

    public int i;

    public long l;

    public float f;

    public double d;

    public String str;

    public Color c1;

    public byte[] bs;

    public int[] is;

    public InnerStruct st;

    public java.util.Map<java.lang.Integer, java.lang.String> dict;

    public StructNoDefaults()
    {
        this.str = "";
        this.c1 = Color.red;
        this.st = new InnerStruct();
    }

    public StructNoDefaults(boolean bo, byte b, short s, int i, long l, float f, double d, String str, Color c1, byte[] bs, int[] is, InnerStruct st, java.util.Map<java.lang.Integer, java.lang.String> dict)
    {
        this.bo = bo;
        this.b = b;
        this.s = s;
        this.i = i;
        this.l = l;
        this.f = f;
        this.d = d;
        this.str = str;
        this.c1 = c1;
        this.bs = bs;
        this.is = is;
        this.st = st;
        this.dict = dict;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        StructNoDefaults r = null;
        if(rhs instanceof StructNoDefaults)
        {
            r = (StructNoDefaults)rhs;
        }

        if(r != null)
        {
            if(this.bo != r.bo)
            {
                return false;
            }
            if(this.b != r.b)
            {
                return false;
            }
            if(this.s != r.s)
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
            if(this.f != r.f)
            {
                return false;
            }
            if(this.d != r.d)
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
            if(this.c1 != r.c1)
            {
                if(this.c1 == null || r.c1 == null || !this.c1.equals(r.c1))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.bs, r.bs))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.is, r.is))
            {
                return false;
            }
            if(this.st != r.st)
            {
                if(this.st == null || r.st == null || !this.st.equals(r.st))
                {
                    return false;
                }
            }
            if(this.dict != r.dict)
            {
                if(this.dict == null || r.dict == null || !this.dict.equals(r.dict))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::Test::StructNoDefaults");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, bo);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, b);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, s);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, i);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, l);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, f);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, d);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, str);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, c1);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, bs);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, is);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, st);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, dict);
        return h_;
    }

    public StructNoDefaults clone()
    {
        StructNoDefaults c = null;
        try
        {
            c = (StructNoDefaults)super.clone();
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
        ostr.writeByte(this.b);
        ostr.writeShort(this.s);
        ostr.writeInt(this.i);
        ostr.writeLong(this.l);
        ostr.writeFloat(this.f);
        ostr.writeDouble(this.d);
        ostr.writeString(this.str);
        Color.ice_write(ostr, this.c1);
        ostr.writeByteSeq(this.bs);
        ostr.writeIntSeq(this.is);
        InnerStruct.ice_write(ostr, this.st);
        IntStringDictHelper.write(ostr, this.dict);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.bo = istr.readBool();
        this.b = istr.readByte();
        this.s = istr.readShort();
        this.i = istr.readInt();
        this.l = istr.readLong();
        this.f = istr.readFloat();
        this.d = istr.readDouble();
        this.str = istr.readString();
        this.c1 = Color.ice_read(istr);
        this.bs = istr.readByteSeq();
        this.is = istr.readIntSeq();
        this.st = InnerStruct.ice_read(istr);
        this.dict = IntStringDictHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, StructNoDefaults v)
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

    static public StructNoDefaults ice_read(com.zeroc.Ice.InputStream istr)
    {
        StructNoDefaults v = new StructNoDefaults();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<StructNoDefaults> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, StructNoDefaults v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<StructNoDefaults> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(StructNoDefaults.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final StructNoDefaults _nullMarshalValue = new StructNoDefaults();

    /** @hidden */
    private static final long serialVersionUID = 6539776979125847041L;
}
