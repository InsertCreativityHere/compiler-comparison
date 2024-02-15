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

public class MyClass extends com.zeroc.Ice.Value
{
    public MyClass()
    {
        this.s = new SmallStruct();
    }

    public MyClass(MyClass c, com.zeroc.Ice.Value o, SmallStruct s, boolean[] seq1, byte[] seq2, short[] seq3, int[] seq4, long[] seq5, float[] seq6, double[] seq7, String[] seq8, MyEnum[] seq9, MyClass[] seq10, java.util.Map<java.lang.String, MyClass> d)
    {
        this.c = c;
        this.o = o;
        this.s = s;
        this.seq1 = seq1;
        this.seq2 = seq2;
        this.seq3 = seq3;
        this.seq4 = seq4;
        this.seq5 = seq5;
        this.seq6 = seq6;
        this.seq7 = seq7;
        this.seq8 = seq8;
        this.seq9 = seq9;
        this.seq10 = seq10;
        this.d = d;
    }

    public MyClass c;

    public com.zeroc.Ice.Value o;

    public SmallStruct s;

    public boolean[] seq1;

    public byte[] seq2;

    public short[] seq3;

    public int[] seq4;

    public long[] seq5;

    public float[] seq6;

    public double[] seq7;

    public String[] seq8;

    public MyEnum[] seq9;

    public MyClass[] seq10;

    public java.util.Map<java.lang.String, MyClass> d;

    public MyClass clone()
    {
        return (MyClass)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::MyClass";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -480944478832228054L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeValue(c);
        ostr_.writeValue(o);
        SmallStruct.ice_write(ostr_, s);
        ostr_.writeBoolSeq(seq1);
        ostr_.writeByteSeq(seq2);
        ostr_.writeShortSeq(seq3);
        ostr_.writeIntSeq(seq4);
        ostr_.writeLongSeq(seq5);
        ostr_.writeFloatSeq(seq6);
        ostr_.writeDoubleSeq(seq7);
        ostr_.writeStringSeq(seq8);
        MyEnumSHelper.write(ostr_, seq9);
        MyClassSHelper.write(ostr_, seq10);
        StringMyClassDHelper.write(ostr_, d);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> c = v, MyClass.class);
        istr_.readValue(v -> o = v, com.zeroc.Ice.Value.class);
        s = SmallStruct.ice_read(istr_);
        seq1 = istr_.readBoolSeq();
        seq2 = istr_.readByteSeq();
        seq3 = istr_.readShortSeq();
        seq4 = istr_.readIntSeq();
        seq5 = istr_.readLongSeq();
        seq6 = istr_.readFloatSeq();
        seq7 = istr_.readDoubleSeq();
        seq8 = istr_.readStringSeq();
        seq9 = MyEnumSHelper.read(istr_);
        seq10 = MyClassSHelper.read(istr_);
        d = StringMyClassDHelper.read(istr_);
        istr_.endSlice();
    }
}
