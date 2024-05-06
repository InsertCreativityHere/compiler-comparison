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


namespace Test
{
    global $Test__t_OneOptional;
    class OneOptional extends \Ice\Value
    {
        public function __construct($a=\Ice\None)
        {
            $this->a = $a;
        }

        public function ice_id()
        {
            return '::Test::OneOptional';
        }

        public static function ice_staticId()
        {
            return '::Test::OneOptional';
        }

        public function __toString(): string
        {
            global $Test__t_OneOptional;
            return IcePHP_stringify($this, $Test__t_OneOptional);
        }

        public $a;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    $Test__t_OneOptional = IcePHP_defineClass('::Test::OneOptional', '\\Test\\OneOptional', -1, false, $Ice__t_Value, array(
        array('a', $IcePHP__t_int, true, 1)));
}

namespace Test
{
    global $Test__t_MyInterface;
    global $Test__t_MyInterfacePrx;

    class MyInterfacePrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::MyInterface', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MyInterface', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MyInterface';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_MyInterfacePrx = IcePHP_defineProxy('::Test::MyInterface', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($Test__t_MyInterfacePrx, 'op', 0, 0, 0, null, null, null, null);
}

namespace Test
{
    global $Test__t_MyEnum;
    class MyEnum
    {
        const MyEnumMember = 0;
    }

    $Test__t_MyEnum = IcePHP_defineEnum('::Test::MyEnum', array('MyEnumMember', 0));
}

namespace Test
{
    global $Test__t_SmallStruct;
    class SmallStruct
    {
        public function __construct($m=0)
        {
            $this->m = $m;
        }

        public function __toString(): string
        {
            global $Test__t_SmallStruct;
            return IcePHP_stringify($this, $Test__t_SmallStruct);
        }

        public $m;
    }

    global $IcePHP__t_byte;
    $Test__t_SmallStruct = IcePHP_defineStruct('::Test::SmallStruct', '\\Test\\SmallStruct', array(
        array('m', $IcePHP__t_byte)));
}

namespace Test
{
    global $Test__t_FixedStruct;
    class FixedStruct
    {
        public function __construct($m=0)
        {
            $this->m = $m;
        }

        public function __toString(): string
        {
            global $Test__t_FixedStruct;
            return IcePHP_stringify($this, $Test__t_FixedStruct);
        }

        public $m;
    }

    global $IcePHP__t_int;
    $Test__t_FixedStruct = IcePHP_defineStruct('::Test::FixedStruct', '\\Test\\FixedStruct', array(
        array('m', $IcePHP__t_int)));
}

namespace Test
{
    global $Test__t_VarStruct;
    class VarStruct
    {
        public function __construct($m='')
        {
            $this->m = $m;
        }

        public function __toString(): string
        {
            global $Test__t_VarStruct;
            return IcePHP_stringify($this, $Test__t_VarStruct);
        }

        public $m;
    }

    global $IcePHP__t_string;
    $Test__t_VarStruct = IcePHP_defineStruct('::Test::VarStruct', '\\Test\\VarStruct', array(
        array('m', $IcePHP__t_string)));
}

namespace Test
{
    global $Test__t_ByteSeq;

    if(!isset($Test__t_ByteSeq))
    {
        global $IcePHP__t_byte;
        $Test__t_ByteSeq = IcePHP_defineSequence('::Test::ByteSeq', $IcePHP__t_byte);
    }
}

namespace Test
{
    global $Test__t_BoolSeq;

    if(!isset($Test__t_BoolSeq))
    {
        global $IcePHP__t_bool;
        $Test__t_BoolSeq = IcePHP_defineSequence('::Test::BoolSeq', $IcePHP__t_bool);
    }
}

namespace Test
{
    global $Test__t_ShortSeq;

    if(!isset($Test__t_ShortSeq))
    {
        global $IcePHP__t_short;
        $Test__t_ShortSeq = IcePHP_defineSequence('::Test::ShortSeq', $IcePHP__t_short);
    }
}

namespace Test
{
    global $Test__t_IntSeq;

    if(!isset($Test__t_IntSeq))
    {
        global $IcePHP__t_int;
        $Test__t_IntSeq = IcePHP_defineSequence('::Test::IntSeq', $IcePHP__t_int);
    }
}

namespace Test
{
    global $Test__t_LongSeq;

    if(!isset($Test__t_LongSeq))
    {
        global $IcePHP__t_long;
        $Test__t_LongSeq = IcePHP_defineSequence('::Test::LongSeq', $IcePHP__t_long);
    }
}

namespace Test
{
    global $Test__t_FloatSeq;

