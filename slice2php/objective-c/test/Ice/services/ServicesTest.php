<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ServicesTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace Test
{
    global $Test__t_Clock;
    global $Test__t_ClockPrx;

    class ClockPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Clock', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Clock', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Clock';
        }
    }
    $Test__t_Clock = IcePHP_defineClass('::Test::Clock', '\\Test\\Clock', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_ClockPrx = IcePHP_defineProxy('::Test::Clock', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_string;
    IcePHP_defineOperation($Test__t_ClockPrx, 'tick', 0, 0, 0, array(array($IcePHP__t_string)), null, null, null);
}
?>
