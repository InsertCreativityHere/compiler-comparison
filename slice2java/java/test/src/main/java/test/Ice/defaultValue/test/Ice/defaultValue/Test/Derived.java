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

public class Derived extends Base
{
    public Derived()
    {
        super();
        this.c1 = test.Ice.defaultValue.Test.Color.red;
        this.c2 = test.Ice.defaultValue.Test.Color.green;
        this.c3 = test.Ice.defaultValue.Test.Color.blue;
        this.nc1 = test.Ice.defaultValue.Test.Nested.Color.red;
        this.nc2 = test.Ice.defaultValue.Test.Nested.Color.green;
        this.nc3 = test.Ice.defaultValue.Test.Nested.Color.blue;
    }

    public Derived(boolean boolFalse, boolean boolTrue, byte b, short s, int i, long l, float f, double d, String str, String noDefault, int zeroI, long zeroL, float zeroF, float zeroDotF, double zeroD, double zeroDotD, Color c1, Color c2, Color c3, test.Ice.defaultValue.Test.Nested.Color nc1, test.Ice.defaultValue.Test.Nested.Color nc2, test.Ice.defaultValue.Test.Nested.Color nc3)
    {
        super(boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD);
        this.c1 = c1;
        this.c2 = c2;
        this.c3 = c3;
        this.nc1 = nc1;
        this.nc2 = nc2;
        this.nc3 = nc3;
    }

    public Color c1;

    public Color c2;

    public Color c3;

    public test.Ice.defaultValue.Test.Nested.Color nc1;

    public test.Ice.defaultValue.Test.Nested.Color nc2;

    public test.Ice.defaultValue.Test.Nested.Color nc3;

    public Derived clone()
    {
        return (Derived)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Derived";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -8588717816968120335L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        Color.ice_write(ostr_, c1);
        Color.ice_write(ostr_, c2);
        Color.ice_write(ostr_, c3);
        test.Ice.defaultValue.Test.Nested.Color.ice_write(ostr_, nc1);
        test.Ice.defaultValue.Test.Nested.Color.ice_write(ostr_, nc2);
        test.Ice.defaultValue.Test.Nested.Color.ice_write(ostr_, nc3);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        c1 = Color.ice_read(istr_);
        c2 = Color.ice_read(istr_);
        c3 = Color.ice_read(istr_);
        nc1 = test.Ice.defaultValue.Test.Nested.Color.ice_read(istr_);
        nc2 = test.Ice.defaultValue.Test.Nested.Color.ice_read(istr_);
        nc3 = test.Ice.defaultValue.Test.Nested.Color.ice_read(istr_);
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
