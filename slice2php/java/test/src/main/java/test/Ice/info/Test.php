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
    require_once 'Ice/Context.php';
}

namespace Test
{
    global $Test__t_TestIntf;
    global $Test__t_TestIntfPrx;
    $Test__t_TestIntfPrx = IcePHP_declareProxy('::Test::TestIntf');
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

    global $Ice__t_Context;
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'shutdown', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'getEndpointInfoAsContext', 0, -1, null, null, array($Ice__t_Context), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'getConnectionInfoAsContext', 0, -1, null, null, array($Ice__t_Context), null);
}
?>
