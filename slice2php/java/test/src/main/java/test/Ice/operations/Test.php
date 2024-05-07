<?php
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


namespace
{
    require_once 'Ice/Context.php';
}

namespace Test
{
    global $Test__t_MyEnum;
    class MyEnum
    {
        const enum1 = 0;
        const enum2 = 1;
        const enum3 = 2;
    }

    $Test__t_MyEnum = IcePHP_defineEnum('::Test::MyEnum', array('enum1', 0, 'enum2', 1, 'enum3', 2));
}

namespace Test
{
    global $Test__t_MyClass;
    global $Test__t_MyClassPrx;
    if(!isset($Test__t_MyClass))
    {
        $Test__t_MyClass = IcePHP_declareClass('::Test::MyClass');
        $Test__t_MyClassPrx = IcePHP_declareProxy('::Test::MyClass');
    }
}

namespace Test
{
    global $Test__t_AnotherStruct;
    class AnotherStruct
    {
        public function __construct($s='')
        {
            $this->s = $s;
        }

        public function __toString(): string
        {
            global $Test__t_AnotherStruct;
            return IcePHP_stringify($this, $Test__t_AnotherStruct);
        }

        public $s;
    }

    global $IcePHP__t_string;
    $Test__t_AnotherStruct = IcePHP_defineStruct('::Test::AnotherStruct', '\\Test\\AnotherStruct', array(
        array('s', $IcePHP__t_string)));
}

namespace Test
{
    global $Test__t_Structure;
    class Structure
    {
        public function __construct($p=null, $e=\Test\MyEnum::enum1, $s=null)
        {
            $this->p = $p;
            $this->e = $e;
            $this->s = is_null($s) ? new \Test\AnotherStruct : $s;
        }

        public function __toString(): string
        {
            global $Test__t_Structure;
            return IcePHP_stringify($this, $Test__t_Structure);
        }

        public $p;
        public $e;
        public $s;
    }

    global $Test__t_MyClassPrx;
    global $Test__t_MyEnum;
    global $Test__t_AnotherStruct;
    $Test__t_Structure = IcePHP_defineStruct('::Test::Structure', '\\Test\\Structure', array(
        array('p', $Test__t_MyClassPrx),
        array('e', $Test__t_MyEnum),
        array('s', $Test__t_AnotherStruct)));
}

namespace Test
{
    global $Test__t_ByteS;

    if(!isset($Test__t_ByteS))
    {
        global $IcePHP__t_byte;
        $Test__t_ByteS = IcePHP_defineSequence('::Test::ByteS', $IcePHP__t_byte);
    }
}

namespace Test
{
    global $Test__t_BoolS;

    if(!isset($Test__t_BoolS))
    {
        global $IcePHP__t_bool;
        $Test__t_BoolS = IcePHP_defineSequence('::Test::BoolS', $IcePHP__t_bool);
    }
}

namespace Test
{
    global $Test__t_ShortS;

    if(!isset($Test__t_ShortS))
    {
        global $IcePHP__t_short;
        $Test__t_ShortS = IcePHP_defineSequence('::Test::ShortS', $IcePHP__t_short);
    }
}

namespace Test
{
    global $Test__t_IntS;

    if(!isset($Test__t_IntS))
    {
        global $IcePHP__t_int;
        $Test__t_IntS = IcePHP_defineSequence('::Test::IntS', $IcePHP__t_int);
    }
}

namespace Test
{
    global $Test__t_LongS;

    if(!isset($Test__t_LongS))
    {
        global $IcePHP__t_long;
        $Test__t_LongS = IcePHP_defineSequence('::Test::LongS', $IcePHP__t_long);
    }
}

namespace Test
{
    global $Test__t_FloatS;

    if(!isset($Test__t_FloatS))
    {
        global $IcePHP__t_float;
        $Test__t_FloatS = IcePHP_defineSequence('::Test::FloatS', $IcePHP__t_float);
    }
}

namespace Test
{
    global $Test__t_DoubleS;

    if(!isset($Test__t_DoubleS))
    {
        global $IcePHP__t_double;
        $Test__t_DoubleS = IcePHP_defineSequence('::Test::DoubleS', $IcePHP__t_double);
    }
}

namespace Test
{
    global $Test__t_StringS;

    if(!isset($Test__t_StringS))
    {
        global $IcePHP__t_string;
        $Test__t_StringS = IcePHP_defineSequence('::Test::StringS', $IcePHP__t_string);
    }
}

namespace Test
{
    global $Test__t_MyEnumS;

    if(!isset($Test__t_MyEnumS))
    {
        global $Test__t_MyEnum;
        $Test__t_MyEnumS = IcePHP_defineSequence('::Test::MyEnumS', $Test__t_MyEnum);
    }
}

namespace Test
{
    global $Test__t_MyClassS;

