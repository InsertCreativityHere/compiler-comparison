<?php
// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'PropertiesAdmin.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>


namespace
{
    require_once 'PropertyDict.php';
}

namespace Ice
{
    global $Ice__t_PropertiesAdmin;
    global $Ice__t_PropertiesAdminPrx;
    $Ice__t_PropertiesAdminPrx = IcePHP_declareProxy('::Ice::PropertiesAdmin');
}

namespace Ice
{
    global $Ice__t_PropertiesAdmin;
    global $Ice__t_PropertiesAdminPrx;

    class PropertiesAdminPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Ice::PropertiesAdmin');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Ice::PropertiesAdmin', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Ice::PropertiesAdmin', $facet);
        }

        public static function ice_staticId()
        {
            return '::Ice::PropertiesAdmin';
        }
    }

    global $Ice__t_ObjectPrx;
    $Ice__t_PropertiesAdminPrx = IcePHP_defineProxy('::Ice::PropertiesAdmin', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_string;
    global $Ice__t_PropertyDict;
    IcePHP_defineOperation($Ice__t_PropertiesAdminPrx, 'getProperty', 0, -1, array(array($IcePHP__t_string)), null, array($IcePHP__t_string), null);
    IcePHP_defineOperation($Ice__t_PropertiesAdminPrx, 'getPropertiesForPrefix', 0, -1, array(array($IcePHP__t_string)), null, array($Ice__t_PropertyDict), null);
    IcePHP_defineOperation($Ice__t_PropertiesAdminPrx, 'setProperties', 0, -1, array(array($Ice__t_PropertyDict)), null, null, null);
}
?>
