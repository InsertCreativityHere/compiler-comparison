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
    global $Test__t_S;
    class S
    {
        public function __construct($v=0)
        {
            $this->v = $v;
        }

        public function __toString(): string
        {
            global $Test__t_S;
            return IcePHP_stringify($this, $Test__t_S);
        }

        public $v;
    }

    global $IcePHP__t_int;
    $Test__t_S = IcePHP_defineStruct('::Test::S', '\\Test\\S', array(
        array('v', $IcePHP__t_int)));
}

namespace Test
{
    global $Test__t_SMap;

    if(!isset($Test__t_SMap))
    {
        global $IcePHP__t_string;
        global $Test__t_S;
        $Test__t_SMap = IcePHP_defineDictionary('::Test::SMap', $IcePHP__t_string, $Test__t_S);
    }
}

namespace Test
{
    global $Test__t_SSeq;

    if(!isset($Test__t_SSeq))
    {
        global $Test__t_S;
        $Test__t_SSeq = IcePHP_defineSequence('::Test::SSeq', $Test__t_S);
    }
}

namespace Test
{
    global $Test__t_C;
    class C extends \Ice\Value
    {
        public function __construct($s=null)
        {
            $this->s = is_null($s) ? new \Test\S : $s;
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

        public $s;
    }

    global $Ice__t_Value;
    global $Test__t_S;
    $Test__t_C = IcePHP_defineClass('::Test::C', '\\Test\\C', -1, false, $Ice__t_Value, array(
        array('s', $Test__t_S, false, 0)));
}

namespace Test
{
    global $Test__t_CMap;

    if(!isset($Test__t_CMap))
    {
        global $IcePHP__t_string;
        global $Test__t_C;
        $Test__t_CMap = IcePHP_defineDictionary('::Test::CMap', $IcePHP__t_string, $Test__t_C);
    }
}

namespace Test
{
    global $Test__t_CSeq;

    if(!isset($Test__t_CSeq))
    {
        global $Test__t_C;
        $Test__t_CSeq = IcePHP_defineSequence('::Test::CSeq', $Test__t_C);
    }
}

namespace Test
{
    global $Test__t_E1;
    class E1
    {
        const v1 = 0;
        const v2 = 1;
        const v3 = 2;
    }

    $Test__t_E1 = IcePHP_defineEnum('::Test::E1', array('v1', 0, 'v2', 1, 'v3', 2));
}

namespace Test
{
    global $Test__t_S1;
    class S1
    {
        public function __construct($s='')
        {
            $this->s = $s;
        }

        public function __toString(): string
        {
            global $Test__t_S1;
            return IcePHP_stringify($this, $Test__t_S1);
        }

        public $s;
    }

    global $IcePHP__t_string;
    $Test__t_S1 = IcePHP_defineStruct('::Test::S1', '\\Test\\S1', array(
        array('s', $IcePHP__t_string)));
}

namespace Test
{
    global $Test__t_S1Seq;

    if(!isset($Test__t_S1Seq))
    {
        global $Test__t_S1;
        $Test__t_S1Seq = IcePHP_defineSequence('::Test::S1Seq', $Test__t_S1);
    }
}

namespace Test
{
    global $Test__t_S1Map;

    if(!isset($Test__t_S1Map))
    {
        global $IcePHP__t_string;
        global $Test__t_S1;
        $Test__t_S1Map = IcePHP_defineDictionary('::Test::S1Map', $IcePHP__t_string, $Test__t_S1);
    }
}

namespace Test
{
    global $Test__t_C1;
    class C1 extends \Ice\Value
    {
        public function __construct($s='')
        {
            $this->s = $s;
        }

        public function ice_id()
        {
            return '::Test::C1';
        }

        public static function ice_staticId()
        {
            return '::Test::C1';
        }

        public function __toString(): string
        {
            global $Test__t_C1;
            return IcePHP_stringify($this, $Test__t_C1);
        }

        public $s;
    }