    if(!isset($Test__t_FloatSeq))
    {
        global $IcePHP__t_float;
        $Test__t_FloatSeq = IcePHP_defineSequence('::Test::FloatSeq', $IcePHP__t_float);
    }
}

namespace Test
{
    global $Test__t_DoubleSeq;

    if(!isset($Test__t_DoubleSeq))
    {
        global $IcePHP__t_double;
        $Test__t_DoubleSeq = IcePHP_defineSequence('::Test::DoubleSeq', $IcePHP__t_double);
    }
}

namespace Test
{
    global $Test__t_StringSeq;

    if(!isset($Test__t_StringSeq))
    {
        global $IcePHP__t_string;
        $Test__t_StringSeq = IcePHP_defineSequence('::Test::StringSeq', $IcePHP__t_string);
    }
}

namespace Test
{
    global $Test__t_MyEnumSeq;

    if(!isset($Test__t_MyEnumSeq))
    {
        global $Test__t_MyEnum;
        $Test__t_MyEnumSeq = IcePHP_defineSequence('::Test::MyEnumSeq', $Test__t_MyEnum);
    }
}

namespace Test
{
    global $Test__t_SmallStructSeq;

    if(!isset($Test__t_SmallStructSeq))
    {
        global $Test__t_SmallStruct;
        $Test__t_SmallStructSeq = IcePHP_defineSequence('::Test::SmallStructSeq', $Test__t_SmallStruct);
    }
}

namespace Test
{
    global $Test__t_SmallStructList;

    if(!isset($Test__t_SmallStructList))
    {
        global $Test__t_SmallStruct;
        $Test__t_SmallStructList = IcePHP_defineSequence('::Test::SmallStructList', $Test__t_SmallStruct);
    }
}

namespace Test
{
    global $Test__t_FixedStructSeq;

    if(!isset($Test__t_FixedStructSeq))
    {
        global $Test__t_FixedStruct;
        $Test__t_FixedStructSeq = IcePHP_defineSequence('::Test::FixedStructSeq', $Test__t_FixedStruct);
    }
}

namespace Test
{
    global $Test__t_FixedStructList;

    if(!isset($Test__t_FixedStructList))
    {
        global $Test__t_FixedStruct;
        $Test__t_FixedStructList = IcePHP_defineSequence('::Test::FixedStructList', $Test__t_FixedStruct);
    }
}

namespace Test
{
    global $Test__t_VarStructSeq;

    if(!isset($Test__t_VarStructSeq))
    {
        global $Test__t_VarStruct;
        $Test__t_VarStructSeq = IcePHP_defineSequence('::Test::VarStructSeq', $Test__t_VarStruct);
    }
}

namespace Test
{
    global $Test__t_OneOptionalSeq;

    if(!isset($Test__t_OneOptionalSeq))
    {
        global $Test__t_OneOptional;
        $Test__t_OneOptionalSeq = IcePHP_defineSequence('::Test::OneOptionalSeq', $Test__t_OneOptional);
    }
}

namespace Test
{
    global $Test__t_MyInterfacePrxSeq;

    if(!isset($Test__t_MyInterfacePrxSeq))
    {
        global $Test__t_MyInterfacePrx;
        $Test__t_MyInterfacePrxSeq = IcePHP_defineSequence('::Test::MyInterfacePrxSeq', $Test__t_MyInterfacePrx);
    }
}

namespace Test
{
    global $Test__t_IntIntDict;

    if(!isset($Test__t_IntIntDict))
    {
        global $IcePHP__t_int;
        global $IcePHP__t_int;
        $Test__t_IntIntDict = IcePHP_defineDictionary('::Test::IntIntDict', $IcePHP__t_int, $IcePHP__t_int);
    }
}

namespace Test
{
    global $Test__t_StringIntDict;

    if(!isset($Test__t_StringIntDict))
    {
        global $IcePHP__t_string;
        global $IcePHP__t_int;
        $Test__t_StringIntDict = IcePHP_defineDictionary('::Test::StringIntDict', $IcePHP__t_string, $IcePHP__t_int);
    }
}

namespace Test
{
    global $Test__t_IntEnumDict;

    if(!isset($Test__t_IntEnumDict))
    {
        global $IcePHP__t_int;
        global $Test__t_MyEnum;
        $Test__t_IntEnumDict = IcePHP_defineDictionary('::Test::IntEnumDict', $IcePHP__t_int, $Test__t_MyEnum);
    }
}

namespace Test
{
    global $Test__t_IntFixedStructDict;

