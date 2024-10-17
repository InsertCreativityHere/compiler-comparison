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
    global $Test__t_PingReply;
    global $Test__t_PingReplyPrx;

    class PingReplyPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Test::PingReply');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Test::PingReply', ...$args);
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

    IcePHP_defineOperation($Test__t_PingReplyPrx, 'reply', 0, -1, null, null, null, null);
}

namespace Test
{
    global $Test__t_TestIntf;
    global $Test__t_TestIntfPrx;

    class TestIntfPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Test::TestIntf');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Test::TestIntf', ...$args);
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
    global $Test__t_PingReplyPrx;
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'op', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opWithPayload', 0, -1, array(array($Ice__t_ByteSeq)), null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opWithResult', 0, -1, null, null, array($IcePHP__t_int), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opWithUE', 0, -1, null, null, null, array($Test__t_TestIntfException));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opBatch', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opBatchCount', 0, -1, null, null, array($IcePHP__t_int), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'waitForBatch', 0, -1, array(array($IcePHP__t_int)), null, array($IcePHP__t_bool), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'closeConnection', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'abortConnection', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'sleep', 0, -1, array(array($IcePHP__t_int)), null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'startDispatch', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'finishDispatch', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'shutdown', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'supportsAMD', 0, -1, null, null, array($IcePHP__t_bool), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'supportsFunctionalTests', 0, -1, null, null, array($IcePHP__t_bool), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'pingBiDir', 0, -1, array(array($Test__t_PingReplyPrx)), null, null, null);
}

namespace Test
{
    global $Test__t_TestIntfController;
    global $Test__t_TestIntfControllerPrx;

    class TestIntfControllerPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Test::TestIntfController');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Test::TestIntfController', ...$args);
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

    IcePHP_defineOperation($Test__t_TestIntfControllerPrx, 'holdAdapter', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfControllerPrx, 'resumeAdapter', 0, -1, null, null, null, null);
}
?>
