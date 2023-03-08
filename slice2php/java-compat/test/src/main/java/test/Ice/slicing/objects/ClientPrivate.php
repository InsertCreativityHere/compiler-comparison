<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ClientPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace Test
{
    global $Test__t_SBase;
    class SBase extends \Ice\Value
    {
        public function __construct($sb='')
        {
            $this->sb = $sb;
        }

        public function ice_id()
        {
            return '::Test::SBase';
        }

        public static function ice_staticId()
        {
            return '::Test::SBase';
        }

        public function __toString(): string
        {
            global $Test__t_SBase;
            return IcePHP_stringify($this, $Test__t_SBase);
        }

        public $sb;
    }

    global $Ice__t_Value;
    global $IcePHP__t_string;
    $Test__t_SBase = IcePHP_defineClass('::Test::SBase', '\\Test\\SBase', -1, false, false, $Ice__t_Value, array(
        array('sb', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_SBSKnownDerived;
    class SBSKnownDerived extends \Test\SBase
    {
        public function __construct($sb='', $sbskd='')
        {
            parent::__construct($sb);
            $this->sbskd = $sbskd;
        }

        public function ice_id()
        {
            return '::Test::SBSKnownDerived';
        }

        public static function ice_staticId()
        {
            return '::Test::SBSKnownDerived';
        }

        public function __toString(): string
        {
            global $Test__t_SBSKnownDerived;
            return IcePHP_stringify($this, $Test__t_SBSKnownDerived);
        }

        public $sbskd;
    }

    global $Test__t_SBase;
    global $IcePHP__t_string;
    $Test__t_SBSKnownDerived = IcePHP_defineClass('::Test::SBSKnownDerived', '\\Test\\SBSKnownDerived', -1, false, false, $Test__t_SBase, array(
        array('sbskd', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_B;
    class B extends \Ice\Value
    {
        public function __construct($sb='', $pb=null)
        {
            $this->sb = $sb;
            $this->pb = $pb;
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

        public $sb;
        public $pb;
    }

    $Test__t_B = IcePHP_declareClass('::Test::B');

    global $Ice__t_Value;
    global $IcePHP__t_string;
    global $Test__t_B;
    $Test__t_B = IcePHP_defineClass('::Test::B', '\\Test\\B', -1, false, false, $Ice__t_Value, array(
        array('sb', $IcePHP__t_string, false, 0),
        array('pb', $Test__t_B, false, 0)));
}

namespace Test
{
    global $Test__t_D1;
    class D1 extends \Test\B
    {
        public function __construct($sb='', $pb=null, $sd1='', $pd1=null)
        {
            parent::__construct($sb, $pb);
            $this->sd1 = $sd1;
            $this->pd1 = $pd1;
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

        public $sd1;
        public $pd1;
    }

    $Test__t_D1 = IcePHP_declareClass('::Test::D1');

    global $Test__t_B;
    global $IcePHP__t_string;
    $Test__t_D1 = IcePHP_defineClass('::Test::D1', '\\Test\\D1', -1, false, false, $Test__t_B, array(
        array('sd1', $IcePHP__t_string, false, 0),
        array('pd1', $Test__t_B, false, 0)));
}

namespace Test
{
    global $Test__t_BSeq;

    if(!isset($Test__t_BSeq))
    {
        global $Test__t_B;
        $Test__t_BSeq = IcePHP_defineSequence('::Test::BSeq', $Test__t_B);
    }
}

namespace Test
{
    global $Test__t_SS1;
    class SS1 extends \Ice\Value
    {
        public function __construct($s=null)
        {
            $this->s = $s;
        }

        public function ice_id()
        {
            return '::Test::SS1';
        }

        public static function ice_staticId()
        {
            return '::Test::SS1';
        }

        public function __toString(): string
        {
            global $Test__t_SS1;
            return IcePHP_stringify($this, $Test__t_SS1);
        }

        public $s;
    }

    $Test__t_SS1 = IcePHP_declareClass('::Test::SS1');

    global $Ice__t_Value;
    global $Test__t_BSeq;
    $Test__t_SS1 = IcePHP_defineClass('::Test::SS1', '\\Test\\SS1', -1, false, false, $Ice__t_Value, array(
        array('s', $Test__t_BSeq, false, 0)));
}

namespace Test
{
    global $Test__t_SS2;
    class SS2 extends \Ice\Value
    {
        public function __construct($s=null)
        {
            $this->s = $s;
        }

        public function ice_id()
        {
            return '::Test::SS2';
        }

        public static function ice_staticId()
        {
            return '::Test::SS2';
        }

        public function __toString(): string
        {
            global $Test__t_SS2;
            return IcePHP_stringify($this, $Test__t_SS2);
        }

        public $s;
    }

    $Test__t_SS2 = IcePHP_declareClass('::Test::SS2');

    global $Ice__t_Value;
    global $Test__t_BSeq;
    $Test__t_SS2 = IcePHP_defineClass('::Test::SS2', '\\Test\\SS2', -1, false, false, $Ice__t_Value, array(
        array('s', $Test__t_BSeq, false, 0)));
}

namespace Test
{
    global $Test__t_SS3;
    class SS3
    {
        public function __construct($c1=null, $c2=null)
        {
            $this->c1 = $c1;
            $this->c2 = $c2;
        }

        public function __toString(): string
        {
            global $Test__t_SS3;
            return IcePHP_stringify($this, $Test__t_SS3);
        }

        public $c1;
        public $c2;
    }

    global $Test__t_SS1;
    global $Test__t_SS2;
    $Test__t_SS3 = IcePHP_defineStruct('::Test::SS3', '\\Test\\SS3', array(
        array('c1', $Test__t_SS1),
        array('c2', $Test__t_SS2)));
}

namespace Test
{
    global $Test__t_BDict;

    if(!isset($Test__t_BDict))
    {
        global $IcePHP__t_int;
        global $Test__t_B;
        $Test__t_BDict = IcePHP_defineDictionary('::Test::BDict', $IcePHP__t_int, $Test__t_B);
    }
}

namespace Test
{
    global $Test__t_BaseException;
    class BaseException extends \Ice\UserException
    {
        public function __construct($sbe='', $pb=null)
        {
            $this->sbe = $sbe;
            $this->pb = $pb;
        }

        public function ice_id()
        {
            return '::Test::BaseException';
        }

        public function __toString(): string
        {
            global $Test__t_BaseException;
            return IcePHP_stringifyException($this, $Test__t_BaseException);
        }

        public $sbe;
        public $pb;
    }
    global $IcePHP__t_string;
    global $Test__t_B;

    $Test__t_BaseException = IcePHP_defineException('::Test::BaseException', '\\Test\\BaseException', false, null, array(
        array('sbe', $IcePHP__t_string, false, 0),
        array('pb', $Test__t_B, false, 0)));
}

namespace Test
{
    global $Test__t_DerivedException;
    class DerivedException extends \Test\BaseException
    {
        public function __construct($sbe='', $pb=null, $sde='', $pd1=null)
        {
            parent::__construct($sbe, $pb);
            $this->sde = $sde;
            $this->pd1 = $pd1;
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

        public $sde;
        public $pd1;
    }
    global $IcePHP__t_string;
    global $Test__t_D1;

    $Test__t_DerivedException = IcePHP_defineException('::Test::DerivedException', '\\Test\\DerivedException', false, $Test__t_BaseException, array(
        array('sde', $IcePHP__t_string, false, 0),
        array('pd1', $Test__t_D1, false, 0)));
}

namespace Test
{
    global $Test__t_Forward;
    if(!isset($Test__t_Forward))
    {
        $Test__t_Forward = IcePHP_declareClass('::Test::Forward');
    }
}

namespace Test
{
    global $Test__t_PBase;
    class PBase extends \Ice\Value
    {
        public function __construct($pi=0)
        {
            $this->pi = $pi;
        }

        public function ice_id()
        {
            return '::Test::PBase';
        }

        public static function ice_staticId()
        {
            return '::Test::PBase';
        }

        public function __toString(): string
        {
            global $Test__t_PBase;
            return IcePHP_stringify($this, $Test__t_PBase);
        }

        public $pi;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    $Test__t_PBase = IcePHP_defineClass('::Test::PBase', '\\Test\\PBase', -1, false, false, $Ice__t_Value, array(
        array('pi', $IcePHP__t_int, false, 0)));
}

namespace Test
{
    global $Test__t_PBaseSeq;

    if(!isset($Test__t_PBaseSeq))
    {
        global $Test__t_PBase;
        $Test__t_PBaseSeq = IcePHP_defineSequence('::Test::PBaseSeq', $Test__t_PBase);
    }
}

namespace Test
{
    global $Test__t_Preserved;
    class Preserved extends \Test\PBase
    {
        public function __construct($pi=0, $ps='')
        {
            parent::__construct($pi);
            $this->ps = $ps;
        }

        public function ice_id()
        {
            return '::Test::Preserved';
        }

        public static function ice_staticId()
        {
            return '::Test::Preserved';
        }

        public function __toString(): string
        {
            global $Test__t_Preserved;
            return IcePHP_stringify($this, $Test__t_Preserved);
        }

        public $ps;
    }

    global $Test__t_PBase;
    global $IcePHP__t_string;
    $Test__t_Preserved = IcePHP_defineClass('::Test::Preserved', '\\Test\\Preserved', -1, true, false, $Test__t_PBase, array(
        array('ps', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_PDerived;
    class PDerived extends \Test\Preserved
    {
        public function __construct($pi=0, $ps='', $pb=null)
        {
            parent::__construct($pi, $ps);
            $this->pb = $pb;
        }

        public function ice_id()
        {
            return '::Test::PDerived';
        }

        public static function ice_staticId()
        {
            return '::Test::PDerived';
        }

        public function __toString(): string
        {
            global $Test__t_PDerived;
            return IcePHP_stringify($this, $Test__t_PDerived);
        }

        public $pb;
    }

    $Test__t_PDerived = IcePHP_declareClass('::Test::PDerived');

    global $Test__t_Preserved;
    global $Test__t_PBase;
    $Test__t_PDerived = IcePHP_defineClass('::Test::PDerived', '\\Test\\PDerived', -1, true, false, $Test__t_Preserved, array(
        array('pb', $Test__t_PBase, false, 0)));
}

namespace Test
{
    global $Test__t_CompactPDerived;
    class CompactPDerived extends \Test\Preserved
    {
        public function __construct($pi=0, $ps='', $pb=null)
        {
            parent::__construct($pi, $ps);
            $this->pb = $pb;
        }

        public function ice_id()
        {
            return '::Test::CompactPDerived';
        }

        public static function ice_staticId()
        {
            return '::Test::CompactPDerived';
        }

        public function __toString(): string
        {
            global $Test__t_CompactPDerived;
            return IcePHP_stringify($this, $Test__t_CompactPDerived);
        }

        public $pb;
    }

    $Test__t_CompactPDerived = IcePHP_declareClass('::Test::CompactPDerived');

    global $Test__t_Preserved;
    global $Test__t_PBase;
    $Test__t_CompactPDerived = IcePHP_defineClass('::Test::CompactPDerived', '\\Test\\CompactPDerived', 56, true, false, $Test__t_Preserved, array(
        array('pb', $Test__t_PBase, false, 0)));
}

namespace Test
{
    global $Test__t_PNode;
    class PNode extends \Ice\Value
    {
        public function __construct($next=null)
        {
            $this->next = $next;
        }

        public function ice_id()
        {
            return '::Test::PNode';
        }

        public static function ice_staticId()
        {
            return '::Test::PNode';
        }

        public function __toString(): string
        {
            global $Test__t_PNode;
            return IcePHP_stringify($this, $Test__t_PNode);
        }

        public $next;
    }

    $Test__t_PNode = IcePHP_declareClass('::Test::PNode');

    global $Ice__t_Value;
    global $Test__t_PNode;
    $Test__t_PNode = IcePHP_defineClass('::Test::PNode', '\\Test\\PNode', -1, true, false, $Ice__t_Value, array(
        array('next', $Test__t_PNode, false, 0)));
}

namespace Test
{
    global $Test__t_PreservedException;
    class PreservedException extends \Ice\UserException
    {
        public function __construct()
        {
        }

        public function ice_id()
        {
            return '::Test::PreservedException';
        }

        public function __toString(): string
        {
            global $Test__t_PreservedException;
            return IcePHP_stringifyException($this, $Test__t_PreservedException);
        }
    }

    $Test__t_PreservedException = IcePHP_defineException('::Test::PreservedException', '\\Test\\PreservedException', true, null, null);
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

    global $Ice__t_Value;
    global $Test__t_SBase;
    global $Test__t_SBSKnownDerived;
    global $Test__t_B;
    global $Test__t_D1;
    global $Test__t_SS1;
    global $Test__t_SS2;
    global $Test__t_SS3;
    global $Test__t_BDict;
    global $Test__t_PBase;
    global $Test__t_Preserved;
    global $Test__t_PNode;
    global $Test__t_Forward;
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'SBaseAsObject', 0, 0, 2, null, null, array($Ice__t_Value), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'SBaseAsSBase', 0, 0, 2, null, null, array($Test__t_SBase), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'SBSKnownDerivedAsSBase', 0, 0, 2, null, null, array($Test__t_SBase), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'SBSKnownDerivedAsSBSKnownDerived', 0, 0, 2, null, null, array($Test__t_SBSKnownDerived), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'SBSUnknownDerivedAsSBase', 0, 0, 2, null, null, array($Test__t_SBase), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'SBSUnknownDerivedAsSBaseCompact', 0, 0, 1, null, null, array($Test__t_SBase), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'SUnknownAsObject', 0, 0, 2, null, null, array($Ice__t_Value), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'checkSUnknown', 0, 0, 2, array(array($Ice__t_Value)), null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'oneElementCycle', 0, 0, 2, null, null, array($Test__t_B), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'twoElementCycle', 0, 0, 2, null, null, array($Test__t_B), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'D1AsB', 0, 0, 2, null, null, array($Test__t_B), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'D1AsD1', 0, 0, 2, null, null, array($Test__t_D1), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'D2AsB', 0, 0, 2, null, null, array($Test__t_B), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'paramTest1', 0, 0, 2, null, array(array($Test__t_B), array($Test__t_B)), null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'paramTest2', 0, 0, 2, null, array(array($Test__t_B), array($Test__t_B)), null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'paramTest3', 0, 0, 2, null, array(array($Test__t_B), array($Test__t_B)), array($Test__t_B), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'paramTest4', 0, 0, 2, null, array(array($Test__t_B)), array($Test__t_B), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'returnTest1', 0, 0, 2, null, array(array($Test__t_B), array($Test__t_B)), array($Test__t_B), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'returnTest2', 0, 0, 2, null, array(array($Test__t_B), array($Test__t_B)), array($Test__t_B), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'returnTest3', 0, 0, 2, array(array($Test__t_B), array($Test__t_B)), null, array($Test__t_B), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'sequenceTest', 0, 0, 2, array(array($Test__t_SS1), array($Test__t_SS2)), null, array($Test__t_SS3), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'dictionaryTest', 0, 0, 2, array(array($Test__t_BDict)), array(array($Test__t_BDict)), array($Test__t_BDict), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'exchangePBase', 0, 0, 2, array(array($Test__t_PBase)), null, array($Test__t_PBase), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'PBSUnknownAsPreserved', 0, 0, 2, null, null, array($Test__t_Preserved), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'checkPBSUnknown', 0, 0, 2, array(array($Test__t_Preserved)), null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'PBSUnknownAsPreservedWithGraph', 0, 0, 2, null, null, array($Test__t_Preserved), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'checkPBSUnknownWithGraph', 0, 0, 2, array(array($Test__t_Preserved)), null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'PBSUnknown2AsPreservedWithGraph', 0, 0, 2, null, null, array($Test__t_Preserved), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'checkPBSUnknown2WithGraph', 0, 0, 2, array(array($Test__t_Preserved)), null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'exchangePNode', 0, 0, 2, array(array($Test__t_PNode)), null, array($Test__t_PNode), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'throwBaseAsBase', 0, 0, 2, null, null, null, array($Test__t_BaseException));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'throwDerivedAsBase', 0, 0, 2, null, null, null, array($Test__t_BaseException));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'throwDerivedAsDerived', 0, 0, 2, null, null, null, array($Test__t_DerivedException));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'throwUnknownDerivedAsBase', 0, 0, 2, null, null, null, array($Test__t_BaseException));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'throwPreservedException', 0, 0, 2, null, null, null, array($Test__t_PreservedException));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'useForward', 0, 0, 2, null, array(array($Test__t_Forward)), null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'shutdown', 0, 0, 2, null, null, null, null);
}

namespace Test
{
    global $Test__t_D3;
    class D3 extends \Test\B
    {
        public function __construct($sb='', $pb=null, $sd3='', $pd3=null)
        {
            parent::__construct($sb, $pb);
            $this->sd3 = $sd3;
            $this->pd3 = $pd3;
        }

        public function ice_id()
        {
            return '::Test::D3';
        }

        public static function ice_staticId()
        {
            return '::Test::D3';
        }

        public function __toString(): string
        {
            global $Test__t_D3;
            return IcePHP_stringify($this, $Test__t_D3);
        }

        public $sd3;
        public $pd3;
    }

    $Test__t_D3 = IcePHP_declareClass('::Test::D3');

    global $Test__t_B;
    global $IcePHP__t_string;
    $Test__t_D3 = IcePHP_defineClass('::Test::D3', '\\Test\\D3', -1, false, false, $Test__t_B, array(
        array('sd3', $IcePHP__t_string, false, 0),
        array('pd3', $Test__t_B, false, 0)));
}

namespace Test
{
    global $Test__t_PCUnknown;
    class PCUnknown extends \Test\PBase
    {
        public function __construct($pi=0, $pu='')
        {
            parent::__construct($pi);
            $this->pu = $pu;
        }

        public function ice_id()
        {
            return '::Test::PCUnknown';
        }

        public static function ice_staticId()
        {
            return '::Test::PCUnknown';
        }

        public function __toString(): string
        {
            global $Test__t_PCUnknown;
            return IcePHP_stringify($this, $Test__t_PCUnknown);
        }

        public $pu;
    }

    global $Test__t_PBase;
    global $IcePHP__t_string;
    $Test__t_PCUnknown = IcePHP_defineClass('::Test::PCUnknown', '\\Test\\PCUnknown', -1, true, false, $Test__t_PBase, array(
        array('pu', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_PCDerived;
    class PCDerived extends \Test\PDerived
    {
        public function __construct($pi=0, $ps='', $pb=null, $pbs=null)
        {
            parent::__construct($pi, $ps, $pb);
            $this->pbs = $pbs;
        }

        public function ice_id()
        {
            return '::Test::PCDerived';
        }

        public static function ice_staticId()
        {
            return '::Test::PCDerived';
        }

        public function __toString(): string
        {
            global $Test__t_PCDerived;
            return IcePHP_stringify($this, $Test__t_PCDerived);
        }

        public $pbs;
    }

    $Test__t_PCDerived = IcePHP_declareClass('::Test::PCDerived');

    global $Test__t_PDerived;
    global $Test__t_PBaseSeq;
    $Test__t_PCDerived = IcePHP_defineClass('::Test::PCDerived', '\\Test\\PCDerived', -1, true, false, $Test__t_PDerived, array(
        array('pbs', $Test__t_PBaseSeq, false, 0)));
}

namespace Test
{
    global $Test__t_PCDerived2;
    class PCDerived2 extends \Test\PCDerived
    {
        public function __construct($pi=0, $ps='', $pb=null, $pbs=null, $pcd2=0)
        {
            parent::__construct($pi, $ps, $pb, $pbs);
            $this->pcd2 = $pcd2;
        }

        public function ice_id()
        {
            return '::Test::PCDerived2';
        }

        public static function ice_staticId()
        {
            return '::Test::PCDerived2';
        }

        public function __toString(): string
        {
            global $Test__t_PCDerived2;
            return IcePHP_stringify($this, $Test__t_PCDerived2);
        }

        public $pcd2;
    }

    $Test__t_PCDerived2 = IcePHP_declareClass('::Test::PCDerived2');

    global $Test__t_PCDerived;
    global $IcePHP__t_int;
    $Test__t_PCDerived2 = IcePHP_defineClass('::Test::PCDerived2', '\\Test\\PCDerived2', -1, true, false, $Test__t_PCDerived, array(
        array('pcd2', $IcePHP__t_int, false, 0)));
}

namespace Test
{
    global $Test__t_PCDerived3;
    class PCDerived3 extends \Test\PCDerived2
    {
        public function __construct($pi=0, $ps='', $pb=null, $pbs=null, $pcd2=0, $pcd3=null)
        {
            parent::__construct($pi, $ps, $pb, $pbs, $pcd2);
            $this->pcd3 = $pcd3;
        }

        public function ice_id()
        {
            return '::Test::PCDerived3';
        }

        public static function ice_staticId()
        {
            return '::Test::PCDerived3';
        }

        public function __toString(): string
        {
            global $Test__t_PCDerived3;
            return IcePHP_stringify($this, $Test__t_PCDerived3);
        }

        public $pcd3;
    }

    $Test__t_PCDerived3 = IcePHP_declareClass('::Test::PCDerived3');

    global $Test__t_PCDerived2;
    global $Ice__t_Value;
    $Test__t_PCDerived3 = IcePHP_defineClass('::Test::PCDerived3', '\\Test\\PCDerived3', -1, true, false, $Test__t_PCDerived2, array(
        array('pcd3', $Ice__t_Value, false, 0)));
}

namespace Test
{
    global $Test__t_CompactPCDerived;
    class CompactPCDerived extends \Test\CompactPDerived
    {
        public function __construct($pi=0, $ps='', $pb=null, $pbs=null)
        {
            parent::__construct($pi, $ps, $pb);
            $this->pbs = $pbs;
        }

        public function ice_id()
        {
            return '::Test::CompactPCDerived';
        }

        public static function ice_staticId()
        {
            return '::Test::CompactPCDerived';
        }

        public function __toString(): string
        {
            global $Test__t_CompactPCDerived;
            return IcePHP_stringify($this, $Test__t_CompactPCDerived);
        }

        public $pbs;
    }

    $Test__t_CompactPCDerived = IcePHP_declareClass('::Test::CompactPCDerived');

    global $Test__t_CompactPDerived;
    global $Test__t_PBaseSeq;
    $Test__t_CompactPCDerived = IcePHP_defineClass('::Test::CompactPCDerived', '\\Test\\CompactPCDerived', 57, true, false, $Test__t_CompactPDerived, array(
        array('pbs', $Test__t_PBaseSeq, false, 0)));
}

namespace Test
{
    global $Test__t_Hidden;
    class Hidden extends \Ice\Value
    {
        public function __construct($f=null)
        {
            $this->f = $f;
        }

        public function ice_id()
        {
            return '::Test::Hidden';
        }

        public static function ice_staticId()
        {
            return '::Test::Hidden';
        }

        public function __toString(): string
        {
            global $Test__t_Hidden;
            return IcePHP_stringify($this, $Test__t_Hidden);
        }

        public $f;
    }

    $Test__t_Hidden = IcePHP_declareClass('::Test::Hidden');

    global $Ice__t_Value;
    global $Test__t_Forward;
    $Test__t_Hidden = IcePHP_defineClass('::Test::Hidden', '\\Test\\Hidden', -1, false, false, $Ice__t_Value, array(
        array('f', $Test__t_Forward, false, 0)));
}

namespace Test
{
    global $Test__t_Forward;
    class Forward extends \Ice\Value
    {
        public function __construct($h=null)
        {
            $this->h = $h;
        }

        public function ice_id()
        {
            return '::Test::Forward';
        }

        public static function ice_staticId()
        {
            return '::Test::Forward';
        }

        public function __toString(): string
        {
            global $Test__t_Forward;
            return IcePHP_stringify($this, $Test__t_Forward);
        }

        public $h;
    }

    global $Ice__t_Value;
    global $Test__t_Hidden;
    $Test__t_Forward = IcePHP_defineClass('::Test::Forward', '\\Test\\Forward', -1, false, false, $Ice__t_Value, array(
        array('h', $Test__t_Hidden, false, 0)));
}
?>