    if(!isset($Test__t_IntFixedStructDict))
    {
        global $IcePHP__t_int;
        global $Test__t_FixedStruct;
        $Test__t_IntFixedStructDict = IcePHP_defineDictionary('::Test::IntFixedStructDict', $IcePHP__t_int, $Test__t_FixedStruct);
    }
}

namespace Test
{
    global $Test__t_IntVarStructDict;

    if(!isset($Test__t_IntVarStructDict))
    {
        global $IcePHP__t_int;
        global $Test__t_VarStruct;
        $Test__t_IntVarStructDict = IcePHP_defineDictionary('::Test::IntVarStructDict', $IcePHP__t_int, $Test__t_VarStruct);
    }
}

namespace Test
{
    global $Test__t_IntOneOptionalDict;

    if(!isset($Test__t_IntOneOptionalDict))
    {
        global $IcePHP__t_int;
        global $Test__t_OneOptional;
        $Test__t_IntOneOptionalDict = IcePHP_defineDictionary('::Test::IntOneOptionalDict', $IcePHP__t_int, $Test__t_OneOptional);
    }
}

namespace Test
{
    global $Test__t_IntMyInterfacePrxDict;

    if(!isset($Test__t_IntMyInterfacePrxDict))
    {
        global $IcePHP__t_int;
        global $Test__t_MyInterfacePrx;
        $Test__t_IntMyInterfacePrxDict = IcePHP_defineDictionary('::Test::IntMyInterfacePrxDict', $IcePHP__t_int, $Test__t_MyInterfacePrx);
    }
}

namespace Test
{
    global $Test__t_MultiOptional;
    class MultiOptional extends \Ice\Value
    {
        public function __construct($a=\Ice\None, $b=\Ice\None, $c=\Ice\None, $d=\Ice\None, $e=\Ice\None, $f=\Ice\None, $g=\Ice\None, $h=\Ice\None, $i=\Ice\None, $j=\Ice\None, $bs=\Ice\None, $ss=\Ice\None, $iid=\Ice\None, $sid=\Ice\None, $fs=\Ice\None, $vs=\Ice\None, $shs=\Ice\None, $es=\Ice\None, $fss=\Ice\None, $vss=\Ice\None, $mips=\Ice\None, $ied=\Ice\None, $ifsd=\Ice\None, $ivsd=\Ice\None, $imipd=\Ice\None, $bos=\Ice\None)
        {
            $this->a = $a;
            $this->b = $b;
            $this->c = $c;
            $this->d = $d;
            $this->e = $e;
            $this->f = $f;
            $this->g = $g;
            $this->h = $h;
            $this->i = $i;
            $this->j = $j;
            $this->bs = $bs;
            $this->ss = $ss;
            $this->iid = $iid;
            $this->sid = $sid;
            $this->fs = is_null($fs) ? new \Test\FixedStruct : $fs;
            $this->vs = is_null($vs) ? new \Test\VarStruct : $vs;
            $this->shs = $shs;
            $this->es = $es;
            $this->fss = $fss;
            $this->vss = $vss;
            $this->mips = $mips;
            $this->ied = $ied;
            $this->ifsd = $ifsd;
            $this->ivsd = $ivsd;
            $this->imipd = $imipd;
            $this->bos = $bos;
        }

        public function ice_id()
        {
            return '::Test::MultiOptional';
        }

        public static function ice_staticId()
        {
            return '::Test::MultiOptional';
        }

        public function __toString(): string
        {
            global $Test__t_MultiOptional;
            return IcePHP_stringify($this, $Test__t_MultiOptional);
        }

        public $a;
        public $b;
        public $c;
        public $d;
        public $e;
        public $f;
        public $g;
        public $h;
        public $i;
        public $j;
        public $bs;
        public $ss;
        public $iid;
        public $sid;
        public $fs;
        public $vs;
        public $shs;
        public $es;
        public $fss;
        public $vss;
        public $mips;
        public $ied;
        public $ifsd;
        public $ivsd;
        public $imipd;
        public $bos;
    }