    if(!isset($Test__t_MyClassS))
    {
        global $Test__t_MyClassPrx;
        $Test__t_MyClassS = IcePHP_defineSequence('::Test::MyClassS', $Test__t_MyClassPrx);
    }
}

namespace Test
{
    global $Test__t_ByteSS;

    if(!isset($Test__t_ByteSS))
    {
        global $Test__t_ByteS;
        $Test__t_ByteSS = IcePHP_defineSequence('::Test::ByteSS', $Test__t_ByteS);
    }
}

namespace Test
{
    global $Test__t_BoolSS;

    if(!isset($Test__t_BoolSS))
    {
        global $Test__t_BoolS;
        $Test__t_BoolSS = IcePHP_defineSequence('::Test::BoolSS', $Test__t_BoolS);
    }
}

namespace Test
{
    global $Test__t_ShortSS;

    if(!isset($Test__t_ShortSS))
    {
        global $Test__t_ShortS;
        $Test__t_ShortSS = IcePHP_defineSequence('::Test::ShortSS', $Test__t_ShortS);
    }
}

namespace Test
{
    global $Test__t_IntSS;

    if(!isset($Test__t_IntSS))
    {
        global $Test__t_IntS;
        $Test__t_IntSS = IcePHP_defineSequence('::Test::IntSS', $Test__t_IntS);
    }
}

namespace Test
{
    global $Test__t_LongSS;

    if(!isset($Test__t_LongSS))
    {
        global $Test__t_LongS;
        $Test__t_LongSS = IcePHP_defineSequence('::Test::LongSS', $Test__t_LongS);
    }
}

namespace Test
{
    global $Test__t_FloatSS;

    if(!isset($Test__t_FloatSS))
    {
        global $Test__t_FloatS;
        $Test__t_FloatSS = IcePHP_defineSequence('::Test::FloatSS', $Test__t_FloatS);
    }
}

namespace Test
{
    global $Test__t_DoubleSS;

    if(!isset($Test__t_DoubleSS))
    {
        global $Test__t_DoubleS;
        $Test__t_DoubleSS = IcePHP_defineSequence('::Test::DoubleSS', $Test__t_DoubleS);
    }
}

namespace Test
{
    global $Test__t_StringSS;

    if(!isset($Test__t_StringSS))
    {
        global $Test__t_StringS;
        $Test__t_StringSS = IcePHP_defineSequence('::Test::StringSS', $Test__t_StringS);
    }
}

namespace Test
{
    global $Test__t_MyEnumSS;

    if(!isset($Test__t_MyEnumSS))
    {
        global $Test__t_MyEnumS;
        $Test__t_MyEnumSS = IcePHP_defineSequence('::Test::MyEnumSS', $Test__t_MyEnumS);
    }
}

namespace Test
{
    global $Test__t_MyClassSS;

    if(!isset($Test__t_MyClassSS))
    {
        global $Test__t_MyClassS;
        $Test__t_MyClassSS = IcePHP_defineSequence('::Test::MyClassSS', $Test__t_MyClassS);
    }
}

namespace Test
{
    global $Test__t_StringSSS;

    if(!isset($Test__t_StringSSS))
    {
        global $Test__t_StringSS;
        $Test__t_StringSSS = IcePHP_defineSequence('::Test::StringSSS', $Test__t_StringSS);
    }
}

namespace Test
{
    global $Test__t_MyStruct;
    class MyStruct
    {
        public function __construct($i=0, $j=0)
        {
            $this->i = $i;
            $this->j = $j;
        }

        public function __toString(): string
        {
            global $Test__t_MyStruct;
            return IcePHP_stringify($this, $Test__t_MyStruct);
        }

        public $i;
        public $j;
    }

    global $IcePHP__t_int;
    $Test__t_MyStruct = IcePHP_defineStruct('::Test::MyStruct', '\\Test\\MyStruct', array(
        array('i', $IcePHP__t_int),
        array('j', $IcePHP__t_int)));
}

namespace Test
{
    global $Test__t_ByteBoolD;

    if(!isset($Test__t_ByteBoolD))
    {
        global $IcePHP__t_byte;
        global $IcePHP__t_bool;
        $Test__t_ByteBoolD = IcePHP_defineDictionary('::Test::ByteBoolD', $IcePHP__t_byte, $IcePHP__t_bool);
    }
}

namespace Test
{
    global $Test__t_ShortIntD;

    if(!isset($Test__t_ShortIntD))
    {
        global $IcePHP__t_short;
        global $IcePHP__t_int;
        $Test__t_ShortIntD = IcePHP_defineDictionary('::Test::ShortIntD', $IcePHP__t_short, $IcePHP__t_int);
    }
}

namespace Test
{
    global $Test__t_LongFloatD;

    if(!isset($Test__t_LongFloatD))
    {
        global $IcePHP__t_long;
        global $IcePHP__t_float;
        $Test__t_LongFloatD = IcePHP_defineDictionary('::Test::LongFloatD', $IcePHP__t_long, $IcePHP__t_float);
    }
}

