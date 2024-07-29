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

package test.Ice.stream.Test;

public class OptionalClass extends com.zeroc.Ice.Value
{
    public OptionalClass()
    {
        this.s = new LargeStruct();
        this.enum8 = MyEnum.enum1;
        this.p15 = new Point();
    }

    public OptionalClass(boolean bo, byte by)
    {
        this.bo = bo;
        this.by = by;
        this.s = new LargeStruct();
        this.enum8 = MyEnum.enum1;
        this.p15 = new Point();
    }

    public OptionalClass(boolean bo, byte by, short sh, int i, LargeStruct s, MyEnum[] enumS4, java.util.Map<java.lang.Byte, java.lang.Boolean> byteBoolD6, java.util.Map<java.lang.Short, java.lang.Integer> shortIntD7, MyEnum enum8, int[] intSeq12, byte[] byteSeq13, String[] stringSeq14, Point p15)
    {
        this.bo = bo;
        this.by = by;
        setSh(sh);
        setI(i);
        setS(s);
        setEnumS4(enumS4);
        setByteBoolD6(byteBoolD6);
        setShortIntD7(shortIntD7);
        setEnum8(enum8);
        setIntSeq12(intSeq12);
        setByteSeq13(byteSeq13);
        setStringSeq14(stringSeq14);
        setP15(p15);
    }

    public boolean bo;

    public byte by;

    private short sh;
    private boolean _sh;

    public short getSh()
    {
        if(!_sh)
        {
            throw new java.util.NoSuchElementException("sh is not set");
        }
        return sh;
    }

    public void setSh(short sh)
    {
        _sh = true;
        this.sh = sh;
    }

    public boolean hasSh()
    {
        return _sh;
    }

    public void clearSh()
    {
        _sh = false;
    }

    public void optionalSh(java.util.Optional<java.lang.Short> v)
    {
        if(v == null || !v.isPresent())
        {
            _sh = false;
        }
        else
        {
            _sh = true;
            sh = v.get();
        }
    }

