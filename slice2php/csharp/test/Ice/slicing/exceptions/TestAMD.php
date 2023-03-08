<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace Test
{
    global $Test__t_Base;
    class Base extends \Ice\UserException
    {
        public function __construct($b='')
        {
            $this->b = $b;
        }

        public function ice_id()
        {
            return '::Test::Base';
        }

        public function __toString(): string
        {
            global $Test__t_Base;
            return IcePHP_stringifyException($this, $Test__t_Base);
        }

        public $b;
    }
    global $IcePHP__t_string;

    $Test__t_Base = IcePHP_defineException('::Test::Base', '\\Test\\Base', false, null, array(
        array('b', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_KnownDerived;
    class KnownDerived extends \Test\Base
    {
        public function __construct($b='', $kd='')
        {
            parent::__construct($b);
            $this->kd = $kd;
        }

        public function ice_id()
        {
            return '::Test::KnownDerived';
        }

        public function __toString(): string
        {
            global $Test__t_KnownDerived;
            return IcePHP_stringifyException($this, $Test__t_KnownDerived);
        }

        public $kd;
    }
    global $IcePHP__t_string;

    $Test__t_KnownDerived = IcePHP_defineException('::Test::KnownDerived', '\\Test\\KnownDerived', false, $Test__t_Base, array(
        array('kd', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_KnownIntermediate;
    class KnownIntermediate extends \Test\Base
    {
        public function __construct($b='', $ki='')
        {
            parent::__construct($b);
            $this->ki = $ki;
        }

        public function ice_id()
        {
            return '::Test::KnownIntermediate';
        }

        public function __toString(): string
        {
            global $Test__t_KnownIntermediate;
            return IcePHP_stringifyException($this, $Test__t_KnownIntermediate);
        }

        public $ki;
    }
    global $IcePHP__t_string;

    $Test__t_KnownIntermediate = IcePHP_defineException('::Test::KnownIntermediate', '\\Test\\KnownIntermediate', false, $Test__t_Base, array(
        array('ki', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_KnownMostDerived;
    class KnownMostDerived extends \Test\KnownIntermediate
    {
        public function __construct($b='', $ki='', $kmd='')
        {
            parent::__construct($b, $ki);
            $this->kmd = $kmd;
        }

        public function ice_id()
        {
            return '::Test::KnownMostDerived';
        }

        public function __toString(): string
        {
            global $Test__t_KnownMostDerived;
            return IcePHP_stringifyException($this, $Test__t_KnownMostDerived);
        }

        public $kmd;
    }
    global $IcePHP__t_string;

    $Test__t_KnownMostDerived = IcePHP_defineException('::Test::KnownMostDerived', '\\Test\\KnownMostDerived', false, $Test__t_KnownIntermediate, array(
        array('kmd', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_KnownPreserved;
    class KnownPreserved extends \Test\Base
    {
        public function __construct($b='', $kp='')
        {
            parent::__construct($b);
            $this->kp = $kp;
        }

        public function ice_id()
        {
            return '::Test::KnownPreserved';
        }

        public function __toString(): string
        {
            global $Test__t_KnownPreserved;
            return IcePHP_stringifyException($this, $Test__t_KnownPreserved);
        }

        public $kp;
    }
    global $IcePHP__t_string;

    $Test__t_KnownPreserved = IcePHP_defineException('::Test::KnownPreserved', '\\Test\\KnownPreserved', true, $Test__t_Base, array(
        array('kp', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_KnownPreservedDerived;
    class KnownPreservedDerived extends \Test\KnownPreserved
    {
        public function __construct($b='', $kp='', $kpd='')
        {
            parent::__construct($b, $kp);
            $this->kpd = $kpd;
        }

        public function ice_id()
        {
            return '::Test::KnownPreservedDerived';
        }

        public function __toString(): string
        {
            global $Test__t_KnownPreservedDerived;
            return IcePHP_stringifyException($this, $Test__t_KnownPreservedDerived);
        }

        public $kpd;
    }
    global $IcePHP__t_string;

    $Test__t_KnownPreservedDerived = IcePHP_defineException('::Test::KnownPreservedDerived', '\\Test\\KnownPreservedDerived', true, $Test__t_KnownPreserved, array(
        array('kpd', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_BaseClass;
    class BaseClass extends \Ice\Value
    {
        public function __construct($bc='')
        {
            $this->bc = $bc;
        }

        public function ice_id()
        {
            return '::Test::BaseClass';
        }

        public static function ice_staticId()
        {
            return '::Test::BaseClass';
        }

        public function __toString(): string
        {
            global $Test__t_BaseClass;
            return IcePHP_stringify($this, $Test__t_BaseClass);
        }

        public $bc;
    }

    global $Ice__t_Value;
    global $IcePHP__t_string;
    $Test__t_BaseClass = IcePHP_defineClass('::Test::BaseClass', '\\Test\\BaseClass', -1, true, false, $Ice__t_Value, array(
        array('bc', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_Relay;
    global $Test__t_RelayPrx;

    class RelayPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Relay', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Relay', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Relay';
        }
    }
    $Test__t_Relay = IcePHP_defineClass('::Test::Relay', '\\Test\\Relay', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_RelayPrx = IcePHP_defineProxy('::Test::Relay', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($Test__t_RelayPrx, 'knownPreservedAsBase', 0, 0, 2, null, null, null, array($Test__t_Base));
    IcePHP_defineOperation($Test__t_RelayPrx, 'knownPreservedAsKnownPreserved', 0, 0, 2, null, null, null, array($Test__t_KnownPreserved));
    IcePHP_defineOperation($Test__t_RelayPrx, 'unknownPreservedAsBase', 0, 0, 2, null, null, null, array($Test__t_Base));
    IcePHP_defineOperation($Test__t_RelayPrx, 'unknownPreservedAsKnownPreserved', 0, 0, 2, null, null, null, array($Test__t_KnownPreserved));
}

namespace Test
{
    global $Test__t_TestIntf;
    global $Test__t_TestIntfPrx;

    class TestIntfPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::TestIntf', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::TestIntf', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::TestIntf';
        }
    }
    $Test__t_TestIntf = IcePHP_defineClass('::Test::TestIntf', '\\Test\\TestIntf', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_TestIntfPrx = IcePHP_defineProxy('::Test::TestIntf', $Ice__t_ObjectPrx, null);

    global $Test__t_RelayPrx;
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'baseAsBase', 0, 0, 2, null, null, null, array($Test__t_Base));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'unknownDerivedAsBase', 0, 0, 2, null, null, null, array($Test__t_Base));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'knownDerivedAsBase', 0, 0, 2, null, null, null, array($Test__t_Base));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'knownDerivedAsKnownDerived', 0, 0, 2, null, null, null, array($Test__t_KnownDerived));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'unknownIntermediateAsBase', 0, 0, 2, null, null, null, array($Test__t_Base));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'knownIntermediateAsBase', 0, 0, 2, null, null, null, array($Test__t_Base));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'knownMostDerivedAsBase', 0, 0, 2, null, null, null, array($Test__t_Base));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'knownIntermediateAsKnownIntermediate', 0, 0, 2, null, null, null, array($Test__t_KnownIntermediate));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'knownMostDerivedAsKnownIntermediate', 0, 0, 2, null, null, null, array($Test__t_KnownIntermediate));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'knownMostDerivedAsKnownMostDerived', 0, 0, 2, null, null, null, array($Test__t_KnownMostDerived));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'unknownMostDerived1AsBase', 0, 0, 2, null, null, null, array($Test__t_Base));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'unknownMostDerived1AsKnownIntermediate', 0, 0, 2, null, null, null, array($Test__t_KnownIntermediate));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'unknownMostDerived2AsBase', 0, 0, 2, null, null, null, array($Test__t_Base));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'unknownMostDerived2AsBaseCompact', 0, 0, 1, null, null, null, array($Test__t_Base));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'knownPreservedAsBase', 0, 0, 2, null, null, null, array($Test__t_Base));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'knownPreservedAsKnownPreserved', 0, 0, 2, null, null, null, array($Test__t_KnownPreserved));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'relayKnownPreservedAsBase', 0, 0, 2, array(array($Test__t_RelayPrx)), null, null, array($Test__t_Base));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'relayKnownPreservedAsKnownPreserved', 0, 0, 2, array(array($Test__t_RelayPrx)), null, null, array($Test__t_KnownPreserved));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'unknownPreservedAsBase', 0, 0, 2, null, null, null, array($Test__t_Base));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'unknownPreservedAsKnownPreserved', 0, 0, 2, null, null, null, array($Test__t_KnownPreserved));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'relayUnknownPreservedAsBase', 0, 0, 2, array(array($Test__t_RelayPrx)), null, null, array($Test__t_Base));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'relayUnknownPreservedAsKnownPreserved', 0, 0, 2, array(array($Test__t_RelayPrx)), null, null, array($Test__t_KnownPreserved));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'shutdown', 0, 0, 2, null, null, null, null);
}
?>
