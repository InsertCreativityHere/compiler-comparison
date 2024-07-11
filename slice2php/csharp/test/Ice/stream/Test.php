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
    require_once 'Ice/BuiltinSequences.php';
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
    if(!isset($Test__t_MyClass))
    {
        $Test__t_MyClass = IcePHP_declareClass('::Test::MyClass');
    }
}

namespace Test
{
    global $Test__t_MyInterface;
    global $Test__t_MyInterfacePrx;
    if(!isset($Test__t_MyInterface))
    {
        $Test__t_MyInterface = IcePHP_declareClass('::Test::MyInterface');
        $Test__t_MyInterfacePrx = IcePHP_declareProxy('::Test::MyInterface');
    }
}

namespace Test
{
    global $Test__t_LargeStruct;
    class LargeStruct
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
            global $Test__t_LargeStruct;
            return IcePHP_stringify($this, $Test__t_LargeStruct);
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
    global $Test__t_MyInterfacePrx;
    $Test__t_LargeStruct = IcePHP_defineStruct('::Test::LargeStruct', '\\Test\\LargeStruct', array(
        array('bo', $IcePHP__t_bool),
        array('by', $IcePHP__t_byte),
        array('sh', $IcePHP__t_short),
        array('i', $IcePHP__t_int),
        array('l', $IcePHP__t_long),
        array('f', $IcePHP__t_float),
        array('d', $IcePHP__t_double),
        array('str', $IcePHP__t_string),
        array('e', $Test__t_MyEnum),
        array('p', $Test__t_MyInterfacePrx)));
}

namespace Test
{
    global $Test__t_OptionalClass;
    class OptionalClass extends \Ice\Value
    {
        public function __construct($bo=false, $by=0, $sh=\Ice\None, $i=\Ice\None)
        {
            $this->bo = $bo;
            $this->by = $by;
            $this->sh = $sh;
            $this->i = $i;
        }

        public function ice_id()
        {
            return '::Test::OptionalClass';
        }

        public static function ice_staticId()
        {
            return '::Test::OptionalClass';
        }

        public function __toString(): string
        {
            global $Test__t_OptionalClass;
            return IcePHP_stringify($this, $Test__t_OptionalClass);
        }

        public $bo;
        public $by;
        public $sh;
        public $i;
    }

    global $Ice__t_Value;
    global $IcePHP__t_bool;
    global $IcePHP__t_byte;
    global $IcePHP__t_short;
    global $IcePHP__t_int;
    $Test__t_OptionalClass = IcePHP_defineClass('::Test::OptionalClass', '\\Test\\OptionalClass', -1, false, $Ice__t_Value, array(
        array('bo', $IcePHP__t_bool, false, 0),
        array('by', $IcePHP__t_byte, false, 0),
        array('sh', $IcePHP__t_short, true, 1),
        array('i', $IcePHP__t_int, true, 2)));
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
        global $Test__t_MyClass;
        $Test__t_MyClassS = IcePHP_defineSequence('::Test::MyClassS', $Test__t_MyClass);
    }
}

namespace Test
{
    global $Test__t_BoolSS;

    if(!isset($Test__t_BoolSS))
    {
        global $Ice__t_BoolSeq;
        $Test__t_BoolSS = IcePHP_defineSequence('::Test::BoolSS', $Ice__t_BoolSeq);
    }
}

namespace Test
{
    global $Test__t_ByteSS;

    if(!isset($Test__t_ByteSS))
    {
        global $Ice__t_ByteSeq;
        $Test__t_ByteSS = IcePHP_defineSequence('::Test::ByteSS', $Ice__t_ByteSeq);
    }
}

namespace Test
{
    global $Test__t_ShortSS;

    if(!isset($Test__t_ShortSS))
    {
        global $Ice__t_ShortSeq;
        $Test__t_ShortSS = IcePHP_defineSequence('::Test::ShortSS', $Ice__t_ShortSeq);
    }
}

namespace Test
{
    global $Test__t_IntSS;

