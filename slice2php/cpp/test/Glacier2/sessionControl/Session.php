<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Session.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace
{
    require_once 'Glacier2/Session.php';
}

namespace Test
{
    global $Test__t_Session;
    global $Test__t_SessionPrx;

    class SessionPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Session', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Session', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Session';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_SessionPrx = IcePHP_defineProxy('::Test::Session', $Ice__t_ObjectPrx, array($Glacier2__t_SessionPrx));

    IcePHP_defineOperation($Test__t_SessionPrx, 'destroyFromClient', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_SessionPrx, 'shutdown', 0, 0, null, null, null, null);
}
?>
