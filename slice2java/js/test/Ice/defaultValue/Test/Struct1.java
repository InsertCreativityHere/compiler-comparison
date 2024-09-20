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

public class Struct1 implements java.lang.Cloneable,
                                java.io.Serializable
{
    public boolean boolFalse;

    public boolean boolTrue;

    public byte b;

    public short s;

    public int i;

    public long l;

    public float f;

    public double d;

    public String str;

    public Color c1;

    public Color c2;

    public Color c3;

    public Test.Nested.Color nc1;

    public Test.Nested.Color nc2;

    public Test.Nested.Color nc3;

    public String noDefault;

    public int zeroI;

    public long zeroL;

    public float zeroF;

    public float zeroDotF;

    public double zeroD;

    public double zeroDotD;

    public Struct1()
    {
        this.boolFalse = false;
        this.boolTrue = true;
        this.b = -2;
        this.s = 16000;
        this.i = 3;
        this.l = 4L;
        this.f = 5.1F;
        this.d = 6.2;
        this.str = "foo \\ \"bar\n \r\n\t\u000b\f\u0007\b?";
        this.c1 = Test.Color.red;
        this.c2 = Test.Color.green;
        this.c3 = Test.Color.blue;
        this.nc1 = Test.Nested.Color.red;
        this.nc2 = Test.Nested.Color.green;
        this.nc3 = Test.Nested.Color.blue;
        this.noDefault = "";
        this.zeroI = 0;
        this.zeroL = 0L;
        this.zeroF = 0F;
        this.zeroDotF = 0F;
        this.zeroD = 0;
        this.zeroDotD = 0;
    }

    public Struct1(boolean boolFalse, boolean boolTrue, byte b, short s, int i, long l, float f, double d, String str, Color c1, Color c2, Color c3, Test.Nested.Color nc1, Test.Nested.Color nc2, Test.Nested.Color nc3, String noDefault, int zeroI, long zeroL, float zeroF, float zeroDotF, double zeroD, double zeroDotD)
    {
        this.boolFalse = boolFalse;
        this.boolTrue = boolTrue;
        this.b = b;
        this.s = s;
        this.i = i;
        this.l = l;
        this.f = f;
        this.d = d;
        this.str = str;
        this.c1 = c1;
        this.c2 = c2;
        this.c3 = c3;
        this.nc1 = nc1;
        this.nc2 = nc2;
        this.nc3 = nc3;
        this.noDefault = noDefault;
        this.zeroI = zeroI;
        this.zeroL = zeroL;
        this.zeroF = zeroF;
        this.zeroDotF = zeroDotF;
        this.zeroD = zeroD;
        this.zeroDotD = zeroDotD;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        Struct1 r = null;
        if(rhs instanceof Struct1)
        {
            r = (Struct1)rhs;
        }

        if(r != null)
        {
            if(this.boolFalse != r.boolFalse)
            {
                return false;
            }
            if(this.boolTrue != r.boolTrue)
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
            if(this.c2 != r.c2)
            {
                if(this.c2 == null || r.c2 == null || !this.c2.equals(r.c2))
                {
                    return false;
                }
            }
            if(this.c3 != r.c3)
            {
                if(this.c3 == null || r.c3 == null || !this.c3.equals(r.c3))
                {
                    return false;
                }
            }
            if(this.nc1 != r.nc1)
            {
                if(this.nc1 == null || r.nc1 == null || !this.nc1.equals(r.nc1))
                {
                    return false;
                }
            }
            if(this.nc2 != r.nc2)
            {
                if(this.nc2 == null || r.nc2 == null || !this.nc2.equals(r.nc2))
                {
                    return false;
                }
            }
            if(this.nc3 != r.nc3)
            {
                if(this.nc3 == null || r.nc3 == null || !this.nc3.equals(r.nc3))
                {
                    return false;
                }
            }
            if(this.noDefault != r.noDefault)
            {
                if(this.noDefault == null || r.noDefault == null || !this.noDefault.equals(r.noDefault))
                {
                    return false;
                }
            }
            if(this.zeroI != r.zeroI)
            {
                return false;
            }
            if(this.zeroL != r.zeroL)
            {
                return false;
            }
            if(this.zeroF != r.zeroF)
            {
                return false;
            }
            if(this.zeroDotF != r.zeroDotF)
            {
                return false;
            }
            if(this.zeroD != r.zeroD)
            {
                return false;
            }
            if(this.zeroDotD != r.zeroDotD)
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::Struct1");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, boolFalse);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, boolTrue);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, b);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, s);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, i);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, l);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, f);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, d);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, str);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, c1);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, c2);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, c3);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, nc1);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, nc2);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, nc3);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, noDefault);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, zeroI);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, zeroL);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, zeroF);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, zeroDotF);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, zeroD);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, zeroDotD);
        return h_;
    }

    public Struct1 clone()
    {
        Struct1 c = null;
        try
        {
            c = (Struct1)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeBool(this.boolFalse);
        ostr.writeBool(this.boolTrue);
        ostr.writeByte(this.b);
        ostr.writeShort(this.s);
        ostr.writeInt(this.i);
        ostr.writeLong(this.l);
        ostr.writeFloat(this.f);
        ostr.writeDouble(this.d);
        ostr.writeString(this.str);
        Color.ice_write(ostr, this.c1);
        Color.ice_write(ostr, this.c2);
        Color.ice_write(ostr, this.c3);
        Test.Nested.Color.ice_write(ostr, this.nc1);
        Test.Nested.Color.ice_write(ostr, this.nc2);
        Test.Nested.Color.ice_write(ostr, this.nc3);
        ostr.writeString(this.noDefault);
        ostr.writeInt(this.zeroI);
        ostr.writeLong(this.zeroL);
        ostr.writeFloat(this.zeroF);
        ostr.writeFloat(this.zeroDotF);
        ostr.writeDouble(this.zeroD);
        ostr.writeDouble(this.zeroDotD);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.boolFalse = istr.readBool();
        this.boolTrue = istr.readBool();
        this.b = istr.readByte();
        this.s = istr.readShort();
        this.i = istr.readInt();
        this.l = istr.readLong();
        this.f = istr.readFloat();
        this.d = istr.readDouble();
        this.str = istr.readString();
        this.c1 = Color.ice_read(istr);
        this.c2 = Color.ice_read(istr);
        this.c3 = Color.ice_read(istr);
        this.nc1 = Test.Nested.Color.ice_read(istr);
        this.nc2 = Test.Nested.Color.ice_read(istr);
        this.nc3 = Test.Nested.Color.ice_read(istr);
        this.noDefault = istr.readString();
        this.zeroI = istr.readInt();
        this.zeroL = istr.readLong();
        this.zeroF = istr.readFloat();
        this.zeroDotF = istr.readFloat();
        this.zeroD = istr.readDouble();
        this.zeroDotD = istr.readDouble();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, Struct1 v)
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

    static public Struct1 ice_read(com.zeroc.Ice.InputStream istr)
    {
        Struct1 v = new Struct1();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Struct1> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Struct1 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<Struct1> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(Struct1.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final Struct1 _nullMarshalValue = new Struct1();

    /** @hidden */
    private static final long serialVersionUID = -4955588293875572334L;
}