    global $Ice__t_Value;
    global $IcePHP__t_string;
    $Test__t_C1 = IcePHP_defineClass('::Test::C1', '\\Test\\C1', -1, false, $Ice__t_Value, array(
        array('s', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_S2;
    class S2
    {
        public function __construct($E1=\Test\E1::v1, $S1=null, $C1=null, $S1Seq=null, $S1Map=null)
        {
            $this->E1 = $E1;
            $this->S1 = is_null($S1) ? new \Test\S1 : $S1;
            $this->C1 = $C1;
            $this->S1Seq = $S1Seq;
            $this->S1Map = $S1Map;
        }

        public function __toString(): string
        {
            global $Test__t_S2;
            return IcePHP_stringify($this, $Test__t_S2);
        }

        public $E1;
        public $S1;
        public $C1;
        public $S1Seq;
        public $S1Map;
    }

    global $Test__t_E1;
    global $Test__t_S1;
    global $Test__t_C1;
    global $Test__t_S1Seq;
    global $Test__t_S1Map;
    $Test__t_S2 = IcePHP_defineStruct('::Test::S2', '\\Test\\S2', array(
        array('E1', $Test__t_E1),
        array('S1', $Test__t_S1),
        array('C1', $Test__t_C1),
        array('S1Seq', $Test__t_S1Seq),
        array('S1Map', $Test__t_S1Map)));
}

namespace Test
{
    global $Test__t_C2;
    class C2 extends \Ice\Value
    {
        public function __construct($E1=\Test\E1::v1, $S1=null, $C1=null, $S1Seq=null, $S1Map=null)
        {
            $this->E1 = $E1;
            $this->S1 = is_null($S1) ? new \Test\S1 : $S1;
            $this->C1 = $C1;
            $this->S1Seq = $S1Seq;
            $this->S1Map = $S1Map;
        }

        public function ice_id()
        {
            return '::Test::C2';
        }

        public static function ice_staticId()
        {
            return '::Test::C2';
        }

        public function __toString(): string
        {
            global $Test__t_C2;
            return IcePHP_stringify($this, $Test__t_C2);
        }

        public $E1;
        public $S1;
        public $C1;
        public $S1Seq;
        public $S1Map;
    }

    $Test__t_C2 = IcePHP_declareClass('::Test::C2');

    global $Ice__t_Value;
    global $Test__t_E1;
    global $Test__t_S1;
    global $Test__t_C1;
    global $Test__t_S1Seq;
    global $Test__t_S1Map;
    $Test__t_C2 = IcePHP_defineClass('::Test::C2', '\\Test\\C2', -1, false, $Ice__t_Value, array(
        array('E1', $Test__t_E1, false, 0),
        array('S1', $Test__t_S1, false, 0),
        array('C1', $Test__t_C1, false, 0),
        array('S1Seq', $Test__t_S1Seq, false, 0),
        array('S1Map', $Test__t_S1Map, false, 0)));
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

    global $Ice__t_ObjectPrx;
    $Test__t_IPrx = IcePHP_defineProxy('::Test::I', $Ice__t_ObjectPrx, null);

    global $Test__t_S;
    global $Test__t_SSeq;
    global $Test__t_SMap;
    global $Test__t_C;
    global $Test__t_CSeq;
    global $Test__t_CMap;
    global $Test__t_E1;
    global $Test__t_S1;
    global $Test__t_C1;
    global $Test__t_S1Seq;
    global $Test__t_S1Map;
    IcePHP_defineOperation($Test__t_IPrx, 'opS', 0, 0, array(array($Test__t_S)), array(array($Test__t_S)), array($Test__t_S), null);
    IcePHP_defineOperation($Test__t_IPrx, 'opSSeq', 0, 0, array(array($Test__t_SSeq)), array(array($Test__t_SSeq)), array($Test__t_SSeq), null);
    IcePHP_defineOperation($Test__t_IPrx, 'opSMap', 0, 0, array(array($Test__t_SMap)), array(array($Test__t_SMap)), array($Test__t_SMap), null);
    IcePHP_defineOperation($Test__t_IPrx, 'opC', 0, 0, array(array($Test__t_C)), array(array($Test__t_C)), array($Test__t_C), null);
    IcePHP_defineOperation($Test__t_IPrx, 'opCSeq', 0, 0, array(array($Test__t_CSeq)), array(array($Test__t_CSeq)), array($Test__t_CSeq), null);
    IcePHP_defineOperation($Test__t_IPrx, 'opCMap', 0, 0, array(array($Test__t_CMap)), array(array($Test__t_CMap)), array($Test__t_CMap), null);
    IcePHP_defineOperation($Test__t_IPrx, 'opE1', 0, 0, array(array($Test__t_E1)), null, array($Test__t_E1), null);
    IcePHP_defineOperation($Test__t_IPrx, 'opS1', 0, 0, array(array($Test__t_S1)), null, array($Test__t_S1), null);
    IcePHP_defineOperation($Test__t_IPrx, 'opC1', 0, 0, array(array($Test__t_C1)), null, array($Test__t_C1), null);
    IcePHP_defineOperation($Test__t_IPrx, 'opS1Seq', 0, 0, array(array($Test__t_S1Seq)), null, array($Test__t_S1Seq), null);
    IcePHP_defineOperation($Test__t_IPrx, 'opS1Map', 0, 0, array(array($Test__t_S1Map)), null, array($Test__t_S1Map), null);
    IcePHP_defineOperation($Test__t_IPrx, 'shutdown', 0, 0, null, null, null, null);
}

namespace Test
{
    global $Test__t_IMap;

    if(!isset($Test__t_IMap))
    {
        global $IcePHP__t_string;
        global $Test__t_IPrx;
        $Test__t_IMap = IcePHP_defineDictionary('::Test::IMap', $IcePHP__t_string, $Test__t_IPrx);
    }
}

namespace Test
{
    global $Test__t_ISeq;

    if(!isset($Test__t_ISeq))
    {
        global $Test__t_IPrx;
        $Test__t_ISeq = IcePHP_defineSequence('::Test::ISeq', $Test__t_IPrx);
    }
}

namespace Test\Inner
{
    global $Test_Inner__t_S;
    class S
    {
        public function __construct($v=0)
        {
            $this->v = $v;
        }

        public function __toString(): string
        {
            global $Test_Inner__t_S;
            return IcePHP_stringify($this, $Test_Inner__t_S);
        }

        public $v;
    }

    global $IcePHP__t_int;
    $Test_Inner__t_S = IcePHP_defineStruct('::Test::Inner::S', '\\Test\\Inner\\S', array(
        array('v', $IcePHP__t_int)));
}

namespace Test\Inner\Inner2
{
    global $Test_Inner_Inner2__t_S;
    class S
    {
        public function __construct($v=0)
        {
            $this->v = $v;
        }

        public function __toString(): string
        {
            global $Test_Inner_Inner2__t_S;
            return IcePHP_stringify($this, $Test_Inner_Inner2__t_S);
        }

        public $v;
    }

    global $IcePHP__t_int;
    $Test_Inner_Inner2__t_S = IcePHP_defineStruct('::Test::Inner::Inner2::S', '\\Test\\Inner\\Inner2\\S', array(
        array('v', $IcePHP__t_int)));
}

namespace Test\Inner\Inner2
{
    global $Test_Inner_Inner2__t_SMap;

    if(!isset($Test_Inner_Inner2__t_SMap))
    {
        global $IcePHP__t_string;
        global $Test_Inner_Inner2__t_S;
        $Test_Inner_Inner2__t_SMap = IcePHP_defineDictionary('::Test::Inner::Inner2::SMap', $IcePHP__t_string, $Test_Inner_Inner2__t_S);
    }
}

namespace Test\Inner\Inner2
{
    global $Test_Inner_Inner2__t_SSeq;

    if(!isset($Test_Inner_Inner2__t_SSeq))
    {
        global $Test_Inner_Inner2__t_S;
        $Test_Inner_Inner2__t_SSeq = IcePHP_defineSequence('::Test::Inner::Inner2::SSeq', $Test_Inner_Inner2__t_S);
    }
}

namespace Test\Inner\Inner2
{
    global $Test_Inner_Inner2__t_C;
    class C extends \Ice\Value
    {
        public function __construct($s=null)
        {
            $this->s = is_null($s) ? new \Test\Inner\Inner2\S : $s;
        }

        public function ice_id()
        {
            return '::Test::Inner::Inner2::C';
        }

        public static function ice_staticId()
        {
            return '::Test::Inner::Inner2::C';
        }

        public function __toString(): string
        {
            global $Test_Inner_Inner2__t_C;
            return IcePHP_stringify($this, $Test_Inner_Inner2__t_C);
        }

        public $s;
    }

    global $Ice__t_Value;
    global $Test_Inner_Inner2__t_S;
    $Test_Inner_Inner2__t_C = IcePHP_defineClass('::Test::Inner::Inner2::C', '\\Test\\Inner\\Inner2\\C', -1, false, $Ice__t_Value, array(
        array('s', $Test_Inner_Inner2__t_S, false, 0)));
}

namespace Test\Inner\Inner2
{
    global $Test_Inner_Inner2__t_CMap;

    if(!isset($Test_Inner_Inner2__t_CMap))
    {
        global $IcePHP__t_string;
        global $Test_Inner_Inner2__t_C;
        $Test_Inner_Inner2__t_CMap = IcePHP_defineDictionary('::Test::Inner::Inner2::CMap', $IcePHP__t_string, $Test_Inner_Inner2__t_C);
    }
}

namespace Test\Inner\Inner2
{
    global $Test_Inner_Inner2__t_CSeq;

    if(!isset($Test_Inner_Inner2__t_CSeq))
    {
        global $Test_Inner_Inner2__t_C;
        $Test_Inner_Inner2__t_CSeq = IcePHP_defineSequence('::Test::Inner::Inner2::CSeq', $Test_Inner_Inner2__t_C);
    }
}

namespace Test\Inner\Inner2
{
    global $Test_Inner_Inner2__t_I;
    global $Test_Inner_Inner2__t_IPrx;

    class IPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Inner::Inner2::I', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Inner::Inner2::I', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Inner::Inner2::I';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test_Inner_Inner2__t_IPrx = IcePHP_defineProxy('::Test::Inner::Inner2::I', $Ice__t_ObjectPrx, null);

    global $Test_Inner_Inner2__t_S;
    global $Test_Inner_Inner2__t_SSeq;
    global $Test_Inner_Inner2__t_SMap;
    global $Test_Inner_Inner2__t_C;
    global $Test_Inner_Inner2__t_CSeq;
    global $Test_Inner_Inner2__t_CMap;
    IcePHP_defineOperation($Test_Inner_Inner2__t_IPrx, 'opS', 0, 0, array(array($Test_Inner_Inner2__t_S)), array(array($Test_Inner_Inner2__t_S)), array($Test_Inner_Inner2__t_S), null);
    IcePHP_defineOperation($Test_Inner_Inner2__t_IPrx, 'opSSeq', 0, 0, array(array($Test_Inner_Inner2__t_SSeq)), array(array($Test_Inner_Inner2__t_SSeq)), array($Test_Inner_Inner2__t_SSeq), null);
    IcePHP_defineOperation($Test_Inner_Inner2__t_IPrx, 'opSMap', 0, 0, array(array($Test_Inner_Inner2__t_SMap)), array(array($Test_Inner_Inner2__t_SMap)), array($Test_Inner_Inner2__t_SMap), null);
    IcePHP_defineOperation($Test_Inner_Inner2__t_IPrx, 'opC', 0, 0, array(array($Test_Inner_Inner2__t_C)), array(array($Test_Inner_Inner2__t_C)), array($Test_Inner_Inner2__t_C), null);
    IcePHP_defineOperation($Test_Inner_Inner2__t_IPrx, 'opCSeq', 0, 0, array(array($Test_Inner_Inner2__t_CSeq)), array(array($Test_Inner_Inner2__t_CSeq)), array($Test_Inner_Inner2__t_CSeq), null);
    IcePHP_defineOperation($Test_Inner_Inner2__t_IPrx, 'opCMap', 0, 0, array(array($Test_Inner_Inner2__t_CMap)), array(array($Test_Inner_Inner2__t_CMap)), array($Test_Inner_Inner2__t_CMap), null);
    IcePHP_defineOperation($Test_Inner_Inner2__t_IPrx, 'shutdown', 0, 0, null, null, null, null);
}

namespace Test\Inner\Inner2
{
    global $Test_Inner_Inner2__t_IMap;

    if(!isset($Test_Inner_Inner2__t_IMap))
    {
        global $IcePHP__t_string;
        global $Test_Inner_Inner2__t_IPrx;
        $Test_Inner_Inner2__t_IMap = IcePHP_defineDictionary('::Test::Inner::Inner2::IMap', $IcePHP__t_string, $Test_Inner_Inner2__t_IPrx);
    }
}

namespace Test\Inner\Inner2
{
    global $Test_Inner_Inner2__t_ISeq;

    if(!isset($Test_Inner_Inner2__t_ISeq))
    {
        global $Test_Inner_Inner2__t_IPrx;
        $Test_Inner_Inner2__t_ISeq = IcePHP_defineSequence('::Test::Inner::Inner2::ISeq', $Test_Inner_Inner2__t_IPrx);
    }
}

namespace Test\Inner
{
    global $Test_Inner__t_C;
    class C extends \Ice\Value
    {
        public function __construct($s=null)
        {
            $this->s = is_null($s) ? new \Test\Inner\S : $s;
        }

        public function ice_id()
        {
            return '::Test::Inner::C';
        }

        public static function ice_staticId()
        {
            return '::Test::Inner::C';
        }

        public function __toString(): string
        {
            global $Test_Inner__t_C;
            return IcePHP_stringify($this, $Test_Inner__t_C);
        }

        public $s;
    }

    global $Ice__t_Value;
    global $Test_Inner__t_S;
    $Test_Inner__t_C = IcePHP_defineClass('::Test::Inner::C', '\\Test\\Inner\\C', -1, false, $Ice__t_Value, array(
        array('s', $Test_Inner__t_S, false, 0)));
}

namespace Test\Inner
{
    global $Test_Inner__t_SSeq;

    if(!isset($Test_Inner__t_SSeq))
    {
        global $Test_Inner_Inner2__t_S;
        $Test_Inner__t_SSeq = IcePHP_defineSequence('::Test::Inner::SSeq', $Test_Inner_Inner2__t_S);
    }
}

namespace Test\Inner
{
    global $Test_Inner__t_SMap;

    if(!isset($Test_Inner__t_SMap))
    {
        global $IcePHP__t_string;
        global $Test_Inner_Inner2__t_S;
        $Test_Inner__t_SMap = IcePHP_defineDictionary('::Test::Inner::SMap', $IcePHP__t_string, $Test_Inner_Inner2__t_S);
    }
}

namespace Test\Inner
{
    global $Test_Inner__t_CMap;

    if(!isset($Test_Inner__t_CMap))
    {
        global $IcePHP__t_string;
        global $Test_Inner_Inner2__t_C;
        $Test_Inner__t_CMap = IcePHP_defineDictionary('::Test::Inner::CMap', $IcePHP__t_string, $Test_Inner_Inner2__t_C);
    }
}

namespace Test\Inner
{
    global $Test_Inner__t_CSeq;

    if(!isset($Test_Inner__t_CSeq))
    {
        global $Test_Inner_Inner2__t_C;
        $Test_Inner__t_CSeq = IcePHP_defineSequence('::Test::Inner::CSeq', $Test_Inner_Inner2__t_C);
    }
}

namespace Test\Inner
{
    global $Test_Inner__t_I;
    global $Test_Inner__t_IPrx;

    class IPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Inner::I', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Inner::I', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Inner::I';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test_Inner__t_IPrx = IcePHP_defineProxy('::Test::Inner::I', $Ice__t_ObjectPrx, null);

    global $Test_Inner_Inner2__t_S;
    global $Test_Inner_Inner2__t_SSeq;
    global $Test_Inner_Inner2__t_SMap;
    global $Test_Inner_Inner2__t_C;
    global $Test_Inner_Inner2__t_CSeq;
    global $Test_Inner_Inner2__t_CMap;
    IcePHP_defineOperation($Test_Inner__t_IPrx, 'opS', 0, 0, array(array($Test_Inner_Inner2__t_S)), array(array($Test_Inner_Inner2__t_S)), array($Test_Inner_Inner2__t_S), null);
    IcePHP_defineOperation($Test_Inner__t_IPrx, 'opSSeq', 0, 0, array(array($Test_Inner_Inner2__t_SSeq)), array(array($Test_Inner_Inner2__t_SSeq)), array($Test_Inner_Inner2__t_SSeq), null);
    IcePHP_defineOperation($Test_Inner__t_IPrx, 'opSMap', 0, 0, array(array($Test_Inner_Inner2__t_SMap)), array(array($Test_Inner_Inner2__t_SMap)), array($Test_Inner_Inner2__t_SMap), null);
    IcePHP_defineOperation($Test_Inner__t_IPrx, 'opC', 0, 0, array(array($Test_Inner_Inner2__t_C)), array(array($Test_Inner_Inner2__t_C)), array($Test_Inner_Inner2__t_C), null);
    IcePHP_defineOperation($Test_Inner__t_IPrx, 'opCSeq', 0, 0, array(array($Test_Inner_Inner2__t_CSeq)), array(array($Test_Inner_Inner2__t_CSeq)), array($Test_Inner_Inner2__t_CSeq), null);
    IcePHP_defineOperation($Test_Inner__t_IPrx, 'opCMap', 0, 0, array(array($Test_Inner_Inner2__t_CMap)), array(array($Test_Inner_Inner2__t_CMap)), array($Test_Inner_Inner2__t_CMap), null);
    IcePHP_defineOperation($Test_Inner__t_IPrx, 'shutdown', 0, 0, null, null, null, null);
}

namespace Test\Inner
{
    global $Test_Inner__t_IMap;

    if(!isset($Test_Inner__t_IMap))
    {
        global $IcePHP__t_string;
        global $Test_Inner__t_IPrx;
        $Test_Inner__t_IMap = IcePHP_defineDictionary('::Test::Inner::IMap', $IcePHP__t_string, $Test_Inner__t_IPrx);
    }
}

namespace Test\Inner
{
    global $Test_Inner__t_ISeq;

    if(!isset($Test_Inner__t_ISeq))
    {
        global $Test_Inner__t_IPrx;
        $Test_Inner__t_ISeq = IcePHP_defineSequence('::Test::Inner::ISeq', $Test_Inner__t_IPrx);
    }
}

namespace Inner\Test\Inner2
{
    global $Inner_Test_Inner2__t_I;
    global $Inner_Test_Inner2__t_IPrx;

    class IPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Inner::Test::Inner2::I', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Inner::Test::Inner2::I', $facet);
        }

        public static function ice_staticId()
        {
            return '::Inner::Test::Inner2::I';
        }
    }

