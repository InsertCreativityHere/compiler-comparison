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


namespace
{
    require_once 'Ice/BuiltinSequences.php';
}

namespace Test
{
    global $Test__t_Empty;
    global $Test__t_EmptyPrx;

    class EmptyPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Empty', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Empty', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Empty';
        }
    }
    $Test__t_Empty = IcePHP_defineClass('::Test::Empty', '\\Test\\_Empty', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_EmptyPrx = IcePHP_defineProxy('::Test::Empty', $Ice__t_ObjectPrx, null);
}

namespace Test
{
    global $Test__t_Thrower;
    global $Test__t_ThrowerPrx;
    if(!isset($Test__t_Thrower))
    {
        $Test__t_Thrower = IcePHP_declareClass('::Test::Thrower');
        $Test__t_ThrowerPrx = IcePHP_declareProxy('::Test::Thrower');
    }
}

namespace Test
{
    global $Test__t_A;
    class A extends \Ice\UserException
    {
        public function __construct($aMem=0)
        {
            $this->aMem = $aMem;
        }

        public function ice_id()
        {
            return '::Test::A';
        }

        public function __toString(): string
        {
            global $Test__t_A;
            return IcePHP_stringifyException($this, $Test__t_A);
        }

        public $aMem;
    }
    global $IcePHP__t_int;

    $Test__t_A = IcePHP_defineException('::Test::A', '\\Test\\A', false, null, array(
        array('aMem', $IcePHP__t_int, false, 0)));
}

namespace Test
{
    global $Test__t_B;
    class B extends \Test\A
    {
        public function __construct($aMem=0, $bMem=0)
        {
            parent::__construct($aMem);
            $this->bMem = $bMem;
        }

        public function ice_id()
        {
            return '::Test::B';
        }

        public function __toString(): string
        {
            global $Test__t_B;
            return IcePHP_stringifyException($this, $Test__t_B);
        }

        public $bMem;
    }
    global $IcePHP__t_int;

    $Test__t_B = IcePHP_defineException('::Test::B', '\\Test\\B', false, $Test__t_A, array(
        array('bMem', $IcePHP__t_int, false, 0)));
}

namespace Test
{
    global $Test__t_C;
    class C extends \Test\B
    {
        public function __construct($aMem=0, $bMem=0, $cMem=0)
        {
            parent::__construct($aMem, $bMem);
            $this->cMem = $cMem;
        }

        public function ice_id()
        {
            return '::Test::C';
        }

        public function __toString(): string
        {
            global $Test__t_C;
            return IcePHP_stringifyException($this, $Test__t_C);
        }

        public $cMem;
    }
    global $IcePHP__t_int;

    $Test__t_C = IcePHP_defineException('::Test::C', '\\Test\\C', false, $Test__t_B, array(
        array('cMem', $IcePHP__t_int, false, 0)));
}

namespace Test
{
    global $Test__t_D;
    class D extends \Ice\UserException
    {
        public function __construct($dMem=0)
        {
            $this->dMem = $dMem;
        }

        public function ice_id()
        {
            return '::Test::D';
        }

        public function __toString(): string
        {
            global $Test__t_D;
            return IcePHP_stringifyException($this, $Test__t_D);
        }

        public $dMem;
    }
    global $IcePHP__t_int;

    $Test__t_D = IcePHP_defineException('::Test::D', '\\Test\\D', false, null, array(
        array('dMem', $IcePHP__t_int, false, 0)));
}

namespace Test\Mod
{
    global $Test_Mod__t_A;
    class A extends \Test\A
    {
        public function __construct($aMem=0, $a2Mem=0)
        {
            parent::__construct($aMem);
            $this->a2Mem = $a2Mem;
        }

        public function ice_id()
        {
            return '::Test::Mod::A';
        }

        public function __toString(): string
        {
            global $Test_Mod__t_A;
            return IcePHP_stringifyException($this, $Test_Mod__t_A);
        }

        public $a2Mem;
    }
    global $IcePHP__t_int;

    $Test_Mod__t_A = IcePHP_defineException('::Test::Mod::A', '\\Test\\Mod\\A', false, $Test__t_A, array(
        array('a2Mem', $IcePHP__t_int, false, 0)));
}

namespace Test
{
    global $Test__t_Thrower;
    global $Test__t_ThrowerPrx;

    class ThrowerPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Thrower', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Thrower', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Thrower';
        }
    }
    $Test__t_Thrower = IcePHP_defineClass('::Test::Thrower', '\\Test\\Thrower', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_ThrowerPrx = IcePHP_defineProxy('::Test::Thrower', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_bool;
    global $IcePHP__t_int;
    global $Ice__t_ByteSeq;
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'shutdown', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'supportsUndeclaredExceptions', 0, 0, 0, null, null, array($IcePHP__t_bool), null);
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'supportsAssertException', 0, 0, 0, null, null, array($IcePHP__t_bool), null);
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'throwAasA', 0, 0, 0, array(array($IcePHP__t_int)), null, null, array($Test__t_A));
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'throwAorDasAorD', 0, 0, 0, array(array($IcePHP__t_int)), null, null, array($Test__t_A, $Test__t_D));
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'throwBasA', 0, 0, 0, array(array($IcePHP__t_int), array($IcePHP__t_int)), null, null, array($Test__t_A));
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'throwCasA', 0, 0, 0, array(array($IcePHP__t_int), array($IcePHP__t_int), array($IcePHP__t_int)), null, null, array($Test__t_A));
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'throwBasB', 0, 0, 0, array(array($IcePHP__t_int), array($IcePHP__t_int)), null, null, array($Test__t_B));
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'throwCasB', 0, 0, 0, array(array($IcePHP__t_int), array($IcePHP__t_int), array($IcePHP__t_int)), null, null, array($Test__t_B));
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'throwCasC', 0, 0, 0, array(array($IcePHP__t_int), array($IcePHP__t_int), array($IcePHP__t_int)), null, null, array($Test__t_C));
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'throwModA', 0, 0, 0, array(array($IcePHP__t_int), array($IcePHP__t_int)), null, null, array($Test_Mod__t_A));
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'throwUndeclaredA', 0, 0, 0, array(array($IcePHP__t_int)), null, null, null);
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'throwUndeclaredB', 0, 0, 0, array(array($IcePHP__t_int), array($IcePHP__t_int)), null, null, null);
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'throwUndeclaredC', 0, 0, 0, array(array($IcePHP__t_int), array($IcePHP__t_int), array($IcePHP__t_int)), null, null, null);
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'throwLocalException', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'throwNonIceException', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'throwAssertException', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'throwMemoryLimitException', 0, 0, 0, array(array($Ice__t_ByteSeq)), null, array($Ice__t_ByteSeq), null);
    IcePHP_defineOperation($Test__t_ThrowerPrx, 'throwLocalExceptionIdempotent', 2, 2, 0, null, null, null, null);
}

namespace Test
{
    global $Test__t_WrongOperation;
    global $Test__t_WrongOperationPrx;

    class WrongOperationPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::WrongOperation', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::WrongOperation', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::WrongOperation';
        }
    }
    $Test__t_WrongOperation = IcePHP_defineClass('::Test::WrongOperation', '\\Test\\WrongOperation', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_WrongOperationPrx = IcePHP_defineProxy('::Test::WrongOperation', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($Test__t_WrongOperationPrx, 'noSuchOperation', 0, 0, 0, null, null, null, null);
}
?>