namespace Test
{
    global $Test__t_StringStringD;

    if(!isset($Test__t_StringStringD))
    {
        global $IcePHP__t_string;
        global $IcePHP__t_string;
        $Test__t_StringStringD = IcePHP_defineDictionary('::Test::StringStringD', $IcePHP__t_string, $IcePHP__t_string);
    }
}

namespace Test
{
    global $Test__t_StringMyEnumD;

    if(!isset($Test__t_StringMyEnumD))
    {
        global $IcePHP__t_string;
        global $Test__t_MyEnum;
        $Test__t_StringMyEnumD = IcePHP_defineDictionary('::Test::StringMyEnumD', $IcePHP__t_string, $Test__t_MyEnum);
    }
}

namespace Test
{
    global $Test__t_MyEnumStringD;

    if(!isset($Test__t_MyEnumStringD))
    {
        global $Test__t_MyEnum;
        global $IcePHP__t_string;
        $Test__t_MyEnumStringD = IcePHP_defineDictionary('::Test::MyEnumStringD', $Test__t_MyEnum, $IcePHP__t_string);
    }
}

namespace Test
{
    global $Test__t_MyStructMyEnumD;

    if(!isset($Test__t_MyStructMyEnumD))
    {
        global $Test__t_MyStruct;
        global $Test__t_MyEnum;
        $Test__t_MyStructMyEnumD = IcePHP_defineDictionary('::Test::MyStructMyEnumD', $Test__t_MyStruct, $Test__t_MyEnum);
    }
}

namespace Test
{
    global $Test__t_ByteBoolDS;

    if(!isset($Test__t_ByteBoolDS))
    {
        global $Test__t_ByteBoolD;
        $Test__t_ByteBoolDS = IcePHP_defineSequence('::Test::ByteBoolDS', $Test__t_ByteBoolD);
    }
}

namespace Test
{
    global $Test__t_ShortIntDS;

    if(!isset($Test__t_ShortIntDS))
    {
        global $Test__t_ShortIntD;
        $Test__t_ShortIntDS = IcePHP_defineSequence('::Test::ShortIntDS', $Test__t_ShortIntD);
    }
}

namespace Test
{
    global $Test__t_LongFloatDS;

    if(!isset($Test__t_LongFloatDS))
    {
        global $Test__t_LongFloatD;
        $Test__t_LongFloatDS = IcePHP_defineSequence('::Test::LongFloatDS', $Test__t_LongFloatD);
    }
}

namespace Test
{
    global $Test__t_StringStringDS;

    if(!isset($Test__t_StringStringDS))
    {
        global $Test__t_StringStringD;
        $Test__t_StringStringDS = IcePHP_defineSequence('::Test::StringStringDS', $Test__t_StringStringD);
    }
}

namespace Test
{
    global $Test__t_StringMyEnumDS;

    if(!isset($Test__t_StringMyEnumDS))
    {
        global $Test__t_StringMyEnumD;
        $Test__t_StringMyEnumDS = IcePHP_defineSequence('::Test::StringMyEnumDS', $Test__t_StringMyEnumD);
    }
}

namespace Test
{
    global $Test__t_MyEnumStringDS;

    if(!isset($Test__t_MyEnumStringDS))
    {
        global $Test__t_MyEnumStringD;
        $Test__t_MyEnumStringDS = IcePHP_defineSequence('::Test::MyEnumStringDS', $Test__t_MyEnumStringD);
    }
}

namespace Test
{
    global $Test__t_MyStructMyEnumDS;

    if(!isset($Test__t_MyStructMyEnumDS))
    {
        global $Test__t_MyStructMyEnumD;
        $Test__t_MyStructMyEnumDS = IcePHP_defineSequence('::Test::MyStructMyEnumDS', $Test__t_MyStructMyEnumD);
    }
}

namespace Test
{
    global $Test__t_ByteByteSD;

    if(!isset($Test__t_ByteByteSD))
    {
        global $IcePHP__t_byte;
        global $Test__t_ByteS;
        $Test__t_ByteByteSD = IcePHP_defineDictionary('::Test::ByteByteSD', $IcePHP__t_byte, $Test__t_ByteS);
    }
}

namespace Test
{
    global $Test__t_BoolBoolSD;

    if(!isset($Test__t_BoolBoolSD))
    {
        global $IcePHP__t_bool;
        global $Test__t_BoolS;
        $Test__t_BoolBoolSD = IcePHP_defineDictionary('::Test::BoolBoolSD', $IcePHP__t_bool, $Test__t_BoolS);
    }
}

namespace Test
{
    global $Test__t_ShortShortSD;

    if(!isset($Test__t_ShortShortSD))
    {
        global $IcePHP__t_short;
        global $Test__t_ShortS;
        $Test__t_ShortShortSD = IcePHP_defineDictionary('::Test::ShortShortSD', $IcePHP__t_short, $Test__t_ShortS);
    }
}

