<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Backend.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace Test
{
    global $Test__t_Backend;
    global $Test__t_BackendPrx;

    class BackendPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Backend', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Backend', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Backend';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_BackendPrx = IcePHP_defineProxy('::Test::Backend', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($Test__t_BackendPrx, 'shutdown', 0, 0, null, null, null, null);
}
?>
