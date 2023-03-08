<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `LocationTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace
{
    require_once 'Ice/Locator.php';
}

namespace Test
{
    global $Test__t_TestLocatorRegistry;
    global $Test__t_TestLocatorRegistryPrx;

    class TestLocatorRegistryPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::TestLocatorRegistry', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::TestLocatorRegistry', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::TestLocatorRegistry';
        }
    }
    $Test__t_TestLocatorRegistry = IcePHP_defineClass('::Test::TestLocatorRegistry', '\\Test\\TestLocatorRegistry', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_TestLocatorRegistryPrx = IcePHP_defineProxy('::Test::TestLocatorRegistry', $Ice__t_ObjectPrx, array($Ice__t_LocatorRegistryPrx));

    global $Ice__t_ObjectPrx;
    IcePHP_defineOperation($Test__t_TestLocatorRegistryPrx, 'addObject', 0, 0, 0, array(array($Ice__t_ObjectPrx)), null, null, null);
}

namespace Test
{
    global $Test__t_TestLocator;
    global $Test__t_TestLocatorPrx;

    class TestLocatorPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::TestLocator', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::TestLocator', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::TestLocator';
        }
    }
    $Test__t_TestLocator = IcePHP_defineClass('::Test::TestLocator', '\\Test\\TestLocator', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_TestLocatorPrx = IcePHP_defineProxy('::Test::TestLocator', $Ice__t_ObjectPrx, array($Ice__t_LocatorPrx));

    global $IcePHP__t_int;
    IcePHP_defineOperation($Test__t_TestLocatorPrx, 'getRequestCount', 2, 2, 0, null, null, array($IcePHP__t_int), null);
}

namespace Test
{
    global $Test__t_ServerManager;
    global $Test__t_ServerManagerPrx;

    class ServerManagerPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::ServerManager', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::ServerManager', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::ServerManager';
        }
    }
    $Test__t_ServerManager = IcePHP_defineClass('::Test::ServerManager', '\\Test\\ServerManager', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_ServerManagerPrx = IcePHP_defineProxy('::Test::ServerManager', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($Test__t_ServerManagerPrx, 'startServer', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_ServerManagerPrx, 'shutdown', 0, 0, 0, null, null, null, null);
}

namespace Test
{
    global $Test__t_Hello;
    global $Test__t_HelloPrx;

    class HelloPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Hello', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Hello', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Hello';
        }
    }
    $Test__t_Hello = IcePHP_defineClass('::Test::Hello', '\\Test\\Hello', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_HelloPrx = IcePHP_defineProxy('::Test::Hello', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($Test__t_HelloPrx, 'sayHello', 0, 0, 0, null, null, null, null);
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

    global $Test__t_HelloPrx;
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'shutdown', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'getHello', 0, 0, 0, null, null, array($Test__t_HelloPrx), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'getReplicatedHello', 0, 0, 0, null, null, array($Test__t_HelloPrx), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'migrateHello', 0, 0, 0, null, null, null, null);
}
?>