namespace Test
{
    global $Test__t_IntIntSD;

    if(!isset($Test__t_IntIntSD))
    {
        global $IcePHP__t_int;
        global $Test__t_IntS;
        $Test__t_IntIntSD = IcePHP_defineDictionary('::Test::IntIntSD', $IcePHP__t_int, $Test__t_IntS);
    }
}

namespace Test
{
    global $Test__t_LongLongSD;

    if(!isset($Test__t_LongLongSD))
    {
        global $IcePHP__t_long;
        global $Test__t_LongS;
        $Test__t_LongLongSD = IcePHP_defineDictionary('::Test::LongLongSD', $IcePHP__t_long, $Test__t_LongS);
    }
}

namespace Test
{
    global $Test__t_StringFloatSD;

    if(!isset($Test__t_StringFloatSD))
    {
        global $IcePHP__t_string;
        global $Test__t_FloatS;
        $Test__t_StringFloatSD = IcePHP_defineDictionary('::Test::StringFloatSD', $IcePHP__t_string, $Test__t_FloatS);
    }
}

namespace Test
{
    global $Test__t_StringDoubleSD;

    if(!isset($Test__t_StringDoubleSD))
    {
        global $IcePHP__t_string;
        global $Test__t_DoubleS;
        $Test__t_StringDoubleSD = IcePHP_defineDictionary('::Test::StringDoubleSD', $IcePHP__t_string, $Test__t_DoubleS);
    }
}

namespace Test
{
    global $Test__t_StringStringSD;

    if(!isset($Test__t_StringStringSD))
    {
        global $IcePHP__t_string;
        global $Test__t_StringS;
        $Test__t_StringStringSD = IcePHP_defineDictionary('::Test::StringStringSD', $IcePHP__t_string, $Test__t_StringS);
    }
}

namespace Test
{
    global $Test__t_MyEnumMyEnumSD;

    if(!isset($Test__t_MyEnumMyEnumSD))
    {
        global $Test__t_MyEnum;
        global $Test__t_MyEnumS;
        $Test__t_MyEnumMyEnumSD = IcePHP_defineDictionary('::Test::MyEnumMyEnumSD', $Test__t_MyEnum, $Test__t_MyEnumS);
    }
}

namespace Test
{
    global $Test__t_MyClass;
    global $Test__t_MyClassPrx;

