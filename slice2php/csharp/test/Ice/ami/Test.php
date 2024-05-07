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
    require_once 'Ice/Identity.php';
}

namespace Test
{
    global $Test__t_TestIntfException;
    class TestIntfException extends \Ice\UserException
    {
        public function __construct()
        {
        }

        public function ice_id()
        {
            return '::Test::TestIntfException';
        }

        public function __toString(): string
        {
            global $Test__t_TestIntfException;
            return IcePHP_stringifyException($this, $Test__t_TestIntfException);
        }
    }

    $Test__t_TestIntfException = IcePHP_defineException('::Test::TestIntfException', '\\Test\\TestIntfException', null, null);
}

namespace Test
{
    global $Test__t_CloseMode;
    class CloseMode
    {
        const Forcefully = 0;
        const Gracefully = 1;
        const GracefullyWithWait = 2;
    }

    $Test__t_CloseMode = IcePHP_defineEnum('::Test::CloseMode', array('Forcefully', 0, 'Gracefully', 1, 'GracefullyWithWait', 2));
}

namespace Test
{
    global $Test__t_PingReply;
    global $Test__t_PingReplyPrx;

    class PingReplyPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::PingReply', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::PingReply', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::PingReply';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_PingReplyPrx = IcePHP_defineProxy('::Test::PingReply', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($Test__t_PingReplyPrx, 'reply', 0, 0, null, null, null, null);
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

    global $Ice__t_ObjectPrx;
    $Test__t_TestIntfPrx = IcePHP_defineProxy('::Test::TestIntf', $Ice__t_ObjectPrx, null);

    global $Ice__t_ByteSeq;
    global $IcePHP__t_int;
    global $IcePHP__t_bool;
    global $Test__t_CloseMode;
    global $Test__t_PingReplyPrx;
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'op', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opWithPayload', 0, 0, array(array($Ice__t_ByteSeq)), null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opWithResult', 0, 0, null, null, array($IcePHP__t_int), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opWithUE', 0, 0, null, null, null, array($Test__t_TestIntfException));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opBatch', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opBatchCount', 0, 0, null, null, array($IcePHP__t_int), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'waitForBatch', 0, 0, array(array($IcePHP__t_int)), null, array($IcePHP__t_bool), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'close', 0, 0, array(array($Test__t_CloseMode)), null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'sleep', 0, 0, array(array($IcePHP__t_int)), null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'startDispatch', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'finishDispatch', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'shutdown', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'supportsAMD', 0, 0, null, null, array($IcePHP__t_bool), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'supportsFunctionalTests', 0, 0, null, null, array($IcePHP__t_bool), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opAsyncDispatch', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opWithResultAsyncDispatch', 0, 0, null, null, array($IcePHP__t_int), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opWithUEAsyncDispatch', 0, 0, null, null, null, array($Test__t_TestIntfException));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'pingBiDir', 0, 0, array(array($Test__t_PingReplyPrx)), null, null, null);
}

namespace Test
{
    global $Test__t_TestIntfController;
    global $Test__t_TestIntfControllerPrx;

    class TestIntfControllerPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::TestIntfController', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::TestIntfController', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::TestIntfController';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_TestIntfControllerPrx = IcePHP_defineProxy('::Test::TestIntfController', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($Test__t_TestIntfControllerPrx, 'holdAdapter', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfControllerPrx, 'resumeAdapter', 0, 0, null, null, null, null);
}

namespace Test\Outer\Inner
{
    global $Test_Outer_Inner__t_TestIntf;
    global $Test_Outer_Inner__t_TestIntfPrx;

    class TestIntfPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Outer::Inner::TestIntf', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Outer::Inner::TestIntf', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Outer::Inner::TestIntf';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test_Outer_Inner__t_TestIntfPrx = IcePHP_defineProxy('::Test::Outer::Inner::TestIntf', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_int;
    IcePHP_defineOperation($Test_Outer_Inner__t_TestIntfPrx, 'op', 0, 0, array(array($IcePHP__t_int)), array(array($IcePHP__t_int)), array($IcePHP__t_int), null);
}
?>
