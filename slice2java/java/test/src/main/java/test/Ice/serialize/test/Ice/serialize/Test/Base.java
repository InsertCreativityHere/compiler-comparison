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

package test.Ice.serialize.Test;

public class Base extends com.zeroc.Ice.Value
{
    public Base()
    {
        this.s = new Struct1();
    }

    public Base(Base b, com.zeroc.Ice.Value o, Struct1 s, byte[] seq1, int[] seq2, MyEnum[] seq3, Base[] seq4, java.util.Map<java.lang.Byte, java.lang.Boolean> d1, java.util.Map<java.lang.Short, java.lang.Integer> d2, java.util.Map<java.lang.String, MyEnum> d3, java.util.Map<java.lang.String, Base> d4)
    {
        this.b = b;
        this.o = o;
        this.s = s;
        this.seq1 = seq1;
        this.seq2 = seq2;
        this.seq3 = seq3;
        this.seq4 = seq4;
        this.d1 = d1;
        this.d2 = d2;
        this.d3 = d3;
        this.d4 = d4;
    }

    public Base b;

    public com.zeroc.Ice.Value o;

    public Struct1 s;

    public byte[] seq1;

    public int[] seq2;

    public MyEnum[] seq3;

    public Base[] seq4;

    public java.util.Map<java.lang.Byte, java.lang.Boolean> d1;

    public java.util.Map<java.lang.Short, java.lang.Integer> d2;

    public java.util.Map<java.lang.String, MyEnum> d3;

    public java.util.Map<java.lang.String, Base> d4;

    public Base clone()
    {
        return (Base)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Base";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 1002L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeValue(b);
        ostr_.writeValue(o);
        Struct1.ice_write(ostr_, s);
        ostr_.writeByteSeq(seq1);
        ostr_.writeIntSeq(seq2);
        MyEnumSHelper.write(ostr_, seq3);
        BaseSHelper.write(ostr_, seq4);
        ByteBoolDHelper.write(ostr_, d1);
        ShortIntDHelper.write(ostr_, d2);
        StringMyEnumDHelper.write(ostr_, d3);
        StringBaseDHelper.write(ostr_, d4);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> b = v, Base.class);
        istr_.readValue(v -> o = v, com.zeroc.Ice.Value.class);
        s = Struct1.ice_read(istr_);
        seq1 = istr_.readByteSeq();
        seq2 = istr_.readIntSeq();
        seq3 = MyEnumSHelper.read(istr_);
        seq4 = BaseSHelper.read(istr_);
        d1 = ByteBoolDHelper.read(istr_);
        d2 = ShortIntDHelper.read(istr_);
        d3 = StringMyEnumDHelper.read(istr_);
        d4 = StringBaseDHelper.read(istr_);
        istr_.endSlice();
    }
}
