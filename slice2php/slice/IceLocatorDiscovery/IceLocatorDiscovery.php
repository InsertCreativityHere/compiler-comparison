<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `IceLocatorDiscovery.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace
{
    require_once 'Ice/Locator.php';
}

namespace IceLocatorDiscovery
{
    global $IceLocatorDiscovery__t_LookupReply;
    global $IceLocatorDiscovery__t_LookupReplyPrx;

    class LookupReplyPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::IceLocatorDiscovery::LookupReply', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::IceLocatorDiscovery::LookupReply', $facet);
        }

        public static function ice_staticId()
        {
            return '::IceLocatorDiscovery::LookupReply';
        }
    }
    $IceLocatorDiscovery__t_LookupReply = IcePHP_defineClass('::IceLocatorDiscovery::LookupReply', '\\IceLocatorDiscovery\\LookupReply', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $IceLocatorDiscovery__t_LookupReplyPrx = IcePHP_defineProxy('::IceLocatorDiscovery::LookupReply', $Ice__t_ObjectPrx, null);

    global $Ice__t_LocatorPrx;
    IcePHP_defineOperation($IceLocatorDiscovery__t_LookupReplyPrx, 'foundLocator', 0, 0, 0, array(array($Ice__t_LocatorPrx)), null, null, null);
}

namespace IceLocatorDiscovery
{
    global $IceLocatorDiscovery__t_Lookup;
    global $IceLocatorDiscovery__t_LookupPrx;

    class LookupPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::IceLocatorDiscovery::Lookup', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::IceLocatorDiscovery::Lookup', $facet);
        }

        public static function ice_staticId()
        {
            return '::IceLocatorDiscovery::Lookup';
        }
    }
    $IceLocatorDiscovery__t_Lookup = IcePHP_defineClass('::IceLocatorDiscovery::Lookup', '\\IceLocatorDiscovery\\Lookup', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $IceLocatorDiscovery__t_LookupPrx = IcePHP_defineProxy('::IceLocatorDiscovery::Lookup', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_string;
    global $IceLocatorDiscovery__t_LookupReplyPrx;
    IcePHP_defineOperation($IceLocatorDiscovery__t_LookupPrx, 'findLocator', 2, 2, 0, array(array($IcePHP__t_string), array($IceLocatorDiscovery__t_LookupReplyPrx)), null, null, null);
}
?>
