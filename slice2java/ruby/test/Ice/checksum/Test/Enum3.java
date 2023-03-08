//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `CTypes.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public enum Enum3 implements java.io.Serializable
{
    Enum31(0),
    Enum32(1),
    Enum33(2);

    public int value()
    {
        return _value;
    }

    public static Enum3 valueOf(int v)
    {
        switch(v)
        {
        case 0:
            return Enum31;
        case 1:
            return Enum32;
        case 2:
            return Enum33;
        }
        return null;
    }

    private Enum3(int v)
    {
        _value = v;
    }

    public void ice_write(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeEnum(_value, 2);
    }

    public static void ice_write(com.zeroc.Ice.OutputStream ostr, Enum3 v)
    {
        if(v == null)
        {
            ostr.writeEnum(Test.Enum3.Enum31.value(), 2);
        }
        else
        {
            ostr.writeEnum(v.value(), 2);
        }
    }

    public static Enum3 ice_read(com.zeroc.Ice.InputStream istr)
    {
        int v = istr.readEnum(2);
        return validate(v);
    }

    public static void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Enum3> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    public static void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Enum3 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.Size))
        {
            ice_write(ostr, v);
        }
    }

    public static java.util.Optional<Enum3> ice_read(com.zeroc.Ice.InputStream istr, int tag)
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

    private static Enum3 validate(int v)
    {
        final Enum3 e = valueOf(v);
        if(e == null)
        {
            throw new com.zeroc.Ice.MarshalException("enumerator value " + v + " is out of range");
        }
        return e;
    }

    private final int _value;
}
