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
    global $Test__t_Echo;
    global $Test__t_EchoPrx;

    class EchoPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Echo', $facetOrContext, $context);
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
    $Test__t_Echo = IcePHP_defineClass('::Test::Echo', '\\Test\\_Echo', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_EchoPrx = IcePHP_defineProxy('::Test::Echo', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($Test__t_EchoPrx, 'setConnection', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_EchoPrx, 'startBatch', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_EchoPrx, 'flushBatch', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_EchoPrx, 'shutdown', 0, 0, 0, null, null, null, null);
}
?>
