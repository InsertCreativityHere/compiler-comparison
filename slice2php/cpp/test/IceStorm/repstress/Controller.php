<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Controller.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace Test
{
    global $Test__t_Controller;
    global $Test__t_ControllerPrx;

    class ControllerPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Controller', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Controller', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Controller';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_ControllerPrx = IcePHP_defineProxy('::Test::Controller', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($Test__t_ControllerPrx, 'stop', 0, 0, null, null, null, null);
}
?>
