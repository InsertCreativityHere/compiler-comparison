<?php
// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Registry.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>


namespace
{
    require_once 'Exception.php';
    require_once 'Session.php';
    require_once 'Admin.php';
    require_once 'Ice/Locator.php';
}

namespace IceGrid
{
    global $IceGrid__t_LoadSample;
    class LoadSample
    {
        const LoadSample1 = 0;
        const LoadSample5 = 1;
        const LoadSample15 = 2;
    }

    $IceGrid__t_LoadSample = IcePHP_defineEnum('::IceGrid::LoadSample', array('LoadSample1', 0, 'LoadSample5', 1, 'LoadSample15', 2));
}

namespace IceGrid
{
    global $IceGrid__t_Query;
    global $IceGrid__t_QueryPrx;
    $IceGrid__t_QueryPrx = IcePHP_declareProxy('::IceGrid::Query');
}

namespace IceGrid
{
    global $IceGrid__t_Query;
    global $IceGrid__t_QueryPrx;

    class QueryPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::IceGrid::Query');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::IceGrid::Query', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::IceGrid::Query', $facet);
        }

        public static function ice_staticId()
        {
            return '::IceGrid::Query';
        }
    }

    global $Ice__t_ObjectPrx;
    $IceGrid__t_QueryPrx = IcePHP_defineProxy('::IceGrid::Query', $Ice__t_ObjectPrx, null);

    global $Ice__t_Identity;
    global $Ice__t_ObjectPrx;
    global $IcePHP__t_string;
    global $IceGrid__t_LoadSample;
    global $Ice__t_ObjectProxySeq;
    IcePHP_defineOperation($IceGrid__t_QueryPrx, 'findObjectById', 2, -1, array(array($Ice__t_Identity)), null, array($Ice__t_ObjectPrx), null);
    IcePHP_defineOperation($IceGrid__t_QueryPrx, 'findObjectByType', 2, -1, array(array($IcePHP__t_string)), null, array($Ice__t_ObjectPrx), null);
    IcePHP_defineOperation($IceGrid__t_QueryPrx, 'findObjectByTypeOnLeastLoadedNode', 2, -1, array(array($IcePHP__t_string), array($IceGrid__t_LoadSample)), null, array($Ice__t_ObjectPrx), null);
    IcePHP_defineOperation($IceGrid__t_QueryPrx, 'findAllObjectsByType', 2, -1, array(array($IcePHP__t_string)), null, array($Ice__t_ObjectProxySeq), null);
    IcePHP_defineOperation($IceGrid__t_QueryPrx, 'findAllReplicas', 2, -1, array(array($Ice__t_ObjectPrx)), null, array($Ice__t_ObjectProxySeq), null);
}

namespace IceGrid
{
    global $IceGrid__t_Registry;
    global $IceGrid__t_RegistryPrx;
    $IceGrid__t_RegistryPrx = IcePHP_declareProxy('::IceGrid::Registry');
}

namespace IceGrid
{
    global $IceGrid__t_Registry;
    global $IceGrid__t_RegistryPrx;

    class RegistryPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::IceGrid::Registry');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::IceGrid::Registry', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::IceGrid::Registry', $facet);
        }

        public static function ice_staticId()
        {
            return '::IceGrid::Registry';
        }
    }

    global $Ice__t_ObjectPrx;
    $IceGrid__t_RegistryPrx = IcePHP_defineProxy('::IceGrid::Registry', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_string;
    global $IceGrid__t_SessionPrx;
    global $IceGrid__t_AdminSessionPrx;
    global $IcePHP__t_int;
    IcePHP_defineOperation($IceGrid__t_RegistryPrx, 'createSession', 0, -1, array(array($IcePHP__t_string), array($IcePHP__t_string)), null, array($IceGrid__t_SessionPrx), array($IceGrid__t_PermissionDeniedException));
    IcePHP_defineOperation($IceGrid__t_RegistryPrx, 'createAdminSession', 0, -1, array(array($IcePHP__t_string), array($IcePHP__t_string)), null, array($IceGrid__t_AdminSessionPrx), array($IceGrid__t_PermissionDeniedException));
    IcePHP_defineOperation($IceGrid__t_RegistryPrx, 'createSessionFromSecureConnection', 0, -1, null, null, array($IceGrid__t_SessionPrx), array($IceGrid__t_PermissionDeniedException));
    IcePHP_defineOperation($IceGrid__t_RegistryPrx, 'createAdminSessionFromSecureConnection', 0, -1, null, null, array($IceGrid__t_AdminSessionPrx), array($IceGrid__t_PermissionDeniedException));
    IcePHP_defineOperation($IceGrid__t_RegistryPrx, 'getSessionTimeout', 2, -1, null, null, array($IcePHP__t_int), null);
}

namespace IceGrid
{
    global $IceGrid__t_Locator;
    global $IceGrid__t_LocatorPrx;
    $IceGrid__t_LocatorPrx = IcePHP_declareProxy('::IceGrid::Locator');
}

namespace IceGrid
{
    global $IceGrid__t_Locator;
    global $IceGrid__t_LocatorPrx;

    class LocatorPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::IceGrid::Locator');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::IceGrid::Locator', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::IceGrid::Locator', $facet);
        }

        public static function ice_staticId()
        {
            return '::IceGrid::Locator';
        }
    }

    global $Ice__t_ObjectPrx;
    $IceGrid__t_LocatorPrx = IcePHP_defineProxy('::IceGrid::Locator', $Ice__t_ObjectPrx, array($Ice__t_LocatorPrx));

    global $IceGrid__t_RegistryPrx;
    global $IceGrid__t_QueryPrx;
    IcePHP_defineOperation($IceGrid__t_LocatorPrx, 'getLocalRegistry', 2, -1, null, null, array($IceGrid__t_RegistryPrx), null);
    IcePHP_defineOperation($IceGrid__t_LocatorPrx, 'getLocalQuery', 2, -1, null, null, array($IceGrid__t_QueryPrx), null);
}
?>
