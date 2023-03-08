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

package classdef._break;

public enum bitand implements java.io.Serializable
{
    _break(0),
    _case(1),
    _catch(2),
    classdef(3),
    _continue(4),
    _else(5),
    elseif(6),
    end(7),
    enumeration(8),
    events(9),
    _for(10),
    function(11),
    global(12),
    _if(13),
    methods(14),
    otherwise(15),
    parfor(16),
    persistent(17),
    properties(18),
    _return(19),
    spmd(20),
    _switch(21),
    _try(22),
    _while(23),
    abs(24),
    and(25),
    _char(26),
    eq(27),
    length(28),
    size(29),
    xor(30),
    LAST(31);

    public int value()
    {
        return _value;
    }

    public static bitand valueOf(int v)
    {
        switch(v)
        {
        case 0:
            return _break;
        case 1:
            return _case;
        case 2:
            return _catch;
        case 3:
            return classdef;
        case 4:
            return _continue;
        case 5:
            return _else;
        case 6:
            return elseif;
        case 7:
            return end;
        case 8:
            return enumeration;
        case 9:
            return events;
        case 10:
            return _for;
        case 11:
            return function;
        case 12:
            return global;
        case 13:
            return _if;
        case 14:
            return methods;
        case 15:
            return otherwise;
        case 16:
            return parfor;
        case 17:
            return persistent;
        case 18:
            return properties;
        case 19:
            return _return;
        case 20:
            return spmd;
        case 21:
            return _switch;
        case 22:
            return _try;
        case 23:
            return _while;
        case 24:
            return abs;
        case 25:
            return and;
        case 26:
            return _char;
        case 27:
            return eq;
        case 28:
            return length;
        case 29:
            return size;
        case 30:
            return xor;
        case 31:
            return LAST;
        }
        return null;
    }

    private bitand(int v)
    {
        _value = v;
    }

    public void ice_write(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeEnum(_value, 31);
    }

    public static void ice_write(com.zeroc.Ice.OutputStream ostr, bitand v)
    {
        if(v == null)
        {
            ostr.writeEnum(classdef._break.bitand._break.value(), 31);
        }
        else
        {
            ostr.writeEnum(v.value(), 31);
        }
    }

    public static bitand ice_read(com.zeroc.Ice.InputStream istr)
    {
        int v = istr.readEnum(31);
        return validate(v);
    }

    public static void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<bitand> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    public static void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, bitand v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.Size))
        {
            ice_write(ostr, v);
        }
    }

    public static java.util.Optional<bitand> ice_read(com.zeroc.Ice.InputStream istr, int tag)
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

    private static bitand validate(int v)
    {
        final bitand e = valueOf(v);
        if(e == null)
        {
            throw new com.zeroc.Ice.MarshalException("enumerator value " + v + " is out of range");
        }
        return e;
    }

    private final int _value;
}
