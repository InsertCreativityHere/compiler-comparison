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
    global $Test__t_S;
    class S
    {
        public function __construct($str='')
        {
            $this->str = $str;
        }

        public function __toString(): string
        {
            global $Test__t_S;
            return IcePHP_stringify($this, $Test__t_S);
        }

        public $str;
    }

    global $IcePHP__t_string;
    $Test__t_S = IcePHP_defineStruct('::Test::S', '\\Test\\S', array(
        array('str', $IcePHP__t_string)));
}

namespace Test
{
    global $Test__t_Base;
    class Base extends \Ice\Value
    {
        public function __construct($theS=null, $str='')
        {
            $this->theS = is_null($theS) ? new \Test\S : $theS;
            $this->str = $str;
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

        public $theS;
        public $str;
    }

    global $Ice__t_Value;
    global $Test__t_S;
    global $IcePHP__t_string;
    $Test__t_Base = IcePHP_defineClass('::Test::Base', '\\Test\\Base', -1, false, false, $Ice__t_Value, array(
        array('theS', $Test__t_S, false, 0),
        array('str', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_AbstractBase;
    global $Test__t_AbstractBasePrx;
    class AbstractBase extends \Test\Base
    {
        public function __construct($theS=null, $str='')
        {
            parent::__construct($theS, $str);
        }

        public function ice_id()
        {
            return '::Test::AbstractBase';
        }

        public static function ice_staticId()
        {
            return '::Test::AbstractBase';
        }

        public function __toString(): string
        {
            global $Test__t_AbstractBase;
            return IcePHP_stringify($this, $Test__t_AbstractBase);
        }
    }

    class AbstractBasePrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::AbstractBase', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::AbstractBase', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::AbstractBase';
        }
    }

    global $Test__t_Base;
    $Test__t_AbstractBase = IcePHP_defineClass('::Test::AbstractBase', '\\Test\\AbstractBase', -1, false, false, $Test__t_Base, null);

    global $Ice__t_ObjectPrx;
    $Test__t_AbstractBasePrx = IcePHP_defineProxy('::Test::AbstractBase', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($Test__t_AbstractBasePrx, 'op', 0, 0, 0, null, null, null, null);
}

namespace Test
{
    global $Test__t_B;
    if(!isset($Test__t_B))
    {
        $Test__t_B = IcePHP_declareClass('::Test::B');
    }
}

namespace Test
{
    global $Test__t_C;
    if(!isset($Test__t_C))
    {
        $Test__t_C = IcePHP_declareClass('::Test::C');
    }
}

namespace Test
{
    global $Test__t_A;
    class A extends \Ice\Value
    {
        public function __construct($theB=null, $theC=null, $preMarshalInvoked=false, $postUnmarshalInvoked=false)
        {
            $this->theB = $theB;
            $this->theC = $theC;
            $this->preMarshalInvoked = $preMarshalInvoked;
            $this->postUnmarshalInvoked = $postUnmarshalInvoked;
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

        public $theB;
        public $theC;
        public $preMarshalInvoked;
        public $postUnmarshalInvoked;
    }

    $Test__t_A = IcePHP_declareClass('::Test::A');

    global $Ice__t_Value;
    global $Test__t_B;
    global $Test__t_C;
    global $IcePHP__t_bool;
    $Test__t_A = IcePHP_defineClass('::Test::A', '\\Test\\A', -1, false, false, $Ice__t_Value, array(
        array('theB', $Test__t_B, false, 0),
        array('theC', $Test__t_C, false, 0),
        array('preMarshalInvoked', $IcePHP__t_bool, false, 0),
        array('postUnmarshalInvoked', $IcePHP__t_bool, false, 0)));
}

namespace Test
{
    global $Test__t_B;
    class B extends \Test\A
    {
        public function __construct($theB=null, $theC=null, $preMarshalInvoked=false, $postUnmarshalInvoked=false, $theA=null)
        {
            parent::__construct($theB, $theC, $preMarshalInvoked, $postUnmarshalInvoked);
            $this->theA = $theA;
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

        public $theA;
    }

    global $Test__t_A;
    $Test__t_B = IcePHP_defineClass('::Test::B', '\\Test\\B', -1, false, false, $Test__t_A, array(
        array('theA', $Test__t_A, false, 0)));
}

namespace Test
{
    global $Test__t_C;
    class C extends \Ice\Value
    {
        public function __construct($theB=null, $preMarshalInvoked=false, $postUnmarshalInvoked=false)
        {
            $this->theB = $theB;
            $this->preMarshalInvoked = $preMarshalInvoked;
            $this->postUnmarshalInvoked = $postUnmarshalInvoked;
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

        public $theB;
        public $preMarshalInvoked;
        public $postUnmarshalInvoked;
    }

    global $Ice__t_Value;
    global $Test__t_B;
    global $IcePHP__t_bool;
    $Test__t_C = IcePHP_defineClass('::Test::C', '\\Test\\C', -1, false, false, $Ice__t_Value, array(
        array('theB', $Test__t_B, false, 0),
        array('preMarshalInvoked', $IcePHP__t_bool, false, 0),
        array('postUnmarshalInvoked', $IcePHP__t_bool, false, 0)));
}

namespace Test
{
    global $Test__t_D;
    class D extends \Ice\Value
    {
        public function __construct($theA=null, $theB=null, $theC=null, $preMarshalInvoked=false, $postUnmarshalInvoked=false)
        {
            $this->theA = $theA;
            $this->theB = $theB;
            $this->theC = $theC;
            $this->preMarshalInvoked = $preMarshalInvoked;
            $this->postUnmarshalInvoked = $postUnmarshalInvoked;
        }

        public function ice_id()
        {
            return '::Test::D';
        }

        public static function ice_staticId()
        {
            return '::Test::D';
        }

        public function __toString(): string
        {
            global $Test__t_D;
            return IcePHP_stringify($this, $Test__t_D);
        }

        public $theA;
        public $theB;
        public $theC;
        public $preMarshalInvoked;
        public $postUnmarshalInvoked;
    }

    $Test__t_D = IcePHP_declareClass('::Test::D');

    global $Ice__t_Value;
    global $Test__t_A;
    global $Test__t_B;
    global $Test__t_C;
    global $IcePHP__t_bool;
    $Test__t_D = IcePHP_defineClass('::Test::D', '\\Test\\D', -1, false, false, $Ice__t_Value, array(
        array('theA', $Test__t_A, false, 0),
        array('theB', $Test__t_B, false, 0),
        array('theC', $Test__t_C, false, 0),
        array('preMarshalInvoked', $IcePHP__t_bool, false, 0),
        array('postUnmarshalInvoked', $IcePHP__t_bool, false, 0)));
}

namespace Test
{
    global $Test__t_E;
    class E extends \Ice\Value
    {
        public function __construct($i=0, $s='')
        {
            $this->i = $i;
            $this->s = $s;
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

        protected $i;
        protected $s;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    global $IcePHP__t_string;
    $Test__t_E = IcePHP_defineClass('::Test::E', '\\Test\\E', -1, false, false, $Ice__t_Value, array(
        array('i', $IcePHP__t_int, false, 0),
        array('s', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_F;
    class F extends \Ice\Value
    {
        public function __construct($e1=null, $e2=null)
        {
            $this->e1 = $e1;
            $this->e2 = $e2;
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

        protected $e1;
        public $e2;
    }

    $Test__t_F = IcePHP_declareClass('::Test::F');

    global $Ice__t_Value;
    global $Test__t_E;
    $Test__t_F = IcePHP_defineClass('::Test::F', '\\Test\\F', -1, false, false, $Ice__t_Value, array(
        array('e1', $Test__t_E, false, 0),
        array('e2', $Test__t_E, false, 0)));
}

namespace Test
{
    global $Test__t_G;
    class G extends \Test\Base
    {
        public function __construct($theS=null, $str='')
        {
            parent::__construct($theS, $str);
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
    }

    global $Test__t_Base;
    $Test__t_G = IcePHP_defineClass('::Test::G', '\\Test\\G', -1, false, false, $Test__t_Base, null);
}

namespace Test
{
    global $Test__t_I;
    global $Test__t_IPrx;

    class IPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::I', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::I', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::I';
        }
    }
    $Test__t_I = IcePHP_defineClass('::Test::I', '\\Test\\I', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_IPrx = IcePHP_defineProxy('::Test::I', $Ice__t_ObjectPrx, null);
}

namespace Test
{
    global $Test__t_J;
    global $Test__t_JPrx;

    class JPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::J', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::J', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::J';
        }
    }
    $Test__t_J = IcePHP_defineClass('::Test::J', '\\Test\\J', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_JPrx = IcePHP_defineProxy('::Test::J', $Ice__t_ObjectPrx, array($Test__t_IPrx));
}

namespace Test
{
    global $Test__t_H;
    class H extends \Ice\Value
    {
        public function __construct()
        {
        }

        public function ice_id()
        {
            return '::Test::H';
        }

        public static function ice_staticId()
        {
            return '::Test::H';
        }

        public function __toString(): string
        {
            global $Test__t_H;
            return IcePHP_stringify($this, $Test__t_H);
        }
    }

    global $Ice__t_Value;
    $Test__t_H = IcePHP_defineClass('::Test::H', '\\Test\\H', -1, false, false, $Ice__t_Value, null);
}

namespace Test
{
    global $Test__t_N;
    class N extends \Ice\Value
    {
        public function __construct($i=null)
        {
            $this->i = $i;
        }

        public function ice_id()
        {
            return '::Test::N';
        }

        public static function ice_staticId()
        {
            return '::Test::N';
        }

        public function __toString(): string
        {
            global $Test__t_N;
            return IcePHP_stringify($this, $Test__t_N);
        }

        public $i;
    }

    $Test__t_N = IcePHP_declareClass('::Test::N');

    global $Ice__t_Value;
    global $Test__t_I;
    $Test__t_N = IcePHP_defineClass('::Test::N', '\\Test\\N', -1, false, false, $Ice__t_Value, array(
        array('i', $Test__t_I, false, 0)));
}

namespace Test
{
    global $Test__t_BaseSeq;

    if(!isset($Test__t_BaseSeq))
    {
        global $Test__t_Base;
        $Test__t_BaseSeq = IcePHP_defineSequence('::Test::BaseSeq', $Test__t_Base);
    }
}

namespace Test
{
    global $Test__t_CompactExt;
    if(!isset($Test__t_CompactExt))
    {
        $Test__t_CompactExt = IcePHP_declareClass('::Test::CompactExt');
    }
}

namespace Test
{
    global $Test__t_Compact;
    class Compact extends \Ice\Value
    {
        public function __construct()
        {
        }

        public function ice_id()
        {
            return '::Test::Compact';
        }

        public static function ice_staticId()
        {
            return '::Test::Compact';
        }

        public function __toString(): string
        {
            global $Test__t_Compact;
            return IcePHP_stringify($this, $Test__t_Compact);
        }
    }

    global $Ice__t_Value;
    $Test__t_Compact = IcePHP_defineClass('::Test::Compact', '\\Test\\Compact', 1, false, false, $Ice__t_Value, null);
}

namespace Test
{
    if(!defined('\\Test\\CompactExtId'))
    {
        define(__NAMESPACE__ . '\\CompactExtId', 789);
    }
}

namespace Test
{
    global $Test__t_CompactExt;
    class CompactExt extends \Test\Compact
    {
        public function __construct()
        {
            parent::__construct();
        }

        public function ice_id()
        {
            return '::Test::CompactExt';
        }

        public static function ice_staticId()
        {
            return '::Test::CompactExt';
        }

        public function __toString(): string
        {
            global $Test__t_CompactExt;
            return IcePHP_stringify($this, $Test__t_CompactExt);
        }
    }

    global $Test__t_Compact;
    $Test__t_CompactExt = IcePHP_defineClass('::Test::CompactExt', '\\Test\\CompactExt', 789, false, false, $Test__t_Compact, null);
}

namespace Test
{
    global $Test__t_A1;
    class A1 extends \Ice\Value
    {
        public function __construct($name='')
        {
            $this->name = $name;
        }

        public function ice_id()
        {
            return '::Test::A1';
        }

        public static function ice_staticId()
        {
            return '::Test::A1';
        }

        public function __toString(): string
        {
            global $Test__t_A1;
            return IcePHP_stringify($this, $Test__t_A1);
        }

        public $name;
    }

    global $Ice__t_Value;
    global $IcePHP__t_string;
    $Test__t_A1 = IcePHP_defineClass('::Test::A1', '\\Test\\A1', -1, false, false, $Ice__t_Value, array(
        array('name', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_B1;
    class B1 extends \Ice\Value
    {
        public function __construct($a1=null, $a2=null)
        {
            $this->a1 = $a1;
            $this->a2 = $a2;
        }

        public function ice_id()
        {
            return '::Test::B1';
        }

        public static function ice_staticId()
        {
            return '::Test::B1';
        }

        public function __toString(): string
        {
            global $Test__t_B1;
            return IcePHP_stringify($this, $Test__t_B1);
        }

        public $a1;
        public $a2;
    }

    $Test__t_B1 = IcePHP_declareClass('::Test::B1');

    global $Ice__t_Value;
    global $Test__t_A1;
    $Test__t_B1 = IcePHP_defineClass('::Test::B1', '\\Test\\B1', -1, false, false, $Ice__t_Value, array(
        array('a1', $Test__t_A1, false, 0),
        array('a2', $Test__t_A1, false, 0)));
}

namespace Test
{
    global $Test__t_D1;
    class D1 extends \Test\B1
    {
        public function __construct($a1=null, $a2=null, $a3=null, $a4=null)
        {
            parent::__construct($a1, $a2);
            $this->a3 = $a3;
            $this->a4 = $a4;
        }

        public function ice_id()
        {
            return '::Test::D1';
        }

        public static function ice_staticId()
        {
            return '::Test::D1';
        }

        public function __toString(): string
        {
            global $Test__t_D1;
            return IcePHP_stringify($this, $Test__t_D1);
        }

        public $a3;
        public $a4;
    }

    $Test__t_D1 = IcePHP_declareClass('::Test::D1');

    global $Test__t_B1;
    global $Test__t_A1;
    $Test__t_D1 = IcePHP_defineClass('::Test::D1', '\\Test\\D1', -1, false, false, $Test__t_B1, array(
        array('a3', $Test__t_A1, false, 0),
        array('a4', $Test__t_A1, false, 0)));
}

namespace Test
{
    global $Test__t_EBase;
    class EBase extends \Ice\UserException
    {
        public function __construct($a1=null, $a2=null)
        {
            $this->a1 = $a1;
            $this->a2 = $a2;
        }

        public function ice_id()
        {
            return '::Test::EBase';
        }

        public function __toString(): string
        {
            global $Test__t_EBase;
            return IcePHP_stringifyException($this, $Test__t_EBase);
        }

        public $a1;
        public $a2;
    }
    global $Test__t_A1;

    $Test__t_EBase = IcePHP_defineException('::Test::EBase', '\\Test\\EBase', false, null, array(
        array('a1', $Test__t_A1, false, 0),
        array('a2', $Test__t_A1, false, 0)));
}

namespace Test
{
    global $Test__t_EDerived;
    class EDerived extends \Test\EBase
    {
        public function __construct($a1=null, $a2=null, $a3=null, $a4=null)
        {
            parent::__construct($a1, $a2);
            $this->a3 = $a3;
            $this->a4 = $a4;
        }

        public function ice_id()
        {
            return '::Test::EDerived';
        }

        public function __toString(): string
        {
            global $Test__t_EDerived;
            return IcePHP_stringifyException($this, $Test__t_EDerived);
        }

        public $a3;
        public $a4;
    }
    global $Test__t_A1;

    $Test__t_EDerived = IcePHP_defineException('::Test::EDerived', '\\Test\\EDerived', false, $Test__t_EBase, array(
        array('a3', $Test__t_A1, false, 0),
        array('a4', $Test__t_A1, false, 0)));
}

namespace Test
{
    global $Test__t_Recursive;
    class Recursive extends \Ice\Value
    {
        public function __construct($v=null)
        {
            $this->v = $v;
        }

        public function ice_id()
        {
            return '::Test::Recursive';
        }

        public static function ice_staticId()
        {
            return '::Test::Recursive';
        }

        public function __toString(): string
        {
            global $Test__t_Recursive;
            return IcePHP_stringify($this, $Test__t_Recursive);
        }

        public $v;
    }

    $Test__t_Recursive = IcePHP_declareClass('::Test::Recursive');

    global $Ice__t_Value;
    global $Test__t_Recursive;
    $Test__t_Recursive = IcePHP_defineClass('::Test::Recursive', '\\Test\\Recursive', -1, false, false, $Ice__t_Value, array(
        array('v', $Test__t_Recursive, false, 0)));
}

namespace Test
{
    global $Test__t_K;
    class K extends \Ice\Value
    {
        public function __construct($value=null)
        {
            $this->value = $value;
        }

        public function ice_id()
        {
            return '::Test::K';
        }

        public static function ice_staticId()
        {
            return '::Test::K';
        }

        public function __toString(): string
        {
            global $Test__t_K;
            return IcePHP_stringify($this, $Test__t_K);
        }

        public $value;
    }

    $Test__t_K = IcePHP_declareClass('::Test::K');

    global $Ice__t_Value;
    $Test__t_K = IcePHP_defineClass('::Test::K', '\\Test\\K', -1, false, false, $Ice__t_Value, array(
        array('value', $Ice__t_Value, false, 0)));
}

namespace Test
{
    global $Test__t_L;
    class L extends \Ice\Value
    {
        public function __construct($data='')
        {
            $this->data = $data;
        }

        public function ice_id()
        {
            return '::Test::L';
        }

        public static function ice_staticId()
        {
            return '::Test::L';
        }

        public function __toString(): string
        {
            global $Test__t_L;
            return IcePHP_stringify($this, $Test__t_L);
        }

        public $data;
    }

    global $Ice__t_Value;
    global $IcePHP__t_string;
    $Test__t_L = IcePHP_defineClass('::Test::L', '\\Test\\L', -1, false, false, $Ice__t_Value, array(
        array('data', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_ValueSeq;

    if(!isset($Test__t_ValueSeq))
    {
        global $Ice__t_Value;
        $Test__t_ValueSeq = IcePHP_defineSequence('::Test::ValueSeq', $Ice__t_Value);
    }
}

namespace Test
{
    global $Test__t_ValueMap;

    if(!isset($Test__t_ValueMap))
    {
        global $IcePHP__t_string;
        global $Ice__t_Value;
        $Test__t_ValueMap = IcePHP_defineDictionary('::Test::ValueMap', $IcePHP__t_string, $Ice__t_Value);
    }
}

namespace Test
{
    global $Test__t_F1;
    if(!isset($Test__t_F1))
    {
        $Test__t_F1 = IcePHP_declareClass('::Test::F1');
    }
}

namespace Test
{
    global $Test__t_F2;
    global $Test__t_F2Prx;
    if(!isset($Test__t_F2))
    {
        $Test__t_F2 = IcePHP_declareClass('::Test::F2');
        $Test__t_F2Prx = IcePHP_declareProxy('::Test::F2');
    }
}

namespace Test
{
    global $Test__t_F3;
    class F3 extends \Ice\Value
    {
        public function __construct($f1=null, $f2=null)
        {
            $this->f1 = $f1;
            $this->f2 = $f2;
        }

        public function ice_id()
        {
            return '::Test::F3';
        }

        public static function ice_staticId()
        {
            return '::Test::F3';
        }

        public function __toString(): string
        {
            global $Test__t_F3;
            return IcePHP_stringify($this, $Test__t_F3);
        }

        public $f1;
        public $f2;
    }

    $Test__t_F3 = IcePHP_declareClass('::Test::F3');

    global $Ice__t_Value;
    global $Test__t_F1;
    global $Test__t_F2Prx;
    $Test__t_F3 = IcePHP_defineClass('::Test::F3', '\\Test\\F3', -1, false, false, $Ice__t_Value, array(
        array('f1', $Test__t_F1, false, 0),
        array('f2', $Test__t_F2Prx, false, 0)));
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

    global $Test__t_B;
    global $Test__t_C;
    global $Test__t_D;
    global $Test__t_E;
    global $Test__t_F;
    global $Test__t_Recursive;
    global $IcePHP__t_bool;
    global $Test__t_I;
    global $Test__t_K;
    global $Ice__t_Value;
    global $Test__t_ValueSeq;
    global $Test__t_ValueMap;
    global $Test__t_D1;
    global $Test__t_G;
    global $Test__t_BaseSeq;
    global $Test__t_Compact;
    global $Test__t_F1;
    global $Test__t_F2Prx;
    global $Test__t_F3;
    global $Test__t_N;
    IcePHP_defineOperation($Test__t_InitialPrx, 'shutdown', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getB1', 0, 0, 0, null, null, array($Test__t_B), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getB2', 0, 0, 0, null, null, array($Test__t_B), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getC', 0, 0, 0, null, null, array($Test__t_C), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getD', 0, 0, 0, null, null, array($Test__t_D), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getE', 0, 0, 0, null, null, array($Test__t_E), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getF', 0, 0, 0, null, null, array($Test__t_F), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'setRecursive', 0, 0, 0, array(array($Test__t_Recursive)), null, null, null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'supportsClassGraphDepthMax', 0, 0, 0, null, null, array($IcePHP__t_bool), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'setCycle', 0, 0, 0, array(array($Test__t_Recursive)), null, null, null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'acceptsClassCycles', 0, 0, 0, null, null, array($IcePHP__t_bool), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getMB', 0, 0, 0, null, null, array($Test__t_B), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getAMDMB', 0, 0, 0, null, null, array($Test__t_B), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getAll', 0, 0, 0, null, array(array($Test__t_B), array($Test__t_B), array($Test__t_C), array($Test__t_D)), null, null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getH', 0, 0, 0, null, null, array($Test__t_I), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getI', 0, 0, 0, null, null, array($Test__t_I), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getJ', 0, 0, 0, null, null, array($Test__t_I), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getK', 0, 0, 0, null, null, array($Test__t_K), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opValue', 0, 0, 0, array(array($Ice__t_Value)), array(array($Ice__t_Value)), array($Ice__t_Value), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opValueSeq', 0, 0, 0, array(array($Test__t_ValueSeq)), array(array($Test__t_ValueSeq)), array($Test__t_ValueSeq), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opValueMap', 0, 0, 0, array(array($Test__t_ValueMap)), array(array($Test__t_ValueMap)), array($Test__t_ValueMap), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getD1', 0, 0, 0, array(array($Test__t_D1)), null, array($Test__t_D1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'throwEDerived', 0, 0, 0, null, null, null, array($Test__t_EDerived));
    IcePHP_defineOperation($Test__t_InitialPrx, 'setG', 0, 0, 0, array(array($Test__t_G)), null, null, null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'setI', 0, 0, 0, array(array($Test__t_I)), null, null, null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opBaseSeq', 0, 0, 0, array(array($Test__t_BaseSeq)), array(array($Test__t_BaseSeq)), array($Test__t_BaseSeq), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'getCompact', 0, 0, 0, null, null, array($Test__t_Compact), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opF1', 0, 0, 0, array(array($Test__t_F1)), array(array($Test__t_F1)), array($Test__t_F1), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opF2', 0, 0, 0, array(array($Test__t_F2Prx)), array(array($Test__t_F2Prx)), array($Test__t_F2Prx), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opF3', 0, 0, 0, array(array($Test__t_F3)), array(array($Test__t_F3)), array($Test__t_F3), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'hasF3', 0, 0, 0, null, null, array($IcePHP__t_bool), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'opN', 0, 0, 0, array(array($Test__t_N)), null, array($Test__t_N), null);
}

namespace Test
{
    global $Test__t_Empty;
    class _Empty extends \Ice\Value
    {
        public function __construct()
        {
        }

        public function ice_id()
        {
            return '::Test::Empty';
        }

        public static function ice_staticId()
        {
            return '::Test::Empty';
        }

        public function __toString(): string
        {
            global $Test__t_Empty;
            return IcePHP_stringify($this, $Test__t_Empty);
        }
    }

    global $Ice__t_Value;
    $Test__t_Empty = IcePHP_defineClass('::Test::Empty', '\\Test\\_Empty', -1, false, false, $Ice__t_Value, null);
}

namespace Test
{
    global $Test__t_AlsoEmpty;
    class AlsoEmpty extends \Ice\Value
    {
        public function __construct()
        {
        }

        public function ice_id()
        {
            return '::Test::AlsoEmpty';
        }

        public static function ice_staticId()
        {
            return '::Test::AlsoEmpty';
        }

        public function __toString(): string
        {
            global $Test__t_AlsoEmpty;
            return IcePHP_stringify($this, $Test__t_AlsoEmpty);
        }
    }

    global $Ice__t_Value;
    $Test__t_AlsoEmpty = IcePHP_defineClass('::Test::AlsoEmpty', '\\Test\\AlsoEmpty', -1, false, false, $Ice__t_Value, null);
}

namespace Test
{
    global $Test__t_UnexpectedObjectExceptionTest;
    global $Test__t_UnexpectedObjectExceptionTestPrx;

    class UnexpectedObjectExceptionTestPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::UnexpectedObjectExceptionTest', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::UnexpectedObjectExceptionTest', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::UnexpectedObjectExceptionTest';
        }
    }
    $Test__t_UnexpectedObjectExceptionTest = IcePHP_defineClass('::Test::UnexpectedObjectExceptionTest', '\\Test\\UnexpectedObjectExceptionTest', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_UnexpectedObjectExceptionTestPrx = IcePHP_defineProxy('::Test::UnexpectedObjectExceptionTest', $Ice__t_ObjectPrx, null);

    global $Test__t_Empty;
    IcePHP_defineOperation($Test__t_UnexpectedObjectExceptionTestPrx, 'op', 0, 0, 0, null, null, array($Test__t_Empty), null);
}

namespace Test
{
    global $Test__t_COneMember;
    class COneMember extends \Ice\Value
    {
        public function __construct($e=null)
        {
            $this->e = $e;
        }

        public function ice_id()
        {
            return '::Test::COneMember';
        }

        public static function ice_staticId()
        {
            return '::Test::COneMember';
        }

        public function __toString(): string
        {
            global $Test__t_COneMember;
            return IcePHP_stringify($this, $Test__t_COneMember);
        }

        public $e;
    }

    $Test__t_COneMember = IcePHP_declareClass('::Test::COneMember');

    global $Ice__t_Value;
    global $Test__t_Empty;
    $Test__t_COneMember = IcePHP_defineClass('::Test::COneMember', '\\Test\\COneMember', -1, false, false, $Ice__t_Value, array(
        array('e', $Test__t_Empty, false, 0)));
}

namespace Test
{
    global $Test__t_CTwoMembers;
    class CTwoMembers extends \Ice\Value
    {
        public function __construct($e1=null, $e2=null)
        {
            $this->e1 = $e1;
            $this->e2 = $e2;
        }

        public function ice_id()
        {
            return '::Test::CTwoMembers';
        }

        public static function ice_staticId()
        {
            return '::Test::CTwoMembers';
        }

        public function __toString(): string
        {
            global $Test__t_CTwoMembers;
            return IcePHP_stringify($this, $Test__t_CTwoMembers);
        }

        public $e1;
        public $e2;
    }

    $Test__t_CTwoMembers = IcePHP_declareClass('::Test::CTwoMembers');

    global $Ice__t_Value;
    global $Test__t_Empty;
    $Test__t_CTwoMembers = IcePHP_defineClass('::Test::CTwoMembers', '\\Test\\CTwoMembers', -1, false, false, $Ice__t_Value, array(
        array('e1', $Test__t_Empty, false, 0),
        array('e2', $Test__t_Empty, false, 0)));
}

namespace Test
{
    global $Test__t_EOneMember;
    class EOneMember extends \Ice\UserException
    {
        public function __construct($e=null)
        {
            $this->e = $e;
        }

        public function ice_id()
        {
            return '::Test::EOneMember';
        }

        public function __toString(): string
        {
            global $Test__t_EOneMember;
            return IcePHP_stringifyException($this, $Test__t_EOneMember);
        }

        public $e;
    }
    global $Test__t_Empty;

    $Test__t_EOneMember = IcePHP_defineException('::Test::EOneMember', '\\Test\\EOneMember', false, null, array(
        array('e', $Test__t_Empty, false, 0)));
}

namespace Test
{
    global $Test__t_ETwoMembers;
    class ETwoMembers extends \Ice\UserException
    {
        public function __construct($e1=null, $e2=null)
        {
            $this->e1 = $e1;
            $this->e2 = $e2;
        }

        public function ice_id()
        {
            return '::Test::ETwoMembers';
        }

        public function __toString(): string
        {
            global $Test__t_ETwoMembers;
            return IcePHP_stringifyException($this, $Test__t_ETwoMembers);
        }

        public $e1;
        public $e2;
    }
    global $Test__t_Empty;

    $Test__t_ETwoMembers = IcePHP_defineException('::Test::ETwoMembers', '\\Test\\ETwoMembers', false, null, array(
        array('e1', $Test__t_Empty, false, 0),
        array('e2', $Test__t_Empty, false, 0)));
}

namespace Test
{
    global $Test__t_SOneMember;
    class SOneMember
    {
        public function __construct($e=null)
        {
            $this->e = $e;
        }

        public function __toString(): string
        {
            global $Test__t_SOneMember;
            return IcePHP_stringify($this, $Test__t_SOneMember);
        }

        public $e;
    }

    global $Test__t_Empty;
    $Test__t_SOneMember = IcePHP_defineStruct('::Test::SOneMember', '\\Test\\SOneMember', array(
        array('e', $Test__t_Empty)));
}

namespace Test
{
    global $Test__t_STwoMembers;
    class STwoMembers
    {
        public function __construct($e1=null, $e2=null)
        {
            $this->e1 = $e1;
            $this->e2 = $e2;
        }

        public function __toString(): string
        {
            global $Test__t_STwoMembers;
            return IcePHP_stringify($this, $Test__t_STwoMembers);
        }

        public $e1;
        public $e2;
    }

    global $Test__t_Empty;
    $Test__t_STwoMembers = IcePHP_defineStruct('::Test::STwoMembers', '\\Test\\STwoMembers', array(
        array('e1', $Test__t_Empty),
        array('e2', $Test__t_Empty)));
}

namespace Test
{
    global $Test__t_DOneMember;

    if(!isset($Test__t_DOneMember))
    {
        global $IcePHP__t_int;
        global $Test__t_COneMember;
        $Test__t_DOneMember = IcePHP_defineDictionary('::Test::DOneMember', $IcePHP__t_int, $Test__t_COneMember);
    }
}

namespace Test
{
    global $Test__t_DTwoMembers;

    if(!isset($Test__t_DTwoMembers))
    {
        global $IcePHP__t_int;
        global $Test__t_CTwoMembers;
        $Test__t_DTwoMembers = IcePHP_defineDictionary('::Test::DTwoMembers', $IcePHP__t_int, $Test__t_CTwoMembers);
    }
}
?>