    global $Ice__t_ObjectPrx;
    $Inner_Test_Inner2__t_IPrx = IcePHP_defineProxy('::Inner::Test::Inner2::I', $Ice__t_ObjectPrx, null);

    global $Test__t_S;
    global $Test__t_SSeq;
    global $Test__t_SMap;
    global $Test__t_C;
    global $Test__t_CSeq;
    global $Test__t_CMap;
    IcePHP_defineOperation($Inner_Test_Inner2__t_IPrx, 'opS', 0, 0, array(array($Test__t_S)), array(array($Test__t_S)), array($Test__t_S), null);
    IcePHP_defineOperation($Inner_Test_Inner2__t_IPrx, 'opSSeq', 0, 0, array(array($Test__t_SSeq)), array(array($Test__t_SSeq)), array($Test__t_SSeq), null);
    IcePHP_defineOperation($Inner_Test_Inner2__t_IPrx, 'opSMap', 0, 0, array(array($Test__t_SMap)), array(array($Test__t_SMap)), array($Test__t_SMap), null);
    IcePHP_defineOperation($Inner_Test_Inner2__t_IPrx, 'opC', 0, 0, array(array($Test__t_C)), array(array($Test__t_C)), array($Test__t_C), null);
    IcePHP_defineOperation($Inner_Test_Inner2__t_IPrx, 'opCSeq', 0, 0, array(array($Test__t_CSeq)), array(array($Test__t_CSeq)), array($Test__t_CSeq), null);
    IcePHP_defineOperation($Inner_Test_Inner2__t_IPrx, 'opCMap', 0, 0, array(array($Test__t_CMap)), array(array($Test__t_CMap)), array($Test__t_CMap), null);
    IcePHP_defineOperation($Inner_Test_Inner2__t_IPrx, 'shutdown', 0, 0, null, null, null, null);
}
?>
