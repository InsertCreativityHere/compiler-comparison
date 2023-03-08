<?php
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
    global $Test__t_Initial;
    global $Test__t_InitialPrx;
    if(!isset($Test__t_Initial))
    {
        $Test__t_Initial = IcePHP_declareClass('::Test::Initial');
        $Test__t_InitialPrx = IcePHP_declareProxy('::Test::Initial');
    }
}

namespace Test
{
    global $Test__t_Base;
    if(!isset($Test__t_Base))
    {
        $Test__t_Base = IcePHP_declareClass('::Test::Base');
    }
}

namespace Test
{
    global $Test__t_Struct1;
    class Struct1
    {
        public function __construct($bo=false, $by=0, $sh=0, $i=0, $l=0, $f=0.0, $d=0.0, $str='', $e=\Test\MyEnum::enum1, $p=null)
        {
            $this->bo = $bo;
            $this->by = $by;
            $this->sh = $sh;
            $this->i = $i;
            $this->l = $l;
            $this->f = $f;
            $this->d = $d;
            $this->str = $str;
            $this->e = $e;
            $this->p = $p;
        }

        public function __toString(): string
        {
            global $Test__t_Struct1;
            return IcePHP_stringify($this, $Test__t_Struct1);
        }

        public $bo;
        public $by;
        public $sh;
        public $i;
        public $l;
        public $f;
        public $d;
        public $str;
        public $e;
        public $p;
    }

    global $IcePHP__t_bool;
    global $IcePHP__t_byte;
    global $IcePHP__t_short;
    global $IcePHP__t_int;
    global $IcePHP__t_long;
    global $IcePHP__t_float;
    global $IcePHP__t_double;
    global $IcePHP__t_string;
    global $Test__t_MyEnum;
    global $Test__t_InitialPrx;
    $Test__t_Struct1 = IcePHP_defineStruct('::Test::Struct1', '\\Test\\Struct1', array(
        array('bo', $IcePHP__t_bool),
        array('by', $IcePHP__t_byte),
        array('sh', $IcePHP__t_short),
        array('i', $IcePHP__t_int),
        array('l', $IcePHP__t_long),
        array('f', $IcePHP__t_float),
        array('d', $IcePHP__t_double),
        array('str', $IcePHP__t_string),
        array('e', $Test__t_MyEnum),
        array('p', $Test__t_InitialPrx)));
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
    global $Test__t_IntS;

    if(!isset($Test__t_IntS))
    {
        global $IcePHP__t_int;
        $Test__t_IntS = IcePHP_defineSequence('::Test::IntS', $IcePHP__t_int);
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
    global $Test__t_BaseS;

    if(!isset($Test__t_BaseS))
    {
        global $Test__t_Base;
        $Test__t_BaseS = IcePHP_defineSequence('::Test::BaseS', $Test__t_Base);
    }
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
    global $Test__t_StringBaseD;

    if(!isset($Test__t_StringBaseD))
    {
        global $IcePHP__t_string;
        global $Test__t_Base;
        $Test__t_StringBaseD = IcePHP_defineDictionary('::Test::StringBaseD', $IcePHP__t_string, $Test__t_Base);
    }
}

namespace Test
{
    global $Test__t_Base;
    class Base extends \Ice\Value
    {
        public function __construct($b=null, $o=null, $s=null, $seq1=null, $seq2=null, $seq3=null, $seq4=null, $d1=null, $d2=null, $d3=null, $d4=null)
        {
            $this->b = $b;
            $this->o = $o;
            $this->s = is_null($s) ? new \Test\Struct1 : $s;
            $this->seq1 = $seq1;
            $this->seq2 = $seq2;
            $this->seq3 = $seq3;
            $this->seq4 = $seq4;
            $this->d1 = $d1;
            $this->d2 = $d2;
            $this->d3 = $d3;
            $this->d4 = $d4;
        }

        public function ice_id()
        {
            return '::Test::Base';
        }

        public static function ice_staticId()
        {
            return '::Test::Base';
        }

        public function __toString(): string
        {
            global $Test__t_Base;
            return IcePHP_stringify($this, $Test__t_Base);
        }

