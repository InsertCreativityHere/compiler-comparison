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


namespace Test\MA
{
    global $Test_MA__t_IA;
    global $Test_MA__t_IAPrx;
    $Test_MA__t_IAPrx = IcePHP_declareProxy('::Test::MA::IA');
}

namespace Test\MA
{
    global $Test_MA__t_IA;
    global $Test_MA__t_IAPrx;

    class IAPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Test::MA::IA');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Test::MA::IA', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MA::IA', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MA::IA';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test_MA__t_IAPrx = IcePHP_defineProxy('::Test::MA::IA', $Ice__t_ObjectPrx, null);

    global $Test_MA__t_IAPrx;
    IcePHP_defineOperation($Test_MA__t_IAPrx, 'iaop', 0, -1, array(array($Test_MA__t_IAPrx)), null, array($Test_MA__t_IAPrx), null);
}

namespace Test\MB
{
    global $Test_MB__t_IB1;
    global $Test_MB__t_IB1Prx;
    $Test_MB__t_IB1Prx = IcePHP_declareProxy('::Test::MB::IB1');
}

namespace Test\MB
{
    global $Test_MB__t_IB1;
    global $Test_MB__t_IB1Prx;

    class IB1PrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Test::MB::IB1');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Test::MB::IB1', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MB::IB1', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MB::IB1';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test_MB__t_IB1Prx = IcePHP_defineProxy('::Test::MB::IB1', $Ice__t_ObjectPrx, array($Test_MA__t_IAPrx));

    global $Test_MB__t_IB1Prx;
    IcePHP_defineOperation($Test_MB__t_IB1Prx, 'ib1op', 0, -1, array(array($Test_MB__t_IB1Prx)), null, array($Test_MB__t_IB1Prx), null);
}

namespace Test\MB
{
    global $Test_MB__t_IB2;
    global $Test_MB__t_IB2Prx;
    $Test_MB__t_IB2Prx = IcePHP_declareProxy('::Test::MB::IB2');
}

namespace Test\MB
{
    global $Test_MB__t_IB2;
    global $Test_MB__t_IB2Prx;

    class IB2PrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Test::MB::IB2');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Test::MB::IB2', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MB::IB2', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MB::IB2';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test_MB__t_IB2Prx = IcePHP_defineProxy('::Test::MB::IB2', $Ice__t_ObjectPrx, array($Test_MA__t_IAPrx));

    global $Test_MB__t_IB2Prx;
    IcePHP_defineOperation($Test_MB__t_IB2Prx, 'ib2op', 0, -1, array(array($Test_MB__t_IB2Prx)), null, array($Test_MB__t_IB2Prx), null);
}

namespace Test\MA
{
    global $Test_MA__t_IC;
    global $Test_MA__t_ICPrx;
    $Test_MA__t_ICPrx = IcePHP_declareProxy('::Test::MA::IC');
}

namespace Test\MA
{
    global $Test_MA__t_IC;
    global $Test_MA__t_ICPrx;

    class ICPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Test::MA::IC');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Test::MA::IC', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MA::IC', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MA::IC';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test_MA__t_ICPrx = IcePHP_defineProxy('::Test::MA::IC', $Ice__t_ObjectPrx, array($Test_MB__t_IB1Prx, $Test_MB__t_IB2Prx));

    global $Test_MA__t_ICPrx;
    IcePHP_defineOperation($Test_MA__t_ICPrx, 'icop', 0, -1, array(array($Test_MA__t_ICPrx)), null, array($Test_MA__t_ICPrx), null);
}

namespace Test
{
    global $Test__t_Initial;
    global $Test__t_InitialPrx;
    $Test__t_InitialPrx = IcePHP_declareProxy('::Test::Initial');
}

namespace Test
{
    global $Test__t_Initial;
    global $Test__t_InitialPrx;

    class InitialPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Test::Initial');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Test::Initial', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Initial', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Initial';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_InitialPrx = IcePHP_defineProxy('::Test::Initial', $Ice__t_ObjectPrx, null);

    global $Test_MA__t_IAPrx;
    global $Test_MB__t_IB1Prx;
    global $Test_MB__t_IB2Prx;
    global $Test_MA__t_ICPrx;
    IcePHP_defineOperation($Test__t_InitialPrx, 'shutdown', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'iaop', 0, -1, null, null, array($Test_MA__t_IAPrx), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'ib1op', 0, -1, null, null, array($Test_MB__t_IB1Prx), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'ib2op', 0, -1, null, null, array($Test_MB__t_IB2Prx), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'icop', 0, -1, null, null, array($Test_MA__t_ICPrx), null);
}
?>
