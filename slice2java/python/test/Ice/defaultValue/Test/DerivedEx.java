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

public class DerivedEx extends BaseEx
{
    public DerivedEx()
    {
        super();
        this.c1 = ConstColor1.value;
        this.c2 = ConstColor2.value;
        this.c3 = ConstColor3.value;
        this.nc1 = ConstNestedColor1.value;
        this.nc2 = ConstNestedColor2.value;
        this.nc3 = ConstNestedColor3.value;
    }

    public DerivedEx(Throwable cause)
    {
        super(cause);
        this.c1 = ConstColor1.value;
        this.c2 = ConstColor2.value;
        this.c3 = ConstColor3.value;
        this.nc1 = ConstNestedColor1.value;
        this.nc2 = ConstNestedColor2.value;
        this.nc3 = ConstNestedColor3.value;
    }

    public DerivedEx(boolean boolFalse, boolean boolTrue, byte b, short s, int i, long l, float f, double d, String str, String noDefault, int zeroI, long zeroL, float zeroF, float zeroDotF, double zeroD, double zeroDotD, Color c1, Color c2, Color c3, Test.Nested.Color nc1, Test.Nested.Color nc2, Test.Nested.Color nc3)
    {
        super(boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD);
        this.c1 = c1;
        this.c2 = c2;
        this.c3 = c3;
        this.nc1 = nc1;
        this.nc2 = nc2;
        this.nc3 = nc3;
    }

    public DerivedEx(boolean boolFalse, boolean boolTrue, byte b, short s, int i, long l, float f, double d, String str, String noDefault, int zeroI, long zeroL, float zeroF, float zeroDotF, double zeroD, double zeroDotD, Color c1, Color c2, Color c3, Test.Nested.Color nc1, Test.Nested.Color nc2, Test.Nested.Color nc3, Throwable cause)
    {
        super(boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD, cause);
        this.c1 = c1;
        this.c2 = c2;
        this.c3 = c3;
        this.nc1 = nc1;
        this.nc2 = nc2;
        this.nc3 = nc3;
    }

    public String ice_id()
    {
        return "::Test::DerivedEx";
    }

    public Color c1;

    public Color c2;

    public Color c3;

    public Test.Nested.Color nc1;

    public Test.Nested.Color nc2;

    public Test.Nested.Color nc3;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::DerivedEx", -1, false);
        Color.ice_write(ostr_, c1);
        Color.ice_write(ostr_, c2);
        Color.ice_write(ostr_, c3);
        Test.Nested.Color.ice_write(ostr_, nc1);
        Test.Nested.Color.ice_write(ostr_, nc2);
        Test.Nested.Color.ice_write(ostr_, nc3);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        c1 = Color.ice_read(istr_);
        c2 = Color.ice_read(istr_);
        c3 = Color.ice_read(istr_);
        nc1 = Test.Nested.Color.ice_read(istr_);
        nc2 = Test.Nested.Color.ice_read(istr_);
        nc3 = Test.Nested.Color.ice_read(istr_);
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = 6094824871118985537L;
}
