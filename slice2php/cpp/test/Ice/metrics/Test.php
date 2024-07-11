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
    global $Test__t_UserEx;
    class UserEx extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::Test::UserEx';
        }

        public function __toString(): string
        {
            global $Test__t_UserEx;
            return IcePHP_stringifyException($this, $Test__t_UserEx);
        }
    }

    $Test__t_UserEx = IcePHP_defineException('::Test::UserEx', '\\Test\\UserEx', null, null);
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
    global $Test__t_Metrics;
    global $Test__t_MetricsPrx;

    class MetricsPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Metrics', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Metrics', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Metrics';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_MetricsPrx = IcePHP_defineProxy('::Test::Metrics', $Ice__t_ObjectPrx, null);

    global $Test__t_ByteSeq;
    global $Ice__t_ObjectPrx;
    IcePHP_defineOperation($Test__t_MetricsPrx, 'op', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_MetricsPrx, 'fail', 2, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_MetricsPrx, 'opWithUserException', 0, 0, null, null, null, array($Test__t_UserEx));
    IcePHP_defineOperation($Test__t_MetricsPrx, 'opWithRequestFailedException', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_MetricsPrx, 'opWithLocalException', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_MetricsPrx, 'opWithUnknownException', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_MetricsPrx, 'opByteS', 0, 0, array(array($Test__t_ByteSeq)), null, null, null);
    IcePHP_defineOperation($Test__t_MetricsPrx, 'getAdmin', 0, 0, null, null, array($Ice__t_ObjectPrx), null);
    IcePHP_defineOperation($Test__t_MetricsPrx, 'shutdown', 0, 0, null, null, null, null);
}

namespace Test
{
    global $Test__t_Controller;
    global $Test__t_ControllerPrx;

    class ControllerPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Controller', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Controller', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Controller';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_ControllerPrx = IcePHP_defineProxy('::Test::Controller', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($Test__t_ControllerPrx, 'hold', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_ControllerPrx, 'resume', 0, 0, null, null, null, null);
}
?>
