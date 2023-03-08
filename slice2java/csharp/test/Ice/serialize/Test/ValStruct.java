//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
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

public class ValStruct implements java.lang.Cloneable,
                                  java.io.Serializable
{
    public boolean bo;

    public byte by;

    public short sh;

    public int i;

    public long l;

    public MyEnum e;

    public ValStruct()
    {
        this.e = MyEnum.enum1;
    }

    public ValStruct(boolean bo, byte by, short sh, int i, long l, MyEnum e)
    {
        this.bo = bo;
        this.by = by;
        this.sh = sh;
        this.i = i;
        this.l = l;
        this.e = e;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ValStruct r = null;
        if(rhs instanceof ValStruct)
        {
            r = (ValStruct)rhs;
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
            if(this.e != r.e)
            {
                if(this.e == null || r.e == null || !this.e.equals(r.e))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::ValStruct");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, bo);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, by);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, sh);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, i);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, l);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, e);
        return h_;
    }

    public ValStruct clone()
    {
        ValStruct c = null;
        try
        {
            c = (ValStruct)super.clone();
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
        MyEnum.ice_write(ostr, this.e);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.bo = istr.readBool();
        this.by = istr.readByte();
        this.sh = istr.readShort();
        this.i = istr.readInt();
        this.l = istr.readLong();
        this.e = MyEnum.ice_read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ValStruct v)
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

    static public ValStruct ice_read(com.zeroc.Ice.InputStream istr)
    {
        ValStruct v = new ValStruct();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ValStruct> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ValStruct v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ValStruct> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ValStruct.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ValStruct _nullMarshalValue = new ValStruct();

    /** @hidden */
    public static final long serialVersionUID = -8598546517858241668L;
}
