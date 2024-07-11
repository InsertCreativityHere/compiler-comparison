<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServerPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


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
    $Test__t_Empty = IcePHP_defineClass('::Test::Empty', '\\Test\\_Empty', -1, false, $Ice__t_Value, null);
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
    $Test__t_AlsoEmpty = IcePHP_defineClass('::Test::AlsoEmpty', '\\Test\\AlsoEmpty', -1, false, $Ice__t_Value, null);
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

    global $Ice__t_ObjectPrx;
    $Test__t_UnexpectedObjectExceptionTestPrx = IcePHP_defineProxy('::Test::UnexpectedObjectExceptionTest', $Ice__t_ObjectPrx, null);

    global $Test__t_AlsoEmpty;
    IcePHP_defineOperation($Test__t_UnexpectedObjectExceptionTestPrx, 'op', 0, 0, null, null, array($Test__t_AlsoEmpty), null);
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
    $Test__t_COneMember = IcePHP_defineClass('::Test::COneMember', '\\Test\\COneMember', -1, false, $Ice__t_Value, array(
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
    $Test__t_CTwoMembers = IcePHP_defineClass('::Test::CTwoMembers', '\\Test\\CTwoMembers', -1, false, $Ice__t_Value, array(
        array('e1', $Test__t_Empty, false, 0),
        array('e2', $Test__t_Empty, false, 0)));
}

namespace Test
{
    global $Test__t_EOneMember;
    class EOneMember extends \Ice\UserException
    {
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

    $Test__t_EOneMember = IcePHP_defineException('::Test::EOneMember', '\\Test\\EOneMember', null, array(
        array('e', $Test__t_Empty, false, 0)));
}

namespace Test
{
    global $Test__t_ETwoMembers;
    class ETwoMembers extends \Ice\UserException
    {
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

    $Test__t_ETwoMembers = IcePHP_defineException('::Test::ETwoMembers', '\\Test\\ETwoMembers', null, array(
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
