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


namespace Test
{
    global $Test__t_Echo;
    global $Test__t_EchoPrx;
    $Test__t_EchoPrx = IcePHP_declareProxy('::Test::Echo');
}

namespace Test
{
    global $Test__t_Echo;
    global $Test__t_EchoPrx;

    class EchoPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Test::Echo');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Test::Echo', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Echo', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Echo';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_EchoPrx = IcePHP_defineProxy('::Test::Echo', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_bool;
    IcePHP_defineOperation($Test__t_EchoPrx, 'setConnection', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_EchoPrx, 'startBatch', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_EchoPrx, 'flushBatch', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_EchoPrx, 'shutdown', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_EchoPrx, 'supportsCompress', 0, -1, null, null, array($IcePHP__t_bool), null);
}

namespace Test
{
    global $Test__t_MyObject;
    global $Test__t_MyObjectPrx;
    $Test__t_MyObjectPrx = IcePHP_declareProxy('::Test::MyObject');
}

namespace Test
{
    global $Test__t_MyObject;
    global $Test__t_MyObjectPrx;

    class MyObjectPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Test::MyObject');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Test::MyObject', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MyObject', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MyObject';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_MyObjectPrx = IcePHP_defineProxy('::Test::MyObject', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_string;
    IcePHP_defineOperation($Test__t_MyObjectPrx, 'getName', 0, -1, null, null, array($IcePHP__t_string), null);
    IcePHP_defineOperation($Test__t_MyObjectPrx, 'shutdown', 0, -1, null, null, null, null);
}
?>
