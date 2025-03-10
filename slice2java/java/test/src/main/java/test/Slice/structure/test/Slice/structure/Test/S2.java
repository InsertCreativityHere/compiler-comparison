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

package test.Slice.structure.Test;

public class S2 implements java.lang.Cloneable,
                           java.io.Serializable
{
    public boolean bo;

    public byte by;

    public short sh;

    public int i;

    public long l;

    public float f;

    public double d;

    public String str;

    public String[] ss;

    public java.util.List<java.lang.Integer> il;

    public java.util.Map<java.lang.String, java.lang.String> sd;

    public S1 s;

    public C cls;

    public com.zeroc.Ice.ObjectPrx prx;

    public S2()
    {
        this.str = "";
        this.s = new S1();
    }

    public S2(boolean bo, byte by, short sh, int i, long l, float f, double d, String str, String[] ss, java.util.List<java.lang.Integer> il, java.util.Map<java.lang.String, java.lang.String> sd, S1 s, C cls, com.zeroc.Ice.ObjectPrx prx)
    {
        this.bo = bo;
        this.by = by;
        this.sh = sh;
        this.i = i;
        this.l = l;
        this.f = f;
        this.d = d;
        this.str = str;
        this.ss = ss;
        this.il = il;
        this.sd = sd;
        this.s = s;
        this.cls = cls;
        this.prx = prx;
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
            if(!java.util.Arrays.equals(this.ss, r.ss))
            {
                return false;
            }
            if(this.il != r.il)
            {
                if(this.il == null || r.il == null || !this.il.equals(r.il))
                {
                    return false;
                }
            }
            if(this.sd != r.sd)
            {
                if(this.sd == null || r.sd == null || !this.sd.equals(r.sd))
                {
                    return false;
                }
            }
            if(this.s != r.s)
            {
                if(this.s == null || r.s == null || !this.s.equals(r.s))
                {
                    return false;
                }
            }
            if(this.cls != r.cls)
            {
                if(this.cls == null || r.cls == null || !this.cls.equals(r.cls))
                {
                    return false;
                }
            }
            if(this.prx != r.prx)
            {
                if(this.prx == null || r.prx == null || !this.prx.equals(r.prx))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::Test::S2");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, bo);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, by);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, sh);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, i);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, l);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, f);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, d);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, str);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, ss);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, il);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, sd);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, s);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, cls);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, prx);
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
        ostr.writeFloat(this.f);
        ostr.writeDouble(this.d);
        ostr.writeString(this.str);
        ostr.writeStringSeq(this.ss);
        IntListHelper.write(ostr, this.il);
        StringDictHelper.write(ostr, this.sd);
        S1.ice_write(ostr, this.s);
        ostr.writeValue(this.cls);
        ostr.writeProxy(this.prx);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.bo = istr.readBool();
        this.by = istr.readByte();
        this.sh = istr.readShort();
        this.i = istr.readInt();
        this.l = istr.readLong();
        this.f = istr.readFloat();
        this.d = istr.readDouble();
        this.str = istr.readString();
        this.ss = istr.readStringSeq();
        this.il = IntListHelper.read(istr);
        this.sd = StringDictHelper.read(istr);
        this.s = S1.ice_read(istr);
        istr.readValue(v -> cls = v, C.class);
        this.prx = istr.readProxy();
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
    private static final long serialVersionUID = 5528955704602520142L;
}
