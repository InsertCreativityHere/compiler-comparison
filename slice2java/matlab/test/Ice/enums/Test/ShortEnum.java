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

public enum ShortEnum implements java.io.Serializable
{
    senum1(3),
    senum2(4),
    senum3(10),
    senum4(11),
    senum5(20),
    senum6(21),
    senum7(30),
    senum8(31),
    senum9(40),
    senum10(41),
    senum11(32766);

    public int value()
    {
        return _value;
    }

    public static ShortEnum valueOf(int v)
    {
        switch(v)
        {
        case 3:
            return senum1;
        case 4:
            return senum2;
        case 10:
            return senum3;
        case 11:
            return senum4;
        case 20:
            return senum5;
        case 21:
            return senum6;
        case 30:
            return senum7;
        case 31:
            return senum8;
        case 40:
            return senum9;
        case 41:
            return senum10;
        case 32766:
            return senum11;
        }
        return null;
    }

    private ShortEnum(int v)
    {
        _value = v;
    }

    public void ice_write(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeEnum(_value, 32766);
    }

    public static void ice_write(com.zeroc.Ice.OutputStream ostr, ShortEnum v)
    {
        if(v == null)
        {
            ostr.writeEnum(Test.ShortEnum.senum1.value(), 32766);
        }
        else
        {
            ostr.writeEnum(v.value(), 32766);
        }
    }

    public static ShortEnum ice_read(com.zeroc.Ice.InputStream istr)
    {
        int v = istr.readEnum(32766);
        return validate(v);
    }

    public static void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ShortEnum> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    public static void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ShortEnum v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.Size))
        {
            ice_write(ostr, v);
        }
    }

    public static java.util.Optional<ShortEnum> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.Size))
        {
            return java.util.Optional.of(ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static ShortEnum validate(int v)
    {
        final ShortEnum e = valueOf(v);
        if(e == null)
        {
            throw new com.zeroc.Ice.MarshalException("enumerator value " + v + " is out of range");
        }
        return e;
    }

    private final int _value;
}