    global $Ice__t_Value;
    global $IcePHP__t_byte;
    global $IcePHP__t_bool;
    global $IcePHP__t_short;
    global $IcePHP__t_int;
    global $IcePHP__t_long;
    global $IcePHP__t_float;
    global $IcePHP__t_double;
    global $IcePHP__t_string;
    global $Test__t_MyEnum;
    global $Test__t_MyInterfacePrx;
    global $Test__t_ByteSeq;
    global $Test__t_StringSeq;
    global $Test__t_IntIntDict;
    global $Test__t_StringIntDict;
    global $Test__t_FixedStruct;
    global $Test__t_VarStruct;
    global $Test__t_ShortSeq;
    global $Test__t_MyEnumSeq;
    global $Test__t_FixedStructSeq;
    global $Test__t_VarStructSeq;
    global $Test__t_MyInterfacePrxSeq;
    global $Test__t_IntEnumDict;
    global $Test__t_IntFixedStructDict;
    global $Test__t_IntVarStructDict;
    global $Test__t_IntMyInterfacePrxDict;
    global $Test__t_BoolSeq;
    $Test__t_MultiOptional = IcePHP_defineClass('::Test::MultiOptional', '\\Test\\MultiOptional', -1, false, $Ice__t_Value, array(
        array('a', $IcePHP__t_byte, true, 1),
        array('b', $IcePHP__t_bool, true, 2),
        array('c', $IcePHP__t_short, true, 3),
        array('d', $IcePHP__t_int, true, 4),
        array('e', $IcePHP__t_long, true, 5),
        array('f', $IcePHP__t_float, true, 6),
        array('g', $IcePHP__t_double, true, 7),
        array('h', $IcePHP__t_string, true, 8),
        array('i', $Test__t_MyEnum, true, 9),
        array('j', $Test__t_MyInterfacePrx, true, 10),
        array('bs', $Test__t_ByteSeq, true, 12),
        array('ss', $Test__t_StringSeq, true, 13),
        array('iid', $Test__t_IntIntDict, true, 14),
        array('sid', $Test__t_StringIntDict, true, 15),
        array('fs', $Test__t_FixedStruct, true, 16),
        array('vs', $Test__t_VarStruct, true, 17),
        array('shs', $Test__t_ShortSeq, true, 18),
        array('es', $Test__t_MyEnumSeq, true, 19),
        array('fss', $Test__t_FixedStructSeq, true, 20),
        array('vss', $Test__t_VarStructSeq, true, 21),
        array('mips', $Test__t_MyInterfacePrxSeq, true, 23),
        array('ied', $Test__t_IntEnumDict, true, 24),
        array('ifsd', $Test__t_IntFixedStructDict, true, 25),
        array('ivsd', $Test__t_IntVarStructDict, true, 26),
        array('imipd', $Test__t_IntMyInterfacePrxDict, true, 28),
        array('bos', $Test__t_BoolSeq, true, 29)));
}

namespace Test
{
    global $Test__t_A;
    class A extends \Ice\Value
    {
        public function __construct($requiredA=0, $ma=\Ice\None, $mb=\Ice\None, $mc=\Ice\None)
        {
            $this->requiredA = $requiredA;
            $this->ma = $ma;
            $this->mb = $mb;
            $this->mc = $mc;
        }

        public function ice_id()
        {
            return '::Test::A';
        }

        public static function ice_staticId()
        {
            return '::Test::A';
        }

        public function __toString(): string
        {
            global $Test__t_A;
            return IcePHP_stringify($this, $Test__t_A);
        }

        public $requiredA;
        public $ma;
        public $mb;
        public $mc;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    $Test__t_A = IcePHP_defineClass('::Test::A', '\\Test\\A', -1, false, $Ice__t_Value, array(
        array('requiredA', $IcePHP__t_int, false, 0),
        array('ma', $IcePHP__t_int, true, 1),
        array('mb', $IcePHP__t_int, true, 50),
        array('mc', $IcePHP__t_int, true, 500)));
}

namespace Test
{
    global $Test__t_B;
    class B extends \Test\A
    {
        public function __construct($requiredA=0, $ma=\Ice\None, $mb=\Ice\None, $mc=\Ice\None, $requiredB=0, $md=\Ice\None)
        {
            parent::__construct($requiredA, $ma, $mb, $mc);
            $this->requiredB = $requiredB;
            $this->md = $md;
        }

        public function ice_id()
        {
            return '::Test::B';
        }

        public static function ice_staticId()
        {
            return '::Test::B';
        }

        public function __toString(): string
        {
            global $Test__t_B;
            return IcePHP_stringify($this, $Test__t_B);
        }

        public $requiredB;
        public $md;
    }

