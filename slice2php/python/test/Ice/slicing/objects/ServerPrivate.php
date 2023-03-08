<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ServerPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace
{
    require_once 'Test.php';
}

namespace Test
{
    global $Test__t_SBSUnknownDerived;
    class SBSUnknownDerived extends \Test\SBase
    {
        public function __construct($sb='', $sbsud='')
        {
            parent::__construct($sb);
            $this->sbsud = $sbsud;
        }

        public function ice_id()
        {
            return '::Test::SBSUnknownDerived';
        }

        public static function ice_staticId()
        {
            return '::Test::SBSUnknownDerived';
        }

        public function __toString(): string
        {
            global $Test__t_SBSUnknownDerived;
            return IcePHP_stringify($this, $Test__t_SBSUnknownDerived);
        }

        public $sbsud;
    }

    global $Test__t_SBase;
    global $IcePHP__t_string;
    $Test__t_SBSUnknownDerived = IcePHP_defineClass('::Test::SBSUnknownDerived', '\\Test\\SBSUnknownDerived', -1, false, false, $Test__t_SBase, array(
        array('sbsud', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_SUnknown;
    class SUnknown extends \Ice\Value
    {
        public function __construct($su='', $cycle=null)
        {
            $this->su = $su;
            $this->cycle = $cycle;
        }

        public function ice_id()
        {
            return '::Test::SUnknown';
        }

        public static function ice_staticId()
        {
            return '::Test::SUnknown';
        }

        public function __toString(): string
        {
            global $Test__t_SUnknown;
            return IcePHP_stringify($this, $Test__t_SUnknown);
        }

        public $su;
        public $cycle;
    }

    $Test__t_SUnknown = IcePHP_declareClass('::Test::SUnknown');

    global $Ice__t_Value;
    global $IcePHP__t_string;
    global $Test__t_SUnknown;
    $Test__t_SUnknown = IcePHP_defineClass('::Test::SUnknown', '\\Test\\SUnknown', -1, false, false, $Ice__t_Value, array(
        array('su', $IcePHP__t_string, false, 0),
        array('cycle', $Test__t_SUnknown, false, 0)));
}

namespace Test
{
    global $Test__t_D2;
    class D2 extends \Test\B
    {
        public function __construct($sb='', $pb=null, $sd2='', $pd2=null)
        {
            parent::__construct($sb, $pb);
            $this->sd2 = $sd2;
            $this->pd2 = $pd2;
        }

        public function ice_id()
        {
            return '::Test::D2';
        }

        public static function ice_staticId()
        {
            return '::Test::D2';
        }

        public function __toString(): string
        {
            global $Test__t_D2;
            return IcePHP_stringify($this, $Test__t_D2);
        }

        public $sd2;
        public $pd2;
    }

    $Test__t_D2 = IcePHP_declareClass('::Test::D2');

    global $Test__t_B;
    global $IcePHP__t_string;
    $Test__t_D2 = IcePHP_defineClass('::Test::D2', '\\Test\\D2', -1, false, false, $Test__t_B, array(
        array('sd2', $IcePHP__t_string, false, 0),
        array('pd2', $Test__t_B, false, 0)));
}

namespace Test
{
    global $Test__t_D4;
    class D4 extends \Test\B
    {
        public function __construct($sb='', $pb=null, $p1=null, $p2=null)
        {
            parent::__construct($sb, $pb);
            $this->p1 = $p1;
            $this->p2 = $p2;
        }

        public function ice_id()
        {
            return '::Test::D4';
        }

        public static function ice_staticId()
        {
            return '::Test::D4';
        }

        public function __toString(): string
        {
            global $Test__t_D4;
            return IcePHP_stringify($this, $Test__t_D4);
        }

        public $p1;
        public $p2;
    }

    $Test__t_D4 = IcePHP_declareClass('::Test::D4');

    global $Test__t_B;
    $Test__t_D4 = IcePHP_defineClass('::Test::D4', '\\Test\\D4', -1, false, false, $Test__t_B, array(
        array('p1', $Test__t_B, false, 0),
        array('p2', $Test__t_B, false, 0)));
}

namespace Test
{
    global $Test__t_UnknownDerivedException;
    class UnknownDerivedException extends \Test\BaseException
    {
        public function __construct($sbe='', $pb=null, $sude='', $pd2=null)
        {
            parent::__construct($sbe, $pb);
            $this->sude = $sude;
            $this->pd2 = $pd2;
        }

        public function ice_id()
        {
            return '::Test::UnknownDerivedException';
        }

        public function __toString(): string
        {
            global $Test__t_UnknownDerivedException;
            return IcePHP_stringifyException($this, $Test__t_UnknownDerivedException);
        }

        public $sude;
        public $pd2;
    }
    global $IcePHP__t_string;
    global $Test__t_D2;

    $Test__t_UnknownDerivedException = IcePHP_defineException('::Test::UnknownDerivedException', '\\Test\\UnknownDerivedException', false, $Test__t_BaseException, array(
        array('sude', $IcePHP__t_string, false, 0),
        array('pd2', $Test__t_D2, false, 0)));
}

namespace Test
{
    global $Test__t_MyClass;
    class MyClass extends \Ice\Value
    {
        public function __construct($i=0)
        {
            $this->i = $i;
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

        public $i;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    $Test__t_MyClass = IcePHP_defineClass('::Test::MyClass', '\\Test\\MyClass', -1, false, false, $Ice__t_Value, array(
        array('i', $IcePHP__t_int, false, 0)));
}

namespace Test
{
    global $Test__t_PSUnknown;
    class PSUnknown extends \Test\Preserved
    {
        public function __construct($pi=0, $ps='', $psu='', $graph=null, $cl=null)
        {
            parent::__construct($pi, $ps);
            $this->psu = $psu;
            $this->graph = $graph;
            $this->cl = $cl;
        }

        public function ice_id()
        {
            return '::Test::PSUnknown';
        }

        public static function ice_staticId()
        {
            return '::Test::PSUnknown';
        }

        public function __toString(): string
        {
            global $Test__t_PSUnknown;
            return IcePHP_stringify($this, $Test__t_PSUnknown);
        }

        public $psu;
        public $graph;
        public $cl;
    }

    $Test__t_PSUnknown = IcePHP_declareClass('::Test::PSUnknown');

    global $Test__t_Preserved;
    global $IcePHP__t_string;
    global $Test__t_PNode;
    global $Test__t_MyClass;
    $Test__t_PSUnknown = IcePHP_defineClass('::Test::PSUnknown', '\\Test\\PSUnknown', -1, true, false, $Test__t_Preserved, array(
        array('psu', $IcePHP__t_string, false, 0),
        array('graph', $Test__t_PNode, false, 0),
        array('cl', $Test__t_MyClass, false, 0)));
}

namespace Test
{
    global $Test__t_PSUnknown2;
    class PSUnknown2 extends \Test\Preserved
    {
        public function __construct($pi=0, $ps='', $pb=null)
        {
            parent::__construct($pi, $ps);
            $this->pb = $pb;
        }

        public function ice_id()
        {
            return '::Test::PSUnknown2';
        }

        public static function ice_staticId()
        {
            return '::Test::PSUnknown2';
        }

        public function __toString(): string
        {
            global $Test__t_PSUnknown2;
            return IcePHP_stringify($this, $Test__t_PSUnknown2);
        }

        public $pb;
    }

    $Test__t_PSUnknown2 = IcePHP_declareClass('::Test::PSUnknown2');

    global $Test__t_Preserved;
    global $Test__t_PBase;
    $Test__t_PSUnknown2 = IcePHP_defineClass('::Test::PSUnknown2', '\\Test\\PSUnknown2', -1, true, false, $Test__t_Preserved, array(
        array('pb', $Test__t_PBase, false, 0)));
}

namespace Test
{
    global $Test__t_PSUnknownException;
    class PSUnknownException extends \Test\PreservedException
    {
        public function __construct($p=null)
        {
            parent::__construct();
            $this->p = $p;
        }

        public function ice_id()
        {
            return '::Test::PSUnknownException';
        }

        public function __toString(): string
        {
            global $Test__t_PSUnknownException;
            return IcePHP_stringifyException($this, $Test__t_PSUnknownException);
        }

        public $p;
    }
    global $Test__t_PSUnknown2;

    $Test__t_PSUnknownException = IcePHP_defineException('::Test::PSUnknownException', '\\Test\\PSUnknownException', true, $Test__t_PreservedException, array(
        array('p', $Test__t_PSUnknown2, false, 0)));
}
?>
