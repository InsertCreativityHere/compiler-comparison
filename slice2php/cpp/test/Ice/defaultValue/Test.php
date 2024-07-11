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
    global $Test__t_Color;
    class Color
    {
        const red = 0;
        const green = 1;
        const blue = 2;
    }

    $Test__t_Color = IcePHP_defineEnum('::Test::Color', array('red', 0, 'green', 1, 'blue', 2));
}

namespace Test\Nested
{
    global $Test_Nested__t_Color;
    class Color
    {
        const red = 0;
        const green = 1;
        const blue = 2;
    }

    $Test_Nested__t_Color = IcePHP_defineEnum('::Test::Nested::Color', array('red', 0, 'green', 1, 'blue', 2));
}

namespace Test
{
    global $Test__t_Struct1;
    class Struct1
    {
        public function __construct($boolFalse=false, $boolTrue=true, $b=254, $s=16000, $i=3, $l=4, $f=5.1, $d=6.2, $str="foo \\ \"bar\n \r\n\t\v\f\007\010? \007 \007", $c1=\Test\Color::red, $c2=\Test\Color::green, $c3=\Test\Color::blue, $nc1=\Test\Nested\Color::red, $nc2=\Test\Nested\Color::green, $nc3=\Test\Nested\Color::blue, $noDefault='', $zeroI=0, $zeroL=0, $zeroF=0, $zeroDotF=0, $zeroD=0, $zeroDotD=0)
        {
            $this->boolFalse = $boolFalse;
            $this->boolTrue = $boolTrue;
            $this->b = $b;
            $this->s = $s;
            $this->i = $i;
            $this->l = $l;
            $this->f = $f;
            $this->d = $d;
            $this->str = $str;
            $this->c1 = $c1;
            $this->c2 = $c2;
            $this->c3 = $c3;
            $this->nc1 = $nc1;
            $this->nc2 = $nc2;
            $this->nc3 = $nc3;
            $this->noDefault = $noDefault;
            $this->zeroI = $zeroI;
            $this->zeroL = $zeroL;
            $this->zeroF = $zeroF;
            $this->zeroDotF = $zeroDotF;
            $this->zeroD = $zeroD;
            $this->zeroDotD = $zeroDotD;
        }

        public function __toString(): string
        {
            global $Test__t_Struct1;
            return IcePHP_stringify($this, $Test__t_Struct1);
        }

        public $boolFalse;
        public $boolTrue;
        public $b;
        public $s;
        public $i;
        public $l;
        public $f;
        public $d;
        public $str;
        public $c1;
        public $c2;
        public $c3;
        public $nc1;
        public $nc2;
        public $nc3;
        public $noDefault;
        public $zeroI;
        public $zeroL;
        public $zeroF;
        public $zeroDotF;
        public $zeroD;
        public $zeroDotD;
    }

    global $IcePHP__t_bool;
    global $IcePHP__t_byte;
    global $IcePHP__t_short;
    global $IcePHP__t_int;
    global $IcePHP__t_long;
    global $IcePHP__t_float;
    global $IcePHP__t_double;
    global $IcePHP__t_string;
    global $Test__t_Color;
    global $Test_Nested__t_Color;
    $Test__t_Struct1 = IcePHP_defineStruct('::Test::Struct1', '\\Test\\Struct1', array(
        array('boolFalse', $IcePHP__t_bool),
        array('boolTrue', $IcePHP__t_bool),
        array('b', $IcePHP__t_byte),
        array('s', $IcePHP__t_short),
        array('i', $IcePHP__t_int),
        array('l', $IcePHP__t_long),
        array('f', $IcePHP__t_float),
        array('d', $IcePHP__t_double),
        array('str', $IcePHP__t_string),
        array('c1', $Test__t_Color),
        array('c2', $Test__t_Color),
        array('c3', $Test__t_Color),
        array('nc1', $Test_Nested__t_Color),
        array('nc2', $Test_Nested__t_Color),
        array('nc3', $Test_Nested__t_Color),
        array('noDefault', $IcePHP__t_string),
        array('zeroI', $IcePHP__t_int),
        array('zeroL', $IcePHP__t_long),
        array('zeroF', $IcePHP__t_float),
        array('zeroDotF', $IcePHP__t_float),
        array('zeroD', $IcePHP__t_double),
        array('zeroDotD', $IcePHP__t_double)));
}