    if(!isset($Test__t_IntSS))
    {
        global $Ice__t_IntSeq;
        $Test__t_IntSS = IcePHP_defineSequence('::Test::IntSS', $Ice__t_IntSeq);
    }
}

namespace Test
{
    global $Test__t_LongSS;

    if(!isset($Test__t_LongSS))
    {
        global $Ice__t_LongSeq;
        $Test__t_LongSS = IcePHP_defineSequence('::Test::LongSS', $Ice__t_LongSeq);
    }
}

namespace Test
{
    global $Test__t_FloatSS;

    if(!isset($Test__t_FloatSS))
    {
        global $Ice__t_FloatSeq;
        $Test__t_FloatSS = IcePHP_defineSequence('::Test::FloatSS', $Ice__t_FloatSeq);
    }
}

namespace Test
{
    global $Test__t_DoubleSS;

    if(!isset($Test__t_DoubleSS))
    {
        global $Ice__t_DoubleSeq;
        $Test__t_DoubleSS = IcePHP_defineSequence('::Test::DoubleSS', $Ice__t_DoubleSeq);
    }
}

namespace Test
{
    global $Test__t_StringSS;

    if(!isset($Test__t_StringSS))
    {
        global $Ice__t_StringSeq;
        $Test__t_StringSS = IcePHP_defineSequence('::Test::StringSS', $Ice__t_StringSeq);
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
    global $Test__t_StringMyClassD;

    if(!isset($Test__t_StringMyClassD))
    {
        global $IcePHP__t_string;
        global $Test__t_MyClass;
        $Test__t_StringMyClassD = IcePHP_defineDictionary('::Test::StringMyClassD', $IcePHP__t_string, $Test__t_MyClass);
    }
}

namespace Test
{
    global $Test__t_BoolList;

    if(!isset($Test__t_BoolList))
    {
        global $IcePHP__t_bool;
        $Test__t_BoolList = IcePHP_defineSequence('::Test::BoolList', $IcePHP__t_bool);
    }
}

namespace Test
{
    global $Test__t_ByteList;

    if(!isset($Test__t_ByteList))
    {
        global $IcePHP__t_byte;
        $Test__t_ByteList = IcePHP_defineSequence('::Test::ByteList', $IcePHP__t_byte);
    }
}

namespace Test
{
    global $Test__t_MyEnumList;

    if(!isset($Test__t_MyEnumList))
    {
        global $Test__t_MyEnum;
        $Test__t_MyEnumList = IcePHP_defineSequence('::Test::MyEnumList', $Test__t_MyEnum);
    }
}

namespace Test
{
    global $Test__t_LargeStructList;

    if(!isset($Test__t_LargeStructList))
    {
        global $Test__t_LargeStruct;
        $Test__t_LargeStructList = IcePHP_defineSequence('::Test::LargeStructList', $Test__t_LargeStruct);
    }
}

namespace Test
{
    global $Test__t_MyClassList;

    if(!isset($Test__t_MyClassList))
    {
        global $Test__t_MyClass;
        $Test__t_MyClassList = IcePHP_defineSequence('::Test::MyClassList', $Test__t_MyClass);
    }
}

namespace Test
{
    global $Test__t_MyInterfaceProxyList;

    if(!isset($Test__t_MyInterfaceProxyList))
    {
        global $Test__t_MyInterfacePrx;
        $Test__t_MyInterfaceProxyList = IcePHP_defineSequence('::Test::MyInterfaceProxyList', $Test__t_MyInterfacePrx);
    }
}

namespace Test
{
    global $Test__t_ShortLinkedList;

    if(!isset($Test__t_ShortLinkedList))
    {
        global $IcePHP__t_short;
        $Test__t_ShortLinkedList = IcePHP_defineSequence('::Test::ShortLinkedList', $IcePHP__t_short);
    }
}

namespace Test
{
    global $Test__t_IntLinkedList;