    global $Test__t_A;
    global $IcePHP__t_int;
    $Test__t_B = IcePHP_defineClass('::Test::B', '\\Test\\B', -1, false, $Test__t_A, array(
        array('requiredB', $IcePHP__t_int, false, 0),
        array('md', $IcePHP__t_int, true, 10)));
}

namespace Test
{
    global $Test__t_C;
    class C extends \Test\B
    {
        public function __construct($requiredA=0, $ma=\Ice\None, $mb=\Ice\None, $mc=\Ice\None, $requiredB=0, $md=\Ice\None, $ss='', $ms=\Ice\None)
        {
            parent::__construct($requiredA, $ma, $mb, $mc, $requiredB, $md);
            $this->ss = $ss;
            $this->ms = $ms;
        }

        public function ice_id()
        {
            return '::Test::C';
        }

        public static function ice_staticId()
        {
            return '::Test::C';
        }

        public function __toString(): string
        {
            global $Test__t_C;
            return IcePHP_stringify($this, $Test__t_C);
        }

        public $ss;
        public $ms;
    }

    global $Test__t_B;
    global $IcePHP__t_string;
    $Test__t_C = IcePHP_defineClass('::Test::C', '\\Test\\C', -1, false, $Test__t_B, array(
        array('ss', $IcePHP__t_string, false, 0),
        array('ms', $IcePHP__t_string, true, 890)));
}

namespace Test
{
    global $Test__t_WD;
    class WD extends \Ice\Value
    {
        public function __construct($a=5, $s="test")
        {
            $this->a = $a;
            $this->s = $s;
        }

        public function ice_id()
        {
            return '::Test::WD';
        }

        public static function ice_staticId()
        {
            return '::Test::WD';
        }

        public function __toString(): string
        {
            global $Test__t_WD;
            return IcePHP_stringify($this, $Test__t_WD);
        }

        public $a;
        public $s;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    global $IcePHP__t_string;
    $Test__t_WD = IcePHP_defineClass('::Test::WD', '\\Test\\WD', -1, false, $Ice__t_Value, array(
        array('a', $IcePHP__t_int, true, 1),
        array('s', $IcePHP__t_string, true, 2)));
}

namespace Test
{
    global $Test__t_OptionalException;
    class OptionalException extends \Ice\UserException
    {
        public function __construct($req=false, $a=5, $b=\Ice\None)
        {
            $this->req = $req;
            $this->a = $a;
            $this->b = $b;
        }

        public function ice_id()
        {
            return '::Test::OptionalException';
        }

        public function __toString(): string
        {
            global $Test__t_OptionalException;
            return IcePHP_stringifyException($this, $Test__t_OptionalException);
        }

        public $req;
        public $a;
        public $b;
    }
    global $IcePHP__t_bool;
    global $IcePHP__t_int;
    global $IcePHP__t_string;

    $Test__t_OptionalException = IcePHP_defineException('::Test::OptionalException', '\\Test\\OptionalException', null, array(
        array('req', $IcePHP__t_bool, false, 0),
        array('a', $IcePHP__t_int, true, 1),
        array('b', $IcePHP__t_string, true, 2)));
}

namespace Test
{
    global $Test__t_DerivedException;
    class DerivedException extends \Test\OptionalException
    {
        public function __construct($req=false, $a=5, $b=\Ice\None, $d1='', $ss="test", $d2='')
        {
            parent::__construct($req, $a, $b);
            $this->d1 = $d1;
            $this->ss = $ss;
            $this->d2 = $d2;
        }

        public function ice_id()
        {
            return '::Test::DerivedException';
        }

        public function __toString(): string
        {
            global $Test__t_DerivedException;
            return IcePHP_stringifyException($this, $Test__t_DerivedException);
        }

        public $d1;
        public $ss;
        public $d2;
    }
    global $IcePHP__t_string;