namespace Test
{
    if(!defined('\\Test\\ConstBool'))
    {
        define(__NAMESPACE__ . '\\ConstBool', true);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstByte'))
    {
        define(__NAMESPACE__ . '\\ConstByte', 254);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstShort'))
    {
        define(__NAMESPACE__ . '\\ConstShort', 16000);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstInt'))
    {
        define(__NAMESPACE__ . '\\ConstInt', 3);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstLong'))
    {
        define(__NAMESPACE__ . '\\ConstLong', 4);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstFloat'))
    {
        define(__NAMESPACE__ . '\\ConstFloat', 5.1);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstDouble'))
    {
        define(__NAMESPACE__ . '\\ConstDouble', 6.2);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstString'))
    {
        define(__NAMESPACE__ . '\\ConstString', "foo \\ \"bar\n \r\n\t\v\f\007\010? \007 \007");
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstColor1'))
    {
        define(__NAMESPACE__ . '\\ConstColor1', \Test\Color::red);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstColor2'))
    {
        define(__NAMESPACE__ . '\\ConstColor2', \Test\Color::green);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstColor3'))
    {
        define(__NAMESPACE__ . '\\ConstColor3', \Test\Color::blue);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstNestedColor1'))
    {
        define(__NAMESPACE__ . '\\ConstNestedColor1', \Test\Nested\Color::red);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstNestedColor2'))
    {
        define(__NAMESPACE__ . '\\ConstNestedColor2', \Test\Nested\Color::green);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstNestedColor3'))
    {
        define(__NAMESPACE__ . '\\ConstNestedColor3', \Test\Nested\Color::blue);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstZeroI'))
    {
        define(__NAMESPACE__ . '\\ConstZeroI', 0);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstZeroL'))
    {
        define(__NAMESPACE__ . '\\ConstZeroL', 0);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstZeroF'))
    {
        define(__NAMESPACE__ . '\\ConstZeroF', 0);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstZeroDotF'))
    {
        define(__NAMESPACE__ . '\\ConstZeroDotF', 0);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstZeroD'))
    {
        define(__NAMESPACE__ . '\\ConstZeroD', 0);
    }
}

namespace Test
{
    if(!defined('\\Test\\ConstZeroDotD'))
    {
        define(__NAMESPACE__ . '\\ConstZeroDotD', 0);
    }
}

namespace Test
{
    global $Test__t_Struct2;
    class Struct2
    {
        public function __construct($boolTrue=\Test\ConstBool, $b=\Test\ConstByte, $s=\Test\ConstShort, $i=\Test\ConstInt, $l=\Test\ConstLong, $f=\Test\ConstFloat, $d=\Test\ConstDouble, $str=\Test\ConstString, $c1=\Test\ConstColor1, $c2=\Test\ConstColor2, $c3=\Test\ConstColor3, $nc1=\Test\ConstNestedColor1, $nc2=\Test\ConstNestedColor2, $nc3=\Test\ConstNestedColor3, $zeroI=\Test\ConstZeroI, $zeroL=\Test\ConstZeroL, $zeroF=\Test\ConstZeroF, $zeroDotF=\Test\ConstZeroDotF, $zeroD=\Test\ConstZeroD, $zeroDotD=\Test\ConstZeroDotD)
        {
            $this->boolTrue = $boolTrue;
            $this->b = $b;
            $this->s = $s;
            $this->i = $i;
            $this->l = $l;
            $this->f = $f;
            $this->d = $d;
            $this->str = $str;
            $this->c1 = $c1;
            $this->c2 = $c2;
            $this->c3 = $c3;
            $this->nc1 = $nc1;
            $this->nc2 = $nc2;
            $this->nc3 = $nc3;
            $this->zeroI = $zeroI;
            $this->zeroL = $zeroL;
            $this->zeroF = $zeroF;
            $this->zeroDotF = $zeroDotF;
            $this->zeroD = $zeroD;
            $this->zeroDotD = $zeroDotD;
        }

        public function __toString(): string
        {
            global $Test__t_Struct2;
            return IcePHP_stringify($this, $Test__t_Struct2);
        }

        public $boolTrue;
        public $b;
        public $s;
        public $i;
        public $l;
        public $f;
        public $d;
        public $str;
        public $c1;
        public $c2;
        public $c3;
        public $nc1;
        public $nc2;
        public $nc3;
        public $zeroI;
        public $zeroL;
        public $zeroF;
        public $zeroDotF;
        public $zeroD;
        public $zeroDotD;
    }

    global $IcePHP__t_bool;
    global $IcePHP__t_byte;
    global $IcePHP__t_short;
    global $IcePHP__t_int;
    global $IcePHP__t_long;
    global $IcePHP__t_float;
    global $IcePHP__t_double;
    global $IcePHP__t_string;
    global $Test__t_Color;
    global $Test_Nested__t_Color;
    $Test__t_Struct2 = IcePHP_defineStruct('::Test::Struct2', '\\Test\\Struct2', array(
        array('boolTrue', $IcePHP__t_bool),
        array('b', $IcePHP__t_byte),
        array('s', $IcePHP__t_short),
        array('i', $IcePHP__t_int),
        array('l', $IcePHP__t_long),
        array('f', $IcePHP__t_float),
        array('d', $IcePHP__t_double),
        array('str', $IcePHP__t_string),
        array('c1', $Test__t_Color),
        array('c2', $Test__t_Color),
        array('c3', $Test__t_Color),
        array('nc1', $Test_Nested__t_Color),
        array('nc2', $Test_Nested__t_Color),
        array('nc3', $Test_Nested__t_Color),
        array('zeroI', $IcePHP__t_int),
        array('zeroL', $IcePHP__t_long),
        array('zeroF', $IcePHP__t_float),
        array('zeroDotF', $IcePHP__t_float),
        array('zeroD', $IcePHP__t_double),
        array('zeroDotD', $IcePHP__t_double)));
}

namespace Test
{
    global $Test__t_Struct3;
    class Struct3
    {
        public function __construct($boolFalse=false, $boolTrue=true, $b=1, $s=2, $i=3, $l=4, $f=5.1, $d=6.2, $str="foo \\ \"bar\n \r\n\t\v\f\007\010? \007 \007", $c1=\Test\Color::red, $c2=\Test\Color::green, $c3=\Test\Color::blue, $nc1=\Test\Nested\Color::red, $nc2=\Test\Nested\Color::green, $nc3=\Test\Nested\Color::blue, $noDefault='', $zeroI=0, $zeroL=0, $zeroF=0, $zeroDotF=0, $zeroD=0, $zeroDotD=0)
        {
            $this->boolFalse = $boolFalse;
            $this->boolTrue = $boolTrue;
            $this->b = $b;
            $this->s = $s;
            $this->i = $i;
            $this->l = $l;
            $this->f = $f;
            $this->d = $d;
            $this->str = $str;
            $this->c1 = $c1;
            $this->c2 = $c2;
            $this->c3 = $c3;
            $this->nc1 = $nc1;
            $this->nc2 = $nc2;
            $this->nc3 = $nc3;
            $this->noDefault = $noDefault;
            $this->zeroI = $zeroI;
            $this->zeroL = $zeroL;
            $this->zeroF = $zeroF;
            $this->zeroDotF = $zeroDotF;
            $this->zeroD = $zeroD;
            $this->zeroDotD = $zeroDotD;
        }

        public function __toString(): string
        {
            global $Test__t_Struct3;
            return IcePHP_stringify($this, $Test__t_Struct3);
        }

        public $boolFalse;
        public $boolTrue;
        public $b;
        public $s;
        public $i;
        public $l;
        public $f;
        public $d;
        public $str;
        public $c1;
        public $c2;
        public $c3;
        public $nc1;
        public $nc2;
        public $nc3;
        public $noDefault;
        public $zeroI;
        public $zeroL;
        public $zeroF;
        public $zeroDotF;
        public $zeroD;
        public $zeroDotD;
    }

    global $IcePHP__t_bool;
    global $IcePHP__t_byte;
    global $IcePHP__t_short;
    global $IcePHP__t_int;
    global $IcePHP__t_long;
    global $IcePHP__t_float;
    global $IcePHP__t_double;
    global $IcePHP__t_string;
    global $Test__t_Color;
    global $Test_Nested__t_Color;
    $Test__t_Struct3 = IcePHP_defineStruct('::Test::Struct3', '\\Test\\Struct3', array(
        array('boolFalse', $IcePHP__t_bool),
        array('boolTrue', $IcePHP__t_bool),
        array('b', $IcePHP__t_byte),
        array('s', $IcePHP__t_short),
        array('i', $IcePHP__t_int),
        array('l', $IcePHP__t_long),
        array('f', $IcePHP__t_float),
        array('d', $IcePHP__t_double),
        array('str', $IcePHP__t_string),
        array('c1', $Test__t_Color),
        array('c2', $Test__t_Color),
        array('c3', $Test__t_Color),
        array('nc1', $Test_Nested__t_Color),
        array('nc2', $Test_Nested__t_Color),
        array('nc3', $Test_Nested__t_Color),
        array('noDefault', $IcePHP__t_string),
        array('zeroI', $IcePHP__t_int),
        array('zeroL', $IcePHP__t_long),
        array('zeroF', $IcePHP__t_float),
        array('zeroDotF', $IcePHP__t_float),
        array('zeroD', $IcePHP__t_double),
        array('zeroDotD', $IcePHP__t_double)));
}

namespace Test
{
    global $Test__t_Base;
    class Base extends \Ice\Value
    {
        public function __construct($boolFalse=false, $boolTrue=true, $b=1, $s=2, $i=3, $l=4, $f=5.1, $d=6.2, $str="foo \\ \"bar\n \r\n\t\v\f\007\010? \007 \007", $noDefault='', $zeroI=0, $zeroL=0, $zeroF=0, $zeroDotF=0, $zeroD=0, $zeroDotD=0)
        {
            $this->boolFalse = $boolFalse;
            $this->boolTrue = $boolTrue;
            $this->b = $b;
            $this->s = $s;
            $this->i = $i;
            $this->l = $l;
            $this->f = $f;
            $this->d = $d;
            $this->str = $str;
            $this->noDefault = $noDefault;
            $this->zeroI = $zeroI;
            $this->zeroL = $zeroL;
            $this->zeroF = $zeroF;
            $this->zeroDotF = $zeroDotF;
            $this->zeroD = $zeroD;
            $this->zeroDotD = $zeroDotD;
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

        public $boolFalse;
        public $boolTrue;
        public $b;
        public $s;
        public $i;
        public $l;
        public $f;
        public $d;
        public $str;
        public $noDefault;
        public $zeroI;
        public $zeroL;
        public $zeroF;
        public $zeroDotF;
        public $zeroD;
        public $zeroDotD;
    }

    global $Ice__t_Value;
    global $IcePHP__t_bool;
    global $IcePHP__t_byte;
    global $IcePHP__t_short;
    global $IcePHP__t_int;
    global $IcePHP__t_long;
    global $IcePHP__t_float;
    global $IcePHP__t_double;
    global $IcePHP__t_string;
    $Test__t_Base = IcePHP_defineClass('::Test::Base', '\\Test\\Base', -1, false, $Ice__t_Value, array(
        array('boolFalse', $IcePHP__t_bool, false, 0),
        array('boolTrue', $IcePHP__t_bool, false, 0),
        array('b', $IcePHP__t_byte, false, 0),
        array('s', $IcePHP__t_short, false, 0),
        array('i', $IcePHP__t_int, false, 0),
        array('l', $IcePHP__t_long, false, 0),
        array('f', $IcePHP__t_float, false, 0),
        array('d', $IcePHP__t_double, false, 0),
        array('str', $IcePHP__t_string, false, 0),
        array('noDefault', $IcePHP__t_string, false, 0),
        array('zeroI', $IcePHP__t_int, false, 0),
        array('zeroL', $IcePHP__t_long, false, 0),
        array('zeroF', $IcePHP__t_float, false, 0),
        array('zeroDotF', $IcePHP__t_float, false, 0),
        array('zeroD', $IcePHP__t_double, false, 0),
        array('zeroDotD', $IcePHP__t_double, false, 0)));
}

namespace Test
{
    global $Test__t_Derived;
    class Derived extends \Test\Base
    {
        public function __construct($boolFalse=false, $boolTrue=true, $b=1, $s=2, $i=3, $l=4, $f=5.1, $d=6.2, $str="foo \\ \"bar\n \r\n\t\v\f\007\010? \007 \007", $noDefault='', $zeroI=0, $zeroL=0, $zeroF=0, $zeroDotF=0, $zeroD=0, $zeroDotD=0, $c1=\Test\Color::red, $c2=\Test\Color::green, $c3=\Test\Color::blue, $nc1=\Test\Nested\Color::red, $nc2=\Test\Nested\Color::green, $nc3=\Test\Nested\Color::blue)
        {
            parent::__construct($boolFalse, $boolTrue, $b, $s, $i, $l, $f, $d, $str, $noDefault, $zeroI, $zeroL, $zeroF, $zeroDotF, $zeroD, $zeroDotD);
            $this->c1 = $c1;
            $this->c2 = $c2;
            $this->c3 = $c3;
            $this->nc1 = $nc1;
            $this->nc2 = $nc2;
            $this->nc3 = $nc3;
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

        public $c1;
        public $c2;
        public $c3;
        public $nc1;
        public $nc2;
        public $nc3;
    }

    global $Test__t_Base;
    global $Test__t_Color;
    global $Test_Nested__t_Color;
    $Test__t_Derived = IcePHP_defineClass('::Test::Derived', '\\Test\\Derived', -1, false, $Test__t_Base, array(
        array('c1', $Test__t_Color, false, 0),
        array('c2', $Test__t_Color, false, 0),
        array('c3', $Test__t_Color, false, 0),
        array('nc1', $Test_Nested__t_Color, false, 0),
        array('nc2', $Test_Nested__t_Color, false, 0),
        array('nc3', $Test_Nested__t_Color, false, 0)));
}

namespace Test
{
    global $Test__t_BaseEx;
    class BaseEx extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::Test::BaseEx';
        }

        public function __toString(): string
        {
            global $Test__t_BaseEx;
            return IcePHP_stringifyException($this, $Test__t_BaseEx);
        }

        public $boolFalse;
        public $boolTrue;
        public $b;
        public $s;
        public $i;
        public $l;
        public $f;
        public $d;
        public $str;
        public $noDefault;
        public $zeroI;
        public $zeroL;
        public $zeroF;
        public $zeroDotF;
        public $zeroD;
        public $zeroDotD;
    }
    global $IcePHP__t_bool;
    global $IcePHP__t_byte;
    global $IcePHP__t_short;
    global $IcePHP__t_int;
    global $IcePHP__t_long;
    global $IcePHP__t_float;
    global $IcePHP__t_double;
    global $IcePHP__t_string;

    $Test__t_BaseEx = IcePHP_defineException('::Test::BaseEx', '\\Test\\BaseEx', null, array(
        array('boolFalse', $IcePHP__t_bool, false, 0),
        array('boolTrue', $IcePHP__t_bool, false, 0),
        array('b', $IcePHP__t_byte, false, 0),
        array('s', $IcePHP__t_short, false, 0),
        array('i', $IcePHP__t_int, false, 0),
        array('l', $IcePHP__t_long, false, 0),
        array('f', $IcePHP__t_float, false, 0),
        array('d', $IcePHP__t_double, false, 0),
        array('str', $IcePHP__t_string, false, 0),
        array('noDefault', $IcePHP__t_string, false, 0),
        array('zeroI', $IcePHP__t_int, false, 0),
        array('zeroL', $IcePHP__t_long, false, 0),
        array('zeroF', $IcePHP__t_float, false, 0),
        array('zeroDotF', $IcePHP__t_float, false, 0),
        array('zeroD', $IcePHP__t_double, false, 0),
        array('zeroDotD', $IcePHP__t_double, false, 0)));
}

namespace Test
{
    global $Test__t_DerivedEx;
    class DerivedEx extends \Test\BaseEx
    {
        public function ice_id()
        {
            return '::Test::DerivedEx';
        }

        public function __toString(): string
        {
            global $Test__t_DerivedEx;
            return IcePHP_stringifyException($this, $Test__t_DerivedEx);
        }

        public $c1;
        public $c2;
        public $c3;
        public $nc1;
        public $nc2;
        public $nc3;
    }
    global $Test__t_Color;
    global $Test_Nested__t_Color;

    $Test__t_DerivedEx = IcePHP_defineException('::Test::DerivedEx', '\\Test\\DerivedEx', $Test__t_BaseEx, array(
        array('c1', $Test__t_Color, false, 0),
        array('c2', $Test__t_Color, false, 0),
        array('c3', $Test__t_Color, false, 0),
        array('nc1', $Test_Nested__t_Color, false, 0),
        array('nc2', $Test_Nested__t_Color, false, 0),
        array('nc3', $Test_Nested__t_Color, false, 0)));
}
?>