        public $b;
        public $o;
        public $s;
        public $seq1;
        public $seq2;
        public $seq3;
        public $seq4;
        public $d1;
        public $d2;
        public $d3;
        public $d4;
    }

    global $Ice__t_Value;
    global $Test__t_Base;
    global $Test__t_Struct1;
    global $Test__t_ByteS;
    global $Test__t_IntS;
    global $Test__t_MyEnumS;
    global $Test__t_BaseS;
    global $Test__t_ByteBoolD;
    global $Test__t_ShortIntD;
    global $Test__t_StringMyEnumD;
    global $Test__t_StringBaseD;
    $Test__t_Base = IcePHP_defineClass('::Test::Base', '\\Test\\Base', -1, false, false, $Ice__t_Value, array(
        array('b', $Test__t_Base, false, 0),
        array('o', $Ice__t_Value, false, 0),
        array('s', $Test__t_Struct1, false, 0),
        array('seq1', $Test__t_ByteS, false, 0),
        array('seq2', $Test__t_IntS, false, 0),
        array('seq3', $Test__t_MyEnumS, false, 0),
        array('seq4', $Test__t_BaseS, false, 0),
        array('d1', $Test__t_ByteBoolD, false, 0),
        array('d2', $Test__t_ShortIntD, false, 0),
        array('d3', $Test__t_StringMyEnumD, false, 0),
        array('d4', $Test__t_StringBaseD, false, 0)));
}

namespace Test
{
    global $Test__t_Derived;
    class Derived extends \Test\Base
    {
        public function __construct($b=null, $o=null, $s=null, $seq1=null, $seq2=null, $seq3=null, $seq4=null, $d1=null, $d2=null, $d3=null, $d4=null, $p=null)
        {
            parent::__construct($b, $o, $s, $seq1, $seq2, $seq3, $seq4, $d1, $d2, $d3, $d4);
            $this->p = $p;
        }

        public function ice_id()
        {
            return '::Test::Derived';
        }

        public static function ice_staticId()
        {
            return '::Test::Derived';
        }

        public function __toString(): string
        {
            global $Test__t_Derived;
            return IcePHP_stringify($this, $Test__t_Derived);
        }

        public $p;
    }

    $Test__t_Derived = IcePHP_declareClass('::Test::Derived');

    global $Test__t_Base;
    global $Ice__t_ObjectPrx;
    $Test__t_Derived = IcePHP_defineClass('::Test::Derived', '\\Test\\Derived', -1, false, false, $Test__t_Base, array(
        array('p', $Ice__t_ObjectPrx, false, 0)));
}

namespace Test
{
    global $Test__t_Ex;
    class Ex extends \Ice\UserException
    {
        public function __construct($s=null, $b=null)
        {
            $this->s = is_null($s) ? new \Test\Struct1 : $s;
            $this->b = $b;
        }

        public function ice_id()
        {
            return '::Test::Ex';
        }

        public function __toString(): string
        {
            global $Test__t_Ex;
            return IcePHP_stringifyException($this, $Test__t_Ex);
        }

        public $s;
        public $b;
    }
    global $Test__t_Struct1;
    global $Test__t_Base;

    $Test__t_Ex = IcePHP_defineException('::Test::Ex', '\\Test\\Ex', false, null, array(
        array('s', $Test__t_Struct1, false, 0),
        array('b', $Test__t_Base, false, 0)));
}

namespace Test
{
    global $Test__t_Initial;
    global $Test__t_InitialPrx;

    class InitialPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Initial', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Initial', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Initial';
        }
    }
    $Test__t_Initial = IcePHP_defineClass('::Test::Initial', '\\Test\\Initial', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_InitialPrx = IcePHP_defineProxy('::Test::Initial', $Ice__t_ObjectPrx, null);

    global $Test__t_ByteS;
    IcePHP_defineOperation($Test__t_InitialPrx, 'getStruct1', 0, 0, 0, null, null, array($Test__t_ByteS), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getBase', 0, 0, 0, null, null, array($Test__t_ByteS), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getEx', 0, 0, 0, null, null, array($Test__t_ByteS), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'shutdown', 0, 0, 0, null, null, null, null);
}
?>