    $Test__t_DerivedException = IcePHP_defineException('::Test::DerivedException', '\\Test\\DerivedException', $Test__t_OptionalException, array(
        array('d1', $IcePHP__t_string, false, 0),
        array('ss', $IcePHP__t_string, true, 600),
        array('d2', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_RequiredException;
    class RequiredException extends \Test\OptionalException
    {
        public function __construct($req=false, $a=5, $b=\Ice\None, $ss="test")
        {
            parent::__construct($req, $a, $b);
            $this->ss = $ss;
        }

        public function ice_id()
        {
            return '::Test::RequiredException';
        }

        public function __toString(): string
        {
            global $Test__t_RequiredException;
            return IcePHP_stringifyException($this, $Test__t_RequiredException);
        }

        public $ss;
    }
    global $IcePHP__t_string;

    $Test__t_RequiredException = IcePHP_defineException('::Test::RequiredException', '\\Test\\RequiredException', $Test__t_OptionalException, array(
        array('ss', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_OptionalWithCustom;
    class OptionalWithCustom extends \Ice\Value
    {
        public function __construct($l=\Ice\None, $lp=\Ice\None)
        {
            $this->l = $l;
            $this->lp = $lp;
        }

        public function ice_id()
        {
            return '::Test::OptionalWithCustom';
        }

        public static function ice_staticId()
        {
            return '::Test::OptionalWithCustom';
        }

        public function __toString(): string
        {
            global $Test__t_OptionalWithCustom;
            return IcePHP_stringify($this, $Test__t_OptionalWithCustom);
        }

        public $l;
        protected $lp;
    }

    global $Ice__t_Value;
    global $Test__t_SmallStructList;
    $Test__t_OptionalWithCustom = IcePHP_defineClass('::Test::OptionalWithCustom', '\\Test\\OptionalWithCustom', -1, false, $Ice__t_Value, array(
        array('l', $Test__t_SmallStructList, true, 1),
        array('lp', $Test__t_SmallStructList, true, 2)));
}

namespace Test
{
    global $Test__t_E;
    class E extends \Ice\Value
    {
        public function __construct($fse=null)
        {
            $this->fse = is_null($fse) ? new \Test\FixedStruct : $fse;
        }

        public function ice_id()
        {
            return '::Test::E';
        }

        public static function ice_staticId()
        {
            return '::Test::E';
        }

        public function __toString(): string
        {
            global $Test__t_E;
            return IcePHP_stringify($this, $Test__t_E);
        }

        public $fse;
    }

    global $Ice__t_Value;
    global $Test__t_FixedStruct;
    $Test__t_E = IcePHP_defineClass('::Test::E', '\\Test\\E', -1, false, $Ice__t_Value, array(
        array('fse', $Test__t_FixedStruct, false, 0)));
}

namespace Test
{
    global $Test__t_F;
    class F extends \Test\E
    {
        public function __construct($fse=null, $fsf=\Ice\None)
        {
            parent::__construct($fse);
            $this->fsf = is_null($fsf) ? new \Test\FixedStruct : $fsf;
        }

        public function ice_id()
        {
            return '::Test::F';
        }

        public static function ice_staticId()
        {
            return '::Test::F';
        }

        public function __toString(): string
        {
            global $Test__t_F;
            return IcePHP_stringify($this, $Test__t_F);
        }

        public $fsf;
    }

    global $Test__t_E;
    global $Test__t_FixedStruct;
    $Test__t_F = IcePHP_defineClass('::Test::F', '\\Test\\F', -1, false, $Test__t_E, array(
        array('fsf', $Test__t_FixedStruct, true, 1)));
}

namespace Test
{
    global $Test__t_G1;
    class G1
    {
        public function __construct($a='')
        {
            $this->a = $a;
        }

        public function __toString(): string
        {
            global $Test__t_G1;
            return IcePHP_stringify($this, $Test__t_G1);
        }

        public $a;
    }

    global $IcePHP__t_string;
    $Test__t_G1 = IcePHP_defineStruct('::Test::G1', '\\Test\\G1', array(
        array('a', $IcePHP__t_string)));
}

namespace Test
{
    global $Test__t_G2;
    class G2
    {
        public function __construct($a=0)
        {
            $this->a = $a;
        }

        public function __toString(): string
        {
            global $Test__t_G2;
            return IcePHP_stringify($this, $Test__t_G2);
        }

        public $a;
    }

    global $IcePHP__t_long;
    $Test__t_G2 = IcePHP_defineStruct('::Test::G2', '\\Test\\G2', array(
        array('a', $IcePHP__t_long)));
}

namespace Test
{
    global $Test__t_G;
    class G extends \Ice\Value
    {
        public function __construct($gg1Opt=\Ice\None, $gg2=null, $gg2Opt=\Ice\None, $gg1=null)
        {
            $this->gg1Opt = is_null($gg1Opt) ? new \Test\G1 : $gg1Opt;
            $this->gg2 = is_null($gg2) ? new \Test\G2 : $gg2;
            $this->gg2Opt = is_null($gg2Opt) ? new \Test\G2 : $gg2Opt;
            $this->gg1 = is_null($gg1) ? new \Test\G1 : $gg1;
        }

        public function ice_id()
        {
            return '::Test::G';
        }

        public static function ice_staticId()
        {
            return '::Test::G';
        }

        public function __toString(): string
        {
            global $Test__t_G;
            return IcePHP_stringify($this, $Test__t_G);
        }

        public $gg1Opt;
        public $gg2;
        public $gg2Opt;
        public $gg1;
    }

    global $Ice__t_Value;
    global $Test__t_G1;
    global $Test__t_G2;
    $Test__t_G = IcePHP_defineClass('::Test::G', '\\Test\\G', -1, false, $Ice__t_Value, array(
        array('gg1Opt', $Test__t_G1, true, 1),
        array('gg2', $Test__t_G2, false, 0),
        array('gg2Opt', $Test__t_G2, true, 0),
        array('gg1', $Test__t_G1, false, 0)));
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

    global $Ice__t_ObjectPrx;
    $Test__t_InitialPrx = IcePHP_defineProxy('::Test::Initial', $Ice__t_ObjectPrx, null);

    global $Ice__t_Value;
    global $IcePHP__t_int;
    global $IcePHP__t_string;
    global $IcePHP__t_byte;
    global $IcePHP__t_bool;
    global $IcePHP__t_short;
    global $IcePHP__t_long;
    global $IcePHP__t_float;
    global $IcePHP__t_double;
    global $Test__t_MyEnum;
    global $Test__t_SmallStruct;
    global $Test__t_FixedStruct;
    global $Test__t_VarStruct;
    global $Test__t_MyInterfacePrx;
    global $Test__t_ByteSeq;
    global $Test__t_BoolSeq;
    global $Test__t_ShortSeq;
    global $Test__t_IntSeq;
    global $Test__t_LongSeq;
    global $Test__t_FloatSeq;
    global $Test__t_DoubleSeq;
    global $Test__t_StringSeq;
    global $Test__t_SmallStructSeq;
    global $Test__t_SmallStructList;
    global $Test__t_FixedStructSeq;
    global $Test__t_FixedStructList;
    global $Test__t_VarStructSeq;
    global $Test__t_IntIntDict;
    global $Test__t_StringIntDict;
    global $Test__t_A;
    global $Test__t_G;
    IcePHP_defineOperation($Test__t_InitialPrx, 'shutdown', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'pingPong', 0, 0, 0, array(array($Ice__t_Value)), null, array($Ice__t_Value), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opOptionalException', 0, 0, 0, array(array($IcePHP__t_int, 1), array($IcePHP__t_string, 2)), null, null, array($Test__t_OptionalException));
    IcePHP_defineOperation($Test__t_InitialPrx, 'opDerivedException', 0, 0, 0, array(array($IcePHP__t_int, 1), array($IcePHP__t_string, 2)), null, null, array($Test__t_OptionalException));
    IcePHP_defineOperation($Test__t_InitialPrx, 'opRequiredException', 0, 0, 0, array(array($IcePHP__t_int, 1), array($IcePHP__t_string, 2)), null, null, array($Test__t_OptionalException));
    IcePHP_defineOperation($Test__t_InitialPrx, 'opByte', 0, 0, 0, array(array($IcePHP__t_byte, 2)), array(array($IcePHP__t_byte, 3)), array($IcePHP__t_byte, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opBool', 0, 0, 0, array(array($IcePHP__t_bool, 2)), array(array($IcePHP__t_bool, 3)), array($IcePHP__t_bool, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opShort', 0, 0, 0, array(array($IcePHP__t_short, 2)), array(array($IcePHP__t_short, 3)), array($IcePHP__t_short, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opInt', 0, 0, 0, array(array($IcePHP__t_int, 2)), array(array($IcePHP__t_int, 3)), array($IcePHP__t_int, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opLong', 0, 0, 0, array(array($IcePHP__t_long, 1)), array(array($IcePHP__t_long, 2)), array($IcePHP__t_long, 3), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opFloat', 0, 0, 0, array(array($IcePHP__t_float, 2)), array(array($IcePHP__t_float, 3)), array($IcePHP__t_float, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opDouble', 0, 0, 0, array(array($IcePHP__t_double, 2)), array(array($IcePHP__t_double, 3)), array($IcePHP__t_double, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opString', 0, 0, 0, array(array($IcePHP__t_string, 2)), array(array($IcePHP__t_string, 3)), array($IcePHP__t_string, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opMyEnum', 0, 0, 0, array(array($Test__t_MyEnum, 2)), array(array($Test__t_MyEnum, 3)), array($Test__t_MyEnum, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opSmallStruct', 0, 0, 0, array(array($Test__t_SmallStruct, 2)), array(array($Test__t_SmallStruct, 3)), array($Test__t_SmallStruct, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opFixedStruct', 0, 0, 0, array(array($Test__t_FixedStruct, 2)), array(array($Test__t_FixedStruct, 3)), array($Test__t_FixedStruct, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opVarStruct', 0, 0, 0, array(array($Test__t_VarStruct, 2)), array(array($Test__t_VarStruct, 3)), array($Test__t_VarStruct, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opMyInterfaceProxy', 0, 0, 0, array(array($Test__t_MyInterfacePrx, 2)), array(array($Test__t_MyInterfacePrx, 3)), array($Test__t_MyInterfacePrx, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opByteSeq', 0, 0, 0, array(array($Test__t_ByteSeq, 2)), array(array($Test__t_ByteSeq, 3)), array($Test__t_ByteSeq, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opBoolSeq', 0, 0, 0, array(array($Test__t_BoolSeq, 2)), array(array($Test__t_BoolSeq, 3)), array($Test__t_BoolSeq, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opShortSeq', 0, 0, 0, array(array($Test__t_ShortSeq, 2)), array(array($Test__t_ShortSeq, 3)), array($Test__t_ShortSeq, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opIntSeq', 0, 0, 0, array(array($Test__t_IntSeq, 2)), array(array($Test__t_IntSeq, 3)), array($Test__t_IntSeq, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opLongSeq', 0, 0, 0, array(array($Test__t_LongSeq, 2)), array(array($Test__t_LongSeq, 3)), array($Test__t_LongSeq, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opFloatSeq', 0, 0, 0, array(array($Test__t_FloatSeq, 2)), array(array($Test__t_FloatSeq, 3)), array($Test__t_FloatSeq, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opDoubleSeq', 0, 0, 0, array(array($Test__t_DoubleSeq, 2)), array(array($Test__t_DoubleSeq, 3)), array($Test__t_DoubleSeq, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opStringSeq', 0, 0, 0, array(array($Test__t_StringSeq, 2)), array(array($Test__t_StringSeq, 3)), array($Test__t_StringSeq, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opSmallStructSeq', 0, 0, 0, array(array($Test__t_SmallStructSeq, 2)), array(array($Test__t_SmallStructSeq, 3)), array($Test__t_SmallStructSeq, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opSmallStructList', 0, 0, 0, array(array($Test__t_SmallStructList, 2)), array(array($Test__t_SmallStructList, 3)), array($Test__t_SmallStructList, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opFixedStructSeq', 0, 0, 0, array(array($Test__t_FixedStructSeq, 2)), array(array($Test__t_FixedStructSeq, 3)), array($Test__t_FixedStructSeq, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opFixedStructList', 0, 0, 0, array(array($Test__t_FixedStructList, 2)), array(array($Test__t_FixedStructList, 3)), array($Test__t_FixedStructList, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opVarStructSeq', 0, 0, 0, array(array($Test__t_VarStructSeq, 2)), array(array($Test__t_VarStructSeq, 3)), array($Test__t_VarStructSeq, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opIntIntDict', 0, 0, 0, array(array($Test__t_IntIntDict, 2)), array(array($Test__t_IntIntDict, 3)), array($Test__t_IntIntDict, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opStringIntDict', 0, 0, 0, array(array($Test__t_StringIntDict, 2)), array(array($Test__t_StringIntDict, 3)), array($Test__t_StringIntDict, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opClassAndUnknownOptional', 0, 0, 0, array(array($Test__t_A)), null, null, null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opG', 0, 0, 0, array(array($Test__t_G)), null, array($Test__t_G), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opVoid', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opMStruct1', 0, 0, 0, null, null, array($Test__t_SmallStruct, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opMStruct2', 0, 0, 0, array(array($Test__t_SmallStruct, 2)), array(array($Test__t_SmallStruct, 3)), array($Test__t_SmallStruct, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opMSeq1', 0, 0, 0, null, null, array($Test__t_StringSeq, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opMSeq2', 0, 0, 0, array(array($Test__t_StringSeq, 2)), array(array($Test__t_StringSeq, 3)), array($Test__t_StringSeq, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opMDict1', 0, 0, 0, null, null, array($Test__t_StringIntDict, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opMDict2', 0, 0, 0, array(array($Test__t_StringIntDict, 2)), array(array($Test__t_StringIntDict, 3)), array($Test__t_StringIntDict, 1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'supportsRequiredParams', 0, 0, 0, null, null, array($IcePHP__t_bool), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'supportsJavaSerializable', 0, 0, 0, null, null, array($IcePHP__t_bool), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'supportsNullOptional', 0, 0, 0, null, null, array($IcePHP__t_bool), null);
}
?>