    if(!isset($Test__t_IntLinkedList))
    {
        global $IcePHP__t_int;
        $Test__t_IntLinkedList = IcePHP_defineSequence('::Test::IntLinkedList', $IcePHP__t_int);
    }
}

namespace Test
{
    global $Test__t_MyEnumLinkedList;

    if(!isset($Test__t_MyEnumLinkedList))
    {
        global $Test__t_MyEnum;
        $Test__t_MyEnumLinkedList = IcePHP_defineSequence('::Test::MyEnumLinkedList', $Test__t_MyEnum);
    }
}

namespace Test
{
    global $Test__t_LargeStructLinkedList;

    if(!isset($Test__t_LargeStructLinkedList))
    {
        global $Test__t_LargeStruct;
        $Test__t_LargeStructLinkedList = IcePHP_defineSequence('::Test::LargeStructLinkedList', $Test__t_LargeStruct);
    }
}

namespace Test
{
    global $Test__t_LongStack;

    if(!isset($Test__t_LongStack))
    {
        global $IcePHP__t_long;
        $Test__t_LongStack = IcePHP_defineSequence('::Test::LongStack', $IcePHP__t_long);
    }
}

namespace Test
{
    global $Test__t_FloatStack;

    if(!isset($Test__t_FloatStack))
    {
        global $IcePHP__t_float;
        $Test__t_FloatStack = IcePHP_defineSequence('::Test::FloatStack', $IcePHP__t_float);
    }
}

namespace Test
{
    global $Test__t_LargeStructStack;

    if(!isset($Test__t_LargeStructStack))
    {
        global $Test__t_LargeStruct;
        $Test__t_LargeStructStack = IcePHP_defineSequence('::Test::LargeStructStack', $Test__t_LargeStruct);
    }
}

namespace Test
{
    global $Test__t_MyInterfaceProxyStack;

    if(!isset($Test__t_MyInterfaceProxyStack))
    {
        global $Test__t_MyInterfacePrx;
        $Test__t_MyInterfaceProxyStack = IcePHP_defineSequence('::Test::MyInterfaceProxyStack', $Test__t_MyInterfacePrx);
    }
}

namespace Test
{
    global $Test__t_ObjectStack;

    if(!isset($Test__t_ObjectStack))
    {
        global $Ice__t_Value;
        $Test__t_ObjectStack = IcePHP_defineSequence('::Test::ObjectStack', $Ice__t_Value);
    }
}

namespace Test
{
    global $Test__t_MyClassStack;

    if(!isset($Test__t_MyClassStack))
    {
        global $Test__t_MyClass;
        $Test__t_MyClassStack = IcePHP_defineSequence('::Test::MyClassStack', $Test__t_MyClass);
    }
}

namespace Test
{
    global $Test__t_DoubleQueue;

    if(!isset($Test__t_DoubleQueue))
    {
        global $IcePHP__t_double;
        $Test__t_DoubleQueue = IcePHP_defineSequence('::Test::DoubleQueue', $IcePHP__t_double);
    }
}

namespace Test
{
    global $Test__t_StringQueue;

    if(!isset($Test__t_StringQueue))
    {
        global $IcePHP__t_string;
        $Test__t_StringQueue = IcePHP_defineSequence('::Test::StringQueue', $IcePHP__t_string);
    }
}

namespace Test
{
    global $Test__t_LargeStructQueue;

    if(!isset($Test__t_LargeStructQueue))
    {
        global $Test__t_LargeStruct;
        $Test__t_LargeStructQueue = IcePHP_defineSequence('::Test::LargeStructQueue', $Test__t_LargeStruct);
    }
}

namespace Test
{
    global $Test__t_StringSList;

    if(!isset($Test__t_StringSList))
    {
        global $Ice__t_StringSeq;
        $Test__t_StringSList = IcePHP_defineSequence('::Test::StringSList', $Ice__t_StringSeq);
    }
}

namespace Test
{
    global $Test__t_StringSStack;

    if(!isset($Test__t_StringSStack))
    {
        global $Ice__t_StringSeq;
        $Test__t_StringSStack = IcePHP_defineSequence('::Test::StringSStack', $Ice__t_StringSeq);
    }
}

namespace Test
{
    global $Test__t_SortedStringStringD;