    public java.util.Optional<java.lang.Short> optionalSh()
    {
        if(_sh)
        {
            return java.util.Optional.of(sh);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private int i;
    private boolean _i;

    public int getI()
    {
        if(!_i)
        {
            throw new java.util.NoSuchElementException("i is not set");
        }
        return i;
    }

    public void setI(int i)
    {
        _i = true;
        this.i = i;
    }

    public boolean hasI()
    {
        return _i;
    }

    public void clearI()
    {
        _i = false;
    }

    public void optionalI(java.util.OptionalInt v)
    {
        if(v == null || !v.isPresent())
        {
            _i = false;
        }
        else
        {
            _i = true;
            i = v.getAsInt();
        }
    }

    public java.util.OptionalInt optionalI()
    {
        if(_i)
        {
            return java.util.OptionalInt.of(i);
        }
        else
        {
            return java.util.OptionalInt.empty();
        }
    }

    private LargeStruct s;
    private boolean _s;

    public LargeStruct getS()
    {
        if(!_s)
        {
            throw new java.util.NoSuchElementException("s is not set");
        }
        return s;
    }

    public void setS(LargeStruct s)
    {
        _s = true;
        this.s = s;
    }

    public boolean hasS()
    {
        return _s;
    }

    public void clearS()
    {
        _s = false;
    }

    public void optionalS(java.util.Optional<LargeStruct> v)
    {
        if(v == null || !v.isPresent())
        {
            _s = false;
        }
        else
        {
            _s = true;
            s = v.get();
        }
    }

    public java.util.Optional<LargeStruct> optionalS()
    {
        if(_s)
        {
            return java.util.Optional.of(s);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private MyEnum[] enumS4;
    private boolean _enumS4;

    public MyEnum[] getEnumS4()
    {
        if(!_enumS4)
        {
            throw new java.util.NoSuchElementException("enumS4 is not set");
        }
        return enumS4;
    }

    public void setEnumS4(MyEnum[] enumS4)
    {
        _enumS4 = true;
        this.enumS4 = enumS4;
    }

    public boolean hasEnumS4()
    {
        return _enumS4;
    }

    public void clearEnumS4()
    {
        _enumS4 = false;
    }

    public void optionalEnumS4(java.util.Optional<MyEnum[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _enumS4 = false;
        }
        else
        {
            _enumS4 = true;
            enumS4 = v.get();
        }
    }

    public java.util.Optional<MyEnum[]> optionalEnumS4()
    {
        if(_enumS4)
        {
            return java.util.Optional.of(enumS4);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public MyEnum getEnumS4(int index)
    {
        if(!_enumS4)
        {
            throw new java.util.NoSuchElementException("enumS4 is not set");
        }
        return this.enumS4[index];
    }

    public void setEnumS4(int index, MyEnum val)
    {
        if(!_enumS4)
        {
            throw new java.util.NoSuchElementException("enumS4 is not set");
        }
        this.enumS4[index] = val;
    }

    private java.util.Map<java.lang.Byte, java.lang.Boolean> byteBoolD6;
    private boolean _byteBoolD6;

    public java.util.Map<java.lang.Byte, java.lang.Boolean> getByteBoolD6()
    {
        if(!_byteBoolD6)
        {
            throw new java.util.NoSuchElementException("byteBoolD6 is not set");
        }
        return byteBoolD6;
    }

    public void setByteBoolD6(java.util.Map<java.lang.Byte, java.lang.Boolean> byteBoolD6)
    {
        _byteBoolD6 = true;
        this.byteBoolD6 = byteBoolD6;
    }

    public boolean hasByteBoolD6()
    {
        return _byteBoolD6;
    }

    public void clearByteBoolD6()
    {
        _byteBoolD6 = false;
    }

    public void optionalByteBoolD6(java.util.Optional<java.util.Map<java.lang.Byte, java.lang.Boolean>> v)
    {
        if(v == null || !v.isPresent())
        {
            _byteBoolD6 = false;
        }
        else
        {
            _byteBoolD6 = true;
            byteBoolD6 = v.get();
        }
    }

    public java.util.Optional<java.util.Map<java.lang.Byte, java.lang.Boolean>> optionalByteBoolD6()
    {
        if(_byteBoolD6)
        {
            return java.util.Optional.of(byteBoolD6);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private java.util.Map<java.lang.Short, java.lang.Integer> shortIntD7;
    private boolean _shortIntD7;

    public java.util.Map<java.lang.Short, java.lang.Integer> getShortIntD7()
    {
        if(!_shortIntD7)
        {
            throw new java.util.NoSuchElementException("shortIntD7 is not set");
        }
        return shortIntD7;
    }

    public void setShortIntD7(java.util.Map<java.lang.Short, java.lang.Integer> shortIntD7)
    {
        _shortIntD7 = true;
        this.shortIntD7 = shortIntD7;
    }

    public boolean hasShortIntD7()
    {
        return _shortIntD7;
    }

    public void clearShortIntD7()
    {
        _shortIntD7 = false;
    }

    public void optionalShortIntD7(java.util.Optional<java.util.Map<java.lang.Short, java.lang.Integer>> v)
    {
        if(v == null || !v.isPresent())
        {
            _shortIntD7 = false;
        }
        else
        {
            _shortIntD7 = true;
            shortIntD7 = v.get();
        }
    }

    public java.util.Optional<java.util.Map<java.lang.Short, java.lang.Integer>> optionalShortIntD7()
    {
        if(_shortIntD7)
        {
            return java.util.Optional.of(shortIntD7);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private MyEnum enum8;
    private boolean _enum8;

    public MyEnum getEnum8()
    {
        if(!_enum8)
        {
            throw new java.util.NoSuchElementException("enum8 is not set");
        }
        return enum8;
    }

    public void setEnum8(MyEnum enum8)
    {
        _enum8 = true;
        this.enum8 = enum8;
    }

    public boolean hasEnum8()
    {
        return _enum8;
    }

    public void clearEnum8()
    {
        _enum8 = false;
    }

    public void optionalEnum8(java.util.Optional<MyEnum> v)
    {
        if(v == null || !v.isPresent())
        {
            _enum8 = false;
        }
        else
        {
            _enum8 = true;
            enum8 = v.get();
        }
    }

    public java.util.Optional<MyEnum> optionalEnum8()
    {
        if(_enum8)
        {
            return java.util.Optional.of(enum8);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private int[] intSeq12;
    private boolean _intSeq12;

    public int[] getIntSeq12()
    {
        if(!_intSeq12)
        {
            throw new java.util.NoSuchElementException("intSeq12 is not set");
        }
        return intSeq12;
    }

    public void setIntSeq12(int[] intSeq12)
    {
        _intSeq12 = true;
        this.intSeq12 = intSeq12;
    }

    public boolean hasIntSeq12()
    {
        return _intSeq12;
    }

    public void clearIntSeq12()
    {
        _intSeq12 = false;
    }

    public void optionalIntSeq12(java.util.Optional<int[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _intSeq12 = false;
        }
        else
        {
            _intSeq12 = true;
            intSeq12 = v.get();
        }
    }

    public java.util.Optional<int[]> optionalIntSeq12()
    {
        if(_intSeq12)
        {
            return java.util.Optional.of(intSeq12);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public int getIntSeq12(int index)
    {
        if(!_intSeq12)
        {
            throw new java.util.NoSuchElementException("intSeq12 is not set");
        }
        return this.intSeq12[index];
    }

    public void setIntSeq12(int index, int val)
    {
        if(!_intSeq12)
        {
            throw new java.util.NoSuchElementException("intSeq12 is not set");
        }
        this.intSeq12[index] = val;
    }

    private byte[] byteSeq13;
    private boolean _byteSeq13;

    public byte[] getByteSeq13()
    {
        if(!_byteSeq13)
        {
            throw new java.util.NoSuchElementException("byteSeq13 is not set");
        }
        return byteSeq13;
    }

    public void setByteSeq13(byte[] byteSeq13)
    {
        _byteSeq13 = true;
        this.byteSeq13 = byteSeq13;
    }

    public boolean hasByteSeq13()
    {
        return _byteSeq13;
    }

    public void clearByteSeq13()
    {
        _byteSeq13 = false;
    }

    public void optionalByteSeq13(java.util.Optional<byte[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _byteSeq13 = false;
        }
        else
        {
            _byteSeq13 = true;
            byteSeq13 = v.get();
        }
    }

    public java.util.Optional<byte[]> optionalByteSeq13()
    {
        if(_byteSeq13)
        {
            return java.util.Optional.of(byteSeq13);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public byte getByteSeq13(int index)
    {
        if(!_byteSeq13)
        {
            throw new java.util.NoSuchElementException("byteSeq13 is not set");
        }
        return this.byteSeq13[index];
    }

    public void setByteSeq13(int index, byte val)
    {
        if(!_byteSeq13)
        {
            throw new java.util.NoSuchElementException("byteSeq13 is not set");
        }
        this.byteSeq13[index] = val;
    }

    private String[] stringSeq14;
    private boolean _stringSeq14;

    public String[] getStringSeq14()
    {
        if(!_stringSeq14)
        {
            throw new java.util.NoSuchElementException("stringSeq14 is not set");
        }
        return stringSeq14;
    }

    public void setStringSeq14(String[] stringSeq14)
    {
        _stringSeq14 = true;
        this.stringSeq14 = stringSeq14;
    }

    public boolean hasStringSeq14()
    {
        return _stringSeq14;
    }

    public void clearStringSeq14()
    {
        _stringSeq14 = false;
    }

    public void optionalStringSeq14(java.util.Optional<String[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _stringSeq14 = false;
        }
        else
        {
            _stringSeq14 = true;
            stringSeq14 = v.get();
        }
    }

    public java.util.Optional<String[]> optionalStringSeq14()
    {
        if(_stringSeq14)
        {
            return java.util.Optional.of(stringSeq14);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public String getStringSeq14(int index)
    {
        if(!_stringSeq14)
        {
            throw new java.util.NoSuchElementException("stringSeq14 is not set");
        }
        return this.stringSeq14[index];
    }

    public void setStringSeq14(int index, String val)
    {
        if(!_stringSeq14)
        {
            throw new java.util.NoSuchElementException("stringSeq14 is not set");
        }
        this.stringSeq14[index] = val;
    }

    private Point p15;
    private boolean _p15;

    public Point getP15()
    {
        if(!_p15)
        {
            throw new java.util.NoSuchElementException("p15 is not set");
        }
        return p15;
    }

    public void setP15(Point p15)
    {
        _p15 = true;
        this.p15 = p15;
    }

    public boolean hasP15()
    {
        return _p15;
    }

    public void clearP15()
    {
        _p15 = false;
    }

    public void optionalP15(java.util.Optional<Point> v)
    {
        if(v == null || !v.isPresent())
        {
            _p15 = false;
        }
        else
        {
            _p15 = true;
            p15 = v.get();
        }
    }

    public java.util.Optional<Point> optionalP15()
    {
        if(_p15)
        {
            return java.util.Optional.of(p15);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public OptionalClass clone()
    {
        return (OptionalClass)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::OptionalClass";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 8176818513061582939L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeBool(bo);
        ostr_.writeByte(by);
        if(_sh)
        {
            ostr_.writeShort(1, sh);
        }
        if(_i)
        {
            ostr_.writeInt(2, i);
        }
        if(_s)
        {
            LargeStruct.ice_write(ostr_, 3, s);
        }
        if(_enumS4)
        {
            MyEnumSHelper.write(ostr_, 4, enumS4);
        }
        if(_byteBoolD6)
        {
            ByteBoolDHelper.write(ostr_, 6, byteBoolD6);
        }
        if(_shortIntD7)
        {
            ShortIntDHelper.write(ostr_, 7, shortIntD7);
        }
        if(_enum8)
        {
            MyEnum.ice_write(ostr_, 8, enum8);
        }
        if(_intSeq12)
        {
            ostr_.writeIntSeq(12, intSeq12);
        }
        if(_byteSeq13)
        {
            ostr_.writeByteSeq(13, byteSeq13);
        }
        if(_stringSeq14)
        {
            ostr_.writeStringSeq(14, stringSeq14);
        }
        if(_p15)
        {
            Point.ice_write(ostr_, 15, p15);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        bo = istr_.readBool();
        by = istr_.readByte();
        if(_sh = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.F2))
        {
            sh = istr_.readShort();
        }
        if(_i = istr_.readOptional(2, com.zeroc.Ice.OptionalFormat.F4))
        {
            i = istr_.readInt();
        }
        if(_s = istr_.readOptional(3, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            s = LargeStruct.ice_read(istr_);
        }
        if(_enumS4 = istr_.readOptional(4, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            enumS4 = MyEnumSHelper.read(istr_);
        }
        if(_byteBoolD6 = istr_.readOptional(6, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            byteBoolD6 = ByteBoolDHelper.read(istr_);
        }
        if(_shortIntD7 = istr_.readOptional(7, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            shortIntD7 = ShortIntDHelper.read(istr_);
        }
        if(_enum8 = istr_.readOptional(8, com.zeroc.Ice.OptionalFormat.Size))
        {
            enum8 = MyEnum.ice_read(istr_);
        }
        if(_intSeq12 = istr_.readOptional(12, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            intSeq12 = istr_.readIntSeq();
        }
        if(_byteSeq13 = istr_.readOptional(13, com.zeroc.Ice.OptionalFormat.VSize))
        {
            byteSeq13 = istr_.readByteSeq();
        }
        if(_stringSeq14 = istr_.readOptional(14, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            stringSeq14 = istr_.readStringSeq();
        }
        if(_p15 = istr_.readOptional(15, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            p15 = Point.ice_read(istr_);
        }
        istr_.endSlice();
    }
}
