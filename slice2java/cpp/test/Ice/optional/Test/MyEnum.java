//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public enum MyEnum
{
    MyEnumMember(0);

    public int value()
    {
        return _value;
    }

    public static MyEnum valueOf(int v)
    {
        switch(v)
        {
        case 0:
            return MyEnumMember;
        }
        return null;
    }

    private MyEnum(int v)
    {
        _value = v;
    }

    public void ice_write(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeEnum(_value, 0);
    }

    public static void ice_write(com.zeroc.Ice.OutputStream ostr, MyEnum v)
    {
        if(v == null)
        {
            ostr.writeEnum(Test.MyEnum.MyEnumMember.value(), 0);
        }
        else
        {
            ostr.writeEnum(v.value(), 0);
        }
    }

    public static MyEnum ice_read(com.zeroc.Ice.InputStream istr)
    {
        int v = istr.readEnum(0);
        return validate(v);
    }

    public static void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<MyEnum> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    public static void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, MyEnum v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.Size))
        {
            ice_write(ostr, v);
        }
    }

    public static java.util.Optional<MyEnum> ice_read(com.zeroc.Ice.InputStream istr, int tag)
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

    private static MyEnum validate(int v)
    {
        final MyEnum e = valueOf(v);
        if(e == null)
        {
            throw new com.zeroc.Ice.MarshalException("enumerator value " + v + " is out of range");
        }
        return e;
    }

    private final int _value;
}
