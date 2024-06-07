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

public class BaseEx extends com.zeroc.Ice.UserException
{
    public BaseEx()
    {
        this.boolFalse = false;
        this.boolTrue = true;
        this.b = 1;
        this.s = 2;
        this.i = 3;
        this.l = 4L;
        this.f = 5.1F;
        this.d = 6.2;
        this.str = "foo \\ \"bar\n \r\n\t\u000b\f\u0007\b? \u0007 \u0007";
        this.noDefault = "";
        this.zeroI = 0;
        this.zeroL = 0L;
        this.zeroF = 0F;
        this.zeroDotF = 0F;
        this.zeroD = 0;
        this.zeroDotD = 0;
    }

    public BaseEx(Throwable cause)
    {
        super(cause);
        this.boolFalse = false;
        this.boolTrue = true;
        this.b = 1;
        this.s = 2;
        this.i = 3;
        this.l = 4L;
        this.f = 5.1F;
        this.d = 6.2;
        this.str = "foo \\ \"bar\n \r\n\t\u000b\f\u0007\b? \u0007 \u0007";
        this.noDefault = "";
        this.zeroI = 0;
        this.zeroL = 0L;
        this.zeroF = 0F;
        this.zeroDotF = 0F;
        this.zeroD = 0;
        this.zeroDotD = 0;
    }

    public BaseEx(boolean boolFalse, boolean boolTrue, byte b, short s, int i, long l, float f, double d, String str, String noDefault, int zeroI, long zeroL, float zeroF, float zeroDotF, double zeroD, double zeroDotD)
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
        this.noDefault = noDefault;
        this.zeroI = zeroI;
        this.zeroL = zeroL;
        this.zeroF = zeroF;
        this.zeroDotF = zeroDotF;
        this.zeroD = zeroD;
        this.zeroDotD = zeroDotD;
    }

    public BaseEx(boolean boolFalse, boolean boolTrue, byte b, short s, int i, long l, float f, double d, String str, String noDefault, int zeroI, long zeroL, float zeroF, float zeroDotF, double zeroD, double zeroDotD, Throwable cause)
    {
        super(cause);
        this.boolFalse = boolFalse;
        this.boolTrue = boolTrue;
        this.b = b;
        this.s = s;
        this.i = i;
        this.l = l;
        this.f = f;
        this.d = d;
        this.str = str;
        this.noDefault = noDefault;
        this.zeroI = zeroI;
        this.zeroL = zeroL;
        this.zeroF = zeroF;
        this.zeroDotF = zeroDotF;
        this.zeroD = zeroD;
        this.zeroDotD = zeroDotD;
    }

    public String ice_id()
    {
        return "::Test::BaseEx";
    }

    public boolean boolFalse;

    public boolean boolTrue;

    public byte b;

    public short s;

    public int i;

    public long l;

    public float f;

    public double d;

    public String str;

    public String noDefault;

    public int zeroI;

    public long zeroL;

    public float zeroF;

    public float zeroDotF;

    public double zeroD;

    public double zeroDotD;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::BaseEx", -1, true);
        ostr_.writeBool(boolFalse);
        ostr_.writeBool(boolTrue);
        ostr_.writeByte(b);
        ostr_.writeShort(s);
        ostr_.writeInt(i);
        ostr_.writeLong(l);
        ostr_.writeFloat(f);
        ostr_.writeDouble(d);
        ostr_.writeString(str);
        ostr_.writeString(noDefault);
        ostr_.writeInt(zeroI);
        ostr_.writeLong(zeroL);
        ostr_.writeFloat(zeroF);
        ostr_.writeFloat(zeroDotF);
        ostr_.writeDouble(zeroD);
        ostr_.writeDouble(zeroDotD);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        boolFalse = istr_.readBool();
        boolTrue = istr_.readBool();
        b = istr_.readByte();
        s = istr_.readShort();
        i = istr_.readInt();
        l = istr_.readLong();
        f = istr_.readFloat();
        d = istr_.readDouble();
        str = istr_.readString();
        noDefault = istr_.readString();
        zeroI = istr_.readInt();
        zeroL = istr_.readLong();
        zeroF = istr_.readFloat();
        zeroDotF = istr_.readFloat();
        zeroD = istr_.readDouble();
        zeroDotD = istr_.readDouble();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = -7545365850621701799L;
}
