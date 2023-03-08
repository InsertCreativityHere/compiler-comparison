<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
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
    global $Test__t_Retry;
    global $Test__t_RetryPrx;

    class RetryPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Retry', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Retry', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Retry';
        }
    }
    $Test__t_Retry = IcePHP_defineClass('::Test::Retry', '\\Test\\Retry', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_RetryPrx = IcePHP_defineProxy('::Test::Retry', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_bool;
    global $IcePHP__t_int;
    IcePHP_defineOperation($Test__t_RetryPrx, 'op', 0, 0, 0, array(array($IcePHP__t_bool)), null, null, null);
    IcePHP_defineOperation($Test__t_RetryPrx, 'opIdempotent', 2, 2, 0, array(array($IcePHP__t_int)), null, array($IcePHP__t_int), null);
    IcePHP_defineOperation($Test__t_RetryPrx, 'opNotIdempotent', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_RetryPrx, 'opSystemException', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_RetryPrx, 'shutdown', 2, 2, 0, null, null, null, null);
}
?>
