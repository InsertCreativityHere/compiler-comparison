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

public class SmallStruct implements java.lang.Cloneable,
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

    public MyEnum e;

    public MyInterfacePrx p;

    public SmallStruct()
    {
        this.str = "";
        this.e = MyEnum.enum1;
    }

    public SmallStruct(boolean bo, byte by, short sh, int i, long l, float f, double d, String str, MyEnum e, MyInterfacePrx p)
    {
        this.bo = bo;
        this.by = by;
        this.sh = sh;
        this.i = i;
        this.l = l;
        this.f = f;
        this.d = d;
        this.str = str;
        this.e = e;
        this.p = p;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        SmallStruct r = null;
        if(rhs instanceof SmallStruct)
        {
            r = (SmallStruct)rhs;
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
            if(this.e != r.e)
            {
                if(this.e == null || r.e == null || !this.e.equals(r.e))
                {
                    return false;
                }
            }
            if(this.p != r.p)
            {
                if(this.p == null || r.p == null || !this.p.equals(r.p))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::SmallStruct");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, bo);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, by);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, sh);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, i);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, l);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, f);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, d);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, str);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, e);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, p);
        return h_;
    }

    public SmallStruct clone()
    {
        SmallStruct c = null;
        try
        {
            c = (SmallStruct)super.clone();
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
        MyEnum.ice_write(ostr, this.e);
        ostr.writeProxy(this.p);
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
        this.e = MyEnum.ice_read(istr);
        this.p = MyInterfacePrx.uncheckedCast(istr.readProxy());
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, SmallStruct v)
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

    static public SmallStruct ice_read(com.zeroc.Ice.InputStream istr)
    {
        SmallStruct v = new SmallStruct();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<SmallStruct> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, SmallStruct v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<SmallStruct> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(SmallStruct.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final SmallStruct _nullMarshalValue = new SmallStruct();

    /** @hidden */
    public static final long serialVersionUID = -7662237873301398723L;
}
