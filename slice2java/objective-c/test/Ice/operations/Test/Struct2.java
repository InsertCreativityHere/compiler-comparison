//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `OperationsTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class Struct2 implements java.lang.Cloneable,
                                java.io.Serializable
{
    public boolean b;

    public int i;

    public float f;

    public double d;

    public byte by;

    public short sh;

    public long l;

    public Structure[] ss;

    public java.util.Map<java.lang.Byte, java.lang.Boolean> dict;

    public MyEnum[][] seq;

    public Struct2()
    {
    }

    public Struct2(boolean b, int i, float f, double d, byte by, short sh, long l, Structure[] ss, java.util.Map<java.lang.Byte, java.lang.Boolean> dict, MyEnum[][] seq)
    {
        this.b = b;
        this.i = i;
        this.f = f;
        this.d = d;
        this.by = by;
        this.sh = sh;
        this.l = l;
        this.ss = ss;
        this.dict = dict;
        this.seq = seq;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        Struct2 r = null;
        if(rhs instanceof Struct2)
        {
            r = (Struct2)rhs;
        }

        if(r != null)
        {
            if(this.b != r.b)
            {
                return false;
            }
            if(this.i != r.i)
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
            if(this.by != r.by)
            {
                return false;
            }
            if(this.sh != r.sh)
            {
                return false;
            }
            if(this.l != r.l)
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.ss, r.ss))
            {
                return false;
            }
            if(this.dict != r.dict)
            {
                if(this.dict == null || r.dict == null || !this.dict.equals(r.dict))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.seq, r.seq))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::Struct2");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, b);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, i);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, f);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, d);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, by);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, sh);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, l);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, ss);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, dict);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, seq);
        return h_;
    }

    public Struct2 clone()
    {
        Struct2 c = null;
        try
        {
            c = (Struct2)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeBool(this.b);
        ostr.writeInt(this.i);
        ostr.writeFloat(this.f);
        ostr.writeDouble(this.d);
        ostr.writeByte(this.by);
        ostr.writeShort(this.sh);
        ostr.writeLong(this.l);
        StructSHelper.write(ostr, this.ss);
        ByteBoolDHelper.write(ostr, this.dict);
        MyEnumSSHelper.write(ostr, this.seq);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.b = istr.readBool();
        this.i = istr.readInt();
        this.f = istr.readFloat();
        this.d = istr.readDouble();
        this.by = istr.readByte();
        this.sh = istr.readShort();
        this.l = istr.readLong();
        this.ss = StructSHelper.read(istr);
        this.dict = ByteBoolDHelper.read(istr);
        this.seq = MyEnumSSHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, Struct2 v)
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

    static public Struct2 ice_read(com.zeroc.Ice.InputStream istr)
    {
        Struct2 v = new Struct2();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Struct2> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Struct2 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<Struct2> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(Struct2.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final Struct2 _nullMarshalValue = new Struct2();

    /** @hidden */
    public static final long serialVersionUID = -2426673675939096614L;
}
