<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ACMTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


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

    global $IcePHP__t_int;
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'sleep', 0, 0, 0, array(array($IcePHP__t_int)), null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'sleepAndHold', 0, 0, 0, array(array($IcePHP__t_int)), null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'interruptSleep', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'startHeartbeatCount', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'waitForHeartbeatCount', 0, 0, 0, array(array($IcePHP__t_int)), null, null, null);
}

namespace Test
{
    global $Test__t_RemoteObjectAdapter;
    global $Test__t_RemoteObjectAdapterPrx;

    class RemoteObjectAdapterPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::RemoteObjectAdapter', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::RemoteObjectAdapter', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::RemoteObjectAdapter';
        }
    }
    $Test__t_RemoteObjectAdapter = IcePHP_defineClass('::Test::RemoteObjectAdapter', '\\Test\\RemoteObjectAdapter', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_RemoteObjectAdapterPrx = IcePHP_defineProxy('::Test::RemoteObjectAdapter', $Ice__t_ObjectPrx, null);

    global $Test__t_TestIntfPrx;
    IcePHP_defineOperation($Test__t_RemoteObjectAdapterPrx, 'getTestIntf', 0, 0, 0, null, null, array($Test__t_TestIntfPrx), null);
    IcePHP_defineOperation($Test__t_RemoteObjectAdapterPrx, 'activate', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_RemoteObjectAdapterPrx, 'hold', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_RemoteObjectAdapterPrx, 'deactivate', 0, 0, 0, null, null, null, null);
}

namespace Test
{
    global $Test__t_RemoteCommunicator;
    global $Test__t_RemoteCommunicatorPrx;

    class RemoteCommunicatorPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::RemoteCommunicator', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::RemoteCommunicator', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::RemoteCommunicator';
        }
    }
    $Test__t_RemoteCommunicator = IcePHP_defineClass('::Test::RemoteCommunicator', '\\Test\\RemoteCommunicator', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_RemoteCommunicatorPrx = IcePHP_defineProxy('::Test::RemoteCommunicator', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_int;
    global $Test__t_RemoteObjectAdapterPrx;
    IcePHP_defineOperation($Test__t_RemoteCommunicatorPrx, 'createObjectAdapter', 0, 0, 0, array(array($IcePHP__t_int), array($IcePHP__t_int), array($IcePHP__t_int)), null, array($Test__t_RemoteObjectAdapterPrx), null);
    IcePHP_defineOperation($Test__t_RemoteCommunicatorPrx, 'shutdown', 0, 0, 0, null, null, null, null);
}
?>