    if(!isset($Test__t_SortedStringStringD))
    {
        global $IcePHP__t_string;
        global $IcePHP__t_string;
        $Test__t_SortedStringStringD = IcePHP_defineDictionary('::Test::SortedStringStringD', $IcePHP__t_string, $IcePHP__t_string);
    }
}

namespace Test
{
    global $Test__t_MyClass;
    class MyClass extends \Ice\Value
    {
        public function __construct($c=null, $o=null, $s=null, $seq1=null, $seq2=null, $seq3=null, $seq4=null, $seq5=null, $seq6=null, $seq7=null, $seq8=null, $seq9=null, $seq10=null, $d=null)
        {
            $this->c = $c;
            $this->o = $o;
            $this->s = is_null($s) ? new \Test\LargeStruct : $s;
            $this->seq1 = $seq1;
            $this->seq2 = $seq2;
            $this->seq3 = $seq3;
            $this->seq4 = $seq4;
            $this->seq5 = $seq5;
            $this->seq6 = $seq6;
            $this->seq7 = $seq7;
            $this->seq8 = $seq8;
            $this->seq9 = $seq9;
            $this->seq10 = $seq10;
            $this->d = $d;
        }

        public function ice_id()
        {
            return '::Test::MyClass';
        }

        public static function ice_staticId()
        {
            return '::Test::MyClass';
        }

        public function __toString(): string
        {
            global $Test__t_MyClass;
            return IcePHP_stringify($this, $Test__t_MyClass);
        }

        public $c;
        public $o;
        public $s;
        public $seq1;
        public $seq2;
        public $seq3;
        public $seq4;
        public $seq5;
        public $seq6;
        public $seq7;
        public $seq8;
        public $seq9;
        public $seq10;
        public $d;
    }

    global $Ice__t_Value;
    global $Test__t_MyClass;
    global $Test__t_LargeStruct;
    global $Ice__t_BoolSeq;
    global $Ice__t_ByteSeq;
    global $Ice__t_ShortSeq;
    global $Ice__t_IntSeq;
    global $Ice__t_LongSeq;
    global $Ice__t_FloatSeq;
    global $Ice__t_DoubleSeq;
    global $Ice__t_StringSeq;
    global $Test__t_MyEnumS;
    global $Test__t_MyClassS;
    global $Test__t_StringMyClassD;
    $Test__t_MyClass = IcePHP_defineClass('::Test::MyClass', '\\Test\\MyClass', -1, false, $Ice__t_Value, array(
        array('c', $Test__t_MyClass, false, 0),
        array('o', $Ice__t_Value, false, 0),
        array('s', $Test__t_LargeStruct, false, 0),
        array('seq1', $Ice__t_BoolSeq, false, 0),
        array('seq2', $Ice__t_ByteSeq, false, 0),
        array('seq3', $Ice__t_ShortSeq, false, 0),
        array('seq4', $Ice__t_IntSeq, false, 0),
        array('seq5', $Ice__t_LongSeq, false, 0),
        array('seq6', $Ice__t_FloatSeq, false, 0),
        array('seq7', $Ice__t_DoubleSeq, false, 0),
        array('seq8', $Ice__t_StringSeq, false, 0),
        array('seq9', $Test__t_MyEnumS, false, 0),
        array('seq10', $Test__t_MyClassS, false, 0),
        array('d', $Test__t_StringMyClassD, false, 0)));
}

namespace Test
{
    global $Test__t_MyException;
    class MyException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::Test::MyException';
        }

        public function __toString(): string
        {
            global $Test__t_MyException;
            return IcePHP_stringifyException($this, $Test__t_MyException);
        }

        public $c;
    }
    global $Test__t_MyClass;

    $Test__t_MyException = IcePHP_defineException('::Test::MyException', '\\Test\\MyException', null, array(
        array('c', $Test__t_MyClass, false, 0)));
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
}
?>