    class MyClassPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::MyClass', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MyClass', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MyClass';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_MyClassPrx = IcePHP_defineProxy('::Test::MyClass', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_bool;
    global $IcePHP__t_byte;
    global $IcePHP__t_short;
    global $IcePHP__t_int;
    global $IcePHP__t_long;
    global $IcePHP__t_float;
    global $IcePHP__t_double;
    global $IcePHP__t_string;
    global $Test__t_MyEnum;
    global $Test__t_MyClassPrx;
    global $Test__t_Structure;
    global $Test__t_ByteS;
    global $Test__t_BoolS;
    global $Test__t_ShortS;
    global $Test__t_IntS;
    global $Test__t_LongS;
    global $Test__t_FloatS;
    global $Test__t_DoubleS;
    global $Test__t_StringS;
    global $Test__t_ByteSS;
    global $Test__t_BoolSS;
    global $Test__t_ShortSS;
    global $Test__t_IntSS;
    global $Test__t_LongSS;
    global $Test__t_FloatSS;
    global $Test__t_DoubleSS;
    global $Test__t_StringSS;
    global $Test__t_StringSSS;
    global $Test__t_ByteBoolD;
    global $Test__t_ShortIntD;
    global $Test__t_LongFloatD;
    global $Test__t_StringStringD;
    global $Test__t_StringMyEnumD;
    global $Test__t_MyEnumStringD;
    global $Test__t_MyStructMyEnumD;
    global $Test__t_ByteBoolDS;
    global $Test__t_ShortIntDS;
    global $Test__t_LongFloatDS;
    global $Test__t_StringStringDS;
    global $Test__t_StringMyEnumDS;
    global $Test__t_MyEnumStringDS;
    global $Test__t_MyStructMyEnumDS;
    global $Test__t_ByteByteSD;
    global $Test__t_BoolBoolSD;
    global $Test__t_ShortShortSD;
    global $Test__t_IntIntSD;
    global $Test__t_LongLongSD;
    global $Test__t_StringFloatSD;
    global $Test__t_StringDoubleSD;
    global $Test__t_StringStringSD;
    global $Test__t_MyEnumMyEnumSD;
    global $Ice__t_Context;
    IcePHP_defineOperation($Test__t_MyClassPrx, 'shutdown', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'supportsCompress', 0, 0, null, null, array($IcePHP__t_bool), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opVoid', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opByte', 0, 0, array(array($IcePHP__t_byte), array($IcePHP__t_byte)), array(array($IcePHP__t_byte)), array($IcePHP__t_byte), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opBool', 0, 0, array(array($IcePHP__t_bool), array($IcePHP__t_bool)), array(array($IcePHP__t_bool)), array($IcePHP__t_bool), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opShortIntLong', 0, 0, array(array($IcePHP__t_short), array($IcePHP__t_int), array($IcePHP__t_long)), array(array($IcePHP__t_short), array($IcePHP__t_int), array($IcePHP__t_long)), array($IcePHP__t_long), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opFloatDouble', 0, 0, array(array($IcePHP__t_float), array($IcePHP__t_double)), array(array($IcePHP__t_float), array($IcePHP__t_double)), array($IcePHP__t_double), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opString', 0, 0, array(array($IcePHP__t_string), array($IcePHP__t_string)), array(array($IcePHP__t_string)), array($IcePHP__t_string), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opMyEnum', 0, 0, array(array($Test__t_MyEnum)), array(array($Test__t_MyEnum)), array($Test__t_MyEnum), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opMyClass', 0, 0, array(array($Test__t_MyClassPrx)), array(array($Test__t_MyClassPrx), array($Test__t_MyClassPrx)), array($Test__t_MyClassPrx), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opStruct', 0, 0, array(array($Test__t_Structure), array($Test__t_Structure)), array(array($Test__t_Structure)), array($Test__t_Structure), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opByteS', 0, 0, array(array($Test__t_ByteS), array($Test__t_ByteS)), array(array($Test__t_ByteS)), array($Test__t_ByteS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opBoolS', 0, 0, array(array($Test__t_BoolS), array($Test__t_BoolS)), array(array($Test__t_BoolS)), array($Test__t_BoolS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opShortIntLongS', 0, 0, array(array($Test__t_ShortS), array($Test__t_IntS), array($Test__t_LongS)), array(array($Test__t_ShortS), array($Test__t_IntS), array($Test__t_LongS)), array($Test__t_LongS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opFloatDoubleS', 0, 0, array(array($Test__t_FloatS), array($Test__t_DoubleS)), array(array($Test__t_FloatS), array($Test__t_DoubleS)), array($Test__t_DoubleS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opStringS', 0, 0, array(array($Test__t_StringS), array($Test__t_StringS)), array(array($Test__t_StringS)), array($Test__t_StringS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opByteSS', 0, 0, array(array($Test__t_ByteSS), array($Test__t_ByteSS)), array(array($Test__t_ByteSS)), array($Test__t_ByteSS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opBoolSS', 0, 0, array(array($Test__t_BoolSS), array($Test__t_BoolSS)), array(array($Test__t_BoolSS)), array($Test__t_BoolSS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opShortIntLongSS', 0, 0, array(array($Test__t_ShortSS), array($Test__t_IntSS), array($Test__t_LongSS)), array(array($Test__t_ShortSS), array($Test__t_IntSS), array($Test__t_LongSS)), array($Test__t_LongSS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opFloatDoubleSS', 0, 0, array(array($Test__t_FloatSS), array($Test__t_DoubleSS)), array(array($Test__t_FloatSS), array($Test__t_DoubleSS)), array($Test__t_DoubleSS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opStringSS', 0, 0, array(array($Test__t_StringSS), array($Test__t_StringSS)), array(array($Test__t_StringSS)), array($Test__t_StringSS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opStringSSS', 0, 0, array(array($Test__t_StringSSS), array($Test__t_StringSSS)), array(array($Test__t_StringSSS)), array($Test__t_StringSSS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opByteBoolD', 0, 0, array(array($Test__t_ByteBoolD), array($Test__t_ByteBoolD)), array(array($Test__t_ByteBoolD)), array($Test__t_ByteBoolD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opShortIntD', 0, 0, array(array($Test__t_ShortIntD), array($Test__t_ShortIntD)), array(array($Test__t_ShortIntD)), array($Test__t_ShortIntD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opLongFloatD', 0, 0, array(array($Test__t_LongFloatD), array($Test__t_LongFloatD)), array(array($Test__t_LongFloatD)), array($Test__t_LongFloatD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opStringStringD', 0, 0, array(array($Test__t_StringStringD), array($Test__t_StringStringD)), array(array($Test__t_StringStringD)), array($Test__t_StringStringD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opStringMyEnumD', 0, 0, array(array($Test__t_StringMyEnumD), array($Test__t_StringMyEnumD)), array(array($Test__t_StringMyEnumD)), array($Test__t_StringMyEnumD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opMyEnumStringD', 0, 0, array(array($Test__t_MyEnumStringD), array($Test__t_MyEnumStringD)), array(array($Test__t_MyEnumStringD)), array($Test__t_MyEnumStringD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opMyStructMyEnumD', 0, 0, array(array($Test__t_MyStructMyEnumD), array($Test__t_MyStructMyEnumD)), array(array($Test__t_MyStructMyEnumD)), array($Test__t_MyStructMyEnumD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opByteBoolDS', 0, 0, array(array($Test__t_ByteBoolDS), array($Test__t_ByteBoolDS)), array(array($Test__t_ByteBoolDS)), array($Test__t_ByteBoolDS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opShortIntDS', 0, 0, array(array($Test__t_ShortIntDS), array($Test__t_ShortIntDS)), array(array($Test__t_ShortIntDS)), array($Test__t_ShortIntDS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opLongFloatDS', 0, 0, array(array($Test__t_LongFloatDS), array($Test__t_LongFloatDS)), array(array($Test__t_LongFloatDS)), array($Test__t_LongFloatDS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opStringStringDS', 0, 0, array(array($Test__t_StringStringDS), array($Test__t_StringStringDS)), array(array($Test__t_StringStringDS)), array($Test__t_StringStringDS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opStringMyEnumDS', 0, 0, array(array($Test__t_StringMyEnumDS), array($Test__t_StringMyEnumDS)), array(array($Test__t_StringMyEnumDS)), array($Test__t_StringMyEnumDS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opMyEnumStringDS', 0, 0, array(array($Test__t_MyEnumStringDS), array($Test__t_MyEnumStringDS)), array(array($Test__t_MyEnumStringDS)), array($Test__t_MyEnumStringDS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opMyStructMyEnumDS', 0, 0, array(array($Test__t_MyStructMyEnumDS), array($Test__t_MyStructMyEnumDS)), array(array($Test__t_MyStructMyEnumDS)), array($Test__t_MyStructMyEnumDS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opByteByteSD', 0, 0, array(array($Test__t_ByteByteSD), array($Test__t_ByteByteSD)), array(array($Test__t_ByteByteSD)), array($Test__t_ByteByteSD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opBoolBoolSD', 0, 0, array(array($Test__t_BoolBoolSD), array($Test__t_BoolBoolSD)), array(array($Test__t_BoolBoolSD)), array($Test__t_BoolBoolSD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opShortShortSD', 0, 0, array(array($Test__t_ShortShortSD), array($Test__t_ShortShortSD)), array(array($Test__t_ShortShortSD)), array($Test__t_ShortShortSD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opIntIntSD', 0, 0, array(array($Test__t_IntIntSD), array($Test__t_IntIntSD)), array(array($Test__t_IntIntSD)), array($Test__t_IntIntSD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opLongLongSD', 0, 0, array(array($Test__t_LongLongSD), array($Test__t_LongLongSD)), array(array($Test__t_LongLongSD)), array($Test__t_LongLongSD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opStringFloatSD', 0, 0, array(array($Test__t_StringFloatSD), array($Test__t_StringFloatSD)), array(array($Test__t_StringFloatSD)), array($Test__t_StringFloatSD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opStringDoubleSD', 0, 0, array(array($Test__t_StringDoubleSD), array($Test__t_StringDoubleSD)), array(array($Test__t_StringDoubleSD)), array($Test__t_StringDoubleSD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opStringStringSD', 0, 0, array(array($Test__t_StringStringSD), array($Test__t_StringStringSD)), array(array($Test__t_StringStringSD)), array($Test__t_StringStringSD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opMyEnumMyEnumSD', 0, 0, array(array($Test__t_MyEnumMyEnumSD), array($Test__t_MyEnumMyEnumSD)), array(array($Test__t_MyEnumMyEnumSD)), array($Test__t_MyEnumMyEnumSD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opIntS', 0, 0, array(array($Test__t_IntS)), null, array($Test__t_IntS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opByteSOneway', 0, 0, array(array($Test__t_ByteS)), null, null, null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opByteSOnewayCallCount', 0, 0, null, null, array($IcePHP__t_int), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opContext', 0, 0, null, null, array($Ice__t_Context), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opDoubleMarshaling', 0, 0, array(array($IcePHP__t_double), array($Test__t_DoubleS)), null, null, null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opIdempotent', 2, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opByte1', 0, 0, array(array($IcePHP__t_byte)), null, array($IcePHP__t_byte), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opShort1', 0, 0, array(array($IcePHP__t_short)), null, array($IcePHP__t_short), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opInt1', 0, 0, array(array($IcePHP__t_int)), null, array($IcePHP__t_int), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opLong1', 0, 0, array(array($IcePHP__t_long)), null, array($IcePHP__t_long), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opFloat1', 0, 0, array(array($IcePHP__t_float)), null, array($IcePHP__t_float), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opDouble1', 0, 0, array(array($IcePHP__t_double)), null, array($IcePHP__t_double), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opString1', 0, 0, array(array($IcePHP__t_string)), null, array($IcePHP__t_string), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opStringS1', 0, 0, array(array($Test__t_StringS)), null, array($Test__t_StringS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opByteBoolD1', 0, 0, array(array($Test__t_ByteBoolD)), null, array($Test__t_ByteBoolD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opStringS2', 0, 0, array(array($Test__t_StringS)), null, array($Test__t_StringS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opByteBoolD2', 0, 0, array(array($Test__t_ByteBoolD)), null, array($Test__t_ByteBoolD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opStringLiterals', 0, 0, null, null, array($Test__t_StringS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opWStringLiterals', 0, 0, null, null, array($Test__t_StringS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opMStruct1', 0, 0, null, null, array($Test__t_Structure), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opMStruct2', 0, 0, array(array($Test__t_Structure)), array(array($Test__t_Structure)), array($Test__t_Structure), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opMSeq1', 0, 0, null, null, array($Test__t_StringS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opMSeq2', 0, 0, array(array($Test__t_StringS)), array(array($Test__t_StringS)), array($Test__t_StringS), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opMDict1', 0, 0, null, null, array($Test__t_StringStringD), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opMDict2', 0, 0, array(array($Test__t_StringStringD)), array(array($Test__t_StringStringD)), array($Test__t_StringStringD), null);
}

namespace Test
{
    global $Test__t_MyStruct1;
    class MyStruct1
    {
        public function __construct($tesT='', $myClass=null, $myStruct1='')
        {
            $this->tesT = $tesT;
            $this->myClass = $myClass;
            $this->myStruct1 = $myStruct1;
        }

        public function __toString(): string
        {
            global $Test__t_MyStruct1;
            return IcePHP_stringify($this, $Test__t_MyStruct1);
        }

        public $tesT;
        public $myClass;
        public $myStruct1;
    }

    global $IcePHP__t_string;
    global $Test__t_MyClassPrx;
    $Test__t_MyStruct1 = IcePHP_defineStruct('::Test::MyStruct1', '\\Test\\MyStruct1', array(
        array('tesT', $IcePHP__t_string),
        array('myClass', $Test__t_MyClassPrx),
        array('myStruct1', $IcePHP__t_string)));
}

namespace Test
{
    global $Test__t_MyClass1;
    class MyClass1 extends \Ice\Value
    {
        public function __construct($tesT='', $myClass=null, $myClass1='')
        {
            $this->tesT = $tesT;
            $this->myClass = $myClass;
            $this->myClass1 = $myClass1;
        }

        public function ice_id()
        {
            return '::Test::MyClass1';
        }

        public static function ice_staticId()
        {
            return '::Test::MyClass1';
        }

        public function __toString(): string
        {
            global $Test__t_MyClass1;
            return IcePHP_stringify($this, $Test__t_MyClass1);
        }

        public $tesT;
        public $myClass;
        public $myClass1;
    }

    global $Ice__t_Value;
    global $IcePHP__t_string;
    global $Test__t_MyClassPrx;
    $Test__t_MyClass1 = IcePHP_defineClass('::Test::MyClass1', '\\Test\\MyClass1', -1, false, $Ice__t_Value, array(
        array('tesT', $IcePHP__t_string, false, 0),
        array('myClass', $Test__t_MyClassPrx, false, 0),
        array('myClass1', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_MyDerivedClass;
    global $Test__t_MyDerivedClassPrx;

    class MyDerivedClassPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::MyDerivedClass', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MyDerivedClass', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MyDerivedClass';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_MyDerivedClassPrx = IcePHP_defineProxy('::Test::MyDerivedClass', $Ice__t_ObjectPrx, array($Test__t_MyClassPrx));

    global $Test__t_MyClass1;
    global $Test__t_MyStruct1;
    IcePHP_defineOperation($Test__t_MyDerivedClassPrx, 'opDerived', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_MyDerivedClassPrx, 'opMyClass1', 0, 0, array(array($Test__t_MyClass1)), null, array($Test__t_MyClass1), null);
    IcePHP_defineOperation($Test__t_MyDerivedClassPrx, 'opMyStruct1', 0, 0, array(array($Test__t_MyStruct1)), null, array($Test__t_MyStruct1), null);
}

namespace Test
{
    if(!defined('\\Test\\s0'))
    {
        define(__NAMESPACE__ . '\\s0', "\\");
    }
}

namespace Test
{
    if(!defined('\\Test\\s1'))
    {
        define(__NAMESPACE__ . '\\s1', "A");
    }
}

namespace Test
{
    if(!defined('\\Test\\s2'))
    {
        define(__NAMESPACE__ . '\\s2', "Ice");
    }
}

namespace Test
{
    if(!defined('\\Test\\s3'))
    {
        define(__NAMESPACE__ . '\\s3', "A21");
    }
}

namespace Test
{
    if(!defined('\\Test\\s4'))
    {
        define(__NAMESPACE__ . '\\s4', "\\u0041 \\U00000041");
    }
}

namespace Test
{
    if(!defined('\\Test\\s5'))
    {
        define(__NAMESPACE__ . '\\s5', "\303\277");
    }
}

namespace Test
{
    if(!defined('\\Test\\s6'))
    {
        define(__NAMESPACE__ . '\\s6', "\317\277");
    }
}

namespace Test
{
    if(!defined('\\Test\\s7'))
    {
        define(__NAMESPACE__ . '\\s7', "\327\260");
    }
}

namespace Test
{
    if(!defined('\\Test\\s8'))
    {
        define(__NAMESPACE__ . '\\s8', "\360\220\200\200");
    }
}

namespace Test
{
    if(!defined('\\Test\\s9'))
    {
        define(__NAMESPACE__ . '\\s9', "\360\237\215\214");
    }
}

namespace Test
{
    if(!defined('\\Test\\s10'))
    {
        define(__NAMESPACE__ . '\\s10', "\340\266\247");
    }
}

namespace Test
{
    if(!defined('\\Test\\sw0'))
    {
        define(__NAMESPACE__ . '\\sw0', "\\");
    }
}

namespace Test
{
    if(!defined('\\Test\\sw1'))
    {
        define(__NAMESPACE__ . '\\sw1', "A");
    }
}

namespace Test
{
    if(!defined('\\Test\\sw2'))
    {
        define(__NAMESPACE__ . '\\sw2', "Ice");
    }
}

namespace Test
{
    if(!defined('\\Test\\sw3'))
    {
        define(__NAMESPACE__ . '\\sw3', "A21");
    }
}

namespace Test
{
    if(!defined('\\Test\\sw4'))
    {
        define(__NAMESPACE__ . '\\sw4', "\\u0041 \\U00000041");
    }
}

namespace Test
{
    if(!defined('\\Test\\sw5'))
    {
        define(__NAMESPACE__ . '\\sw5', "\303\277");
    }
}

namespace Test
{
    if(!defined('\\Test\\sw6'))
    {
        define(__NAMESPACE__ . '\\sw6', "\317\277");
    }
}

namespace Test
{
    if(!defined('\\Test\\sw7'))
    {
        define(__NAMESPACE__ . '\\sw7', "\327\260");
    }
}

namespace Test
{
    if(!defined('\\Test\\sw8'))
    {
        define(__NAMESPACE__ . '\\sw8', "\360\220\200\200");
    }
}

namespace Test
{
    if(!defined('\\Test\\sw9'))
    {
        define(__NAMESPACE__ . '\\sw9', "\360\237\215\214");
    }
}

namespace Test
{
    if(!defined('\\Test\\sw10'))
    {
        define(__NAMESPACE__ . '\\sw10', "\340\266\247");
    }
}

namespace Test
{
    if(!defined('\\Test\\ss0'))
    {
        define(__NAMESPACE__ . '\\ss0', "'\"?\\\007\010\f\n\r\t\v\006");
    }
}

namespace Test
{
    if(!defined('\\Test\\ss1'))
    {
        define(__NAMESPACE__ . '\\ss1', "'\"?\\\007\010\f\n\r\t\v\006");
    }
}

namespace Test
{
    if(!defined('\\Test\\ss2'))
    {
        define(__NAMESPACE__ . '\\ss2', "'\"?\\\007\010\f\n\r\t\v\006");
    }
}

namespace Test
{
    if(!defined('\\Test\\ss3'))
    {
        define(__NAMESPACE__ . '\\ss3', "\\\\U\\u\\");
    }
}

namespace Test
{
    if(!defined('\\Test\\ss4'))
    {
        define(__NAMESPACE__ . '\\ss4', "\\A\\");
    }
}

namespace Test
{
    if(!defined('\\Test\\ss5'))
    {
        define(__NAMESPACE__ . '\\ss5', "\\u0041\\");
    }
}

namespace Test
{
    if(!defined('\\Test\\su0'))
    {
        define(__NAMESPACE__ . '\\su0', "\304\250\305\270\303\277\304\200\341\274\200\360\220\206\224\360\220\205\252\360\220\206\230\360\237\215\200\360\237\215\201\360\237\215\202\360\237\215\203");
    }
}

namespace Test
{
    if(!defined('\\Test\\su1'))
    {
        define(__NAMESPACE__ . '\\su1', "\304\250\305\270\303\277\304\200\341\274\200\360\220\206\224\360\220\205\252\360\220\206\230\360\237\215\200\360\237\215\201\360\237\215\202\360\237\215\203");
    }
}

namespace Test
{
    if(!defined('\\Test\\su2'))
    {
        define(__NAMESPACE__ . '\\su2', "\304\250\305\270\303\277\304\200\341\274\200\360\220\206\224\360\220\205\252\360\220\206\230\360\237\215\200\360\237\215\201\360\237\215\202\360\237\215\203");
    }
}

namespace Test2
{
    global $Test2__t_MyDerivedClass;
    global $Test2__t_MyDerivedClassPrx;

    class MyDerivedClassPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test2::MyDerivedClass', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test2::MyDerivedClass', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test2::MyDerivedClass';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test2__t_MyDerivedClassPrx = IcePHP_defineProxy('::Test2::MyDerivedClass', $Ice__t_ObjectPrx, array($Test__t_MyClassPrx));
}
?>
