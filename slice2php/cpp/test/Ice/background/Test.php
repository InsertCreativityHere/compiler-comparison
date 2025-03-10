<?php
// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>


namespace
{
    require_once 'Ice/BuiltinSequences.php';
}

namespace Test
{
    global $Test__t_Background;
    global $Test__t_BackgroundPrx;
    $Test__t_BackgroundPrx = IcePHP_declareProxy('::Test::Background');
}

namespace Test
{
    global $Test__t_Background;
    global $Test__t_BackgroundPrx;

    class BackgroundPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Test::Background');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Test::Background', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Background', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Background';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_BackgroundPrx = IcePHP_defineProxy('::Test::Background', $Ice__t_ObjectPrx, null);

    global $Ice__t_ByteSeq;
    IcePHP_defineOperation($Test__t_BackgroundPrx, 'op', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_BackgroundPrx, 'opWithPayload', 0, -1, array(array($Ice__t_ByteSeq)), null, null, null);
    IcePHP_defineOperation($Test__t_BackgroundPrx, 'shutdown', 0, -1, null, null, null, null);
}

namespace Test
{
    global $Test__t_BackgroundController;
    global $Test__t_BackgroundControllerPrx;
    $Test__t_BackgroundControllerPrx = IcePHP_declareProxy('::Test::BackgroundController');
}

namespace Test
{
    global $Test__t_BackgroundController;
    global $Test__t_BackgroundControllerPrx;

    class BackgroundControllerPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Test::BackgroundController');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Test::BackgroundController', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::BackgroundController', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::BackgroundController';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_BackgroundControllerPrx = IcePHP_defineProxy('::Test::BackgroundController', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_string;
    global $IcePHP__t_int;
    global $IcePHP__t_bool;
    IcePHP_defineOperation($Test__t_BackgroundControllerPrx, 'pauseCall', 0, -1, array(array($IcePHP__t_string)), null, null, null);
    IcePHP_defineOperation($Test__t_BackgroundControllerPrx, 'resumeCall', 0, -1, array(array($IcePHP__t_string)), null, null, null);
    IcePHP_defineOperation($Test__t_BackgroundControllerPrx, 'holdAdapter', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_BackgroundControllerPrx, 'resumeAdapter', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_BackgroundControllerPrx, 'initializeSocketOperation', 0, -1, array(array($IcePHP__t_int)), null, null, null);
    IcePHP_defineOperation($Test__t_BackgroundControllerPrx, 'initializeException', 0, -1, array(array($IcePHP__t_bool)), null, null, null);
    IcePHP_defineOperation($Test__t_BackgroundControllerPrx, 'readReady', 0, -1, array(array($IcePHP__t_bool)), null, null, null);
    IcePHP_defineOperation($Test__t_BackgroundControllerPrx, 'readException', 0, -1, array(array($IcePHP__t_bool)), null, null, null);
    IcePHP_defineOperation($Test__t_BackgroundControllerPrx, 'writeReady', 0, -1, array(array($IcePHP__t_bool)), null, null, null);
    IcePHP_defineOperation($Test__t_BackgroundControllerPrx, 'writeException', 0, -1, array(array($IcePHP__t_bool)), null, null, null);
    IcePHP_defineOperation($Test__t_BackgroundControllerPrx, 'buffered', 0, -1, array(array($IcePHP__t_bool)), null, null, null);
}
?>
