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
    require_once '../Glacier2/Session.php';
    require_once 'Exception.php';
}

namespace IceGrid
{
    global $IceGrid__t_Session;
    global $IceGrid__t_SessionPrx;

    class SessionPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::IceGrid::Session', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::IceGrid::Session', $facet);
        }

        public static function ice_staticId()
        {
            return '::IceGrid::Session';
        }
    }

    global $Ice__t_ObjectPrx;
    $IceGrid__t_SessionPrx = IcePHP_defineProxy('::IceGrid::Session', $Ice__t_ObjectPrx, array($Glacier2__t_SessionPrx));

    global $Ice__t_Identity;
    global $Ice__t_ObjectPrx;
    global $IcePHP__t_string;
    global $IcePHP__t_int;
    IcePHP_defineOperation($IceGrid__t_SessionPrx, 'keepAlive', 2, 0, null, null, null, null);
    IcePHP_defineOperation($IceGrid__t_SessionPrx, 'allocateObjectById', 0, 0, array(array($Ice__t_Identity)), null, array($Ice__t_ObjectPrx), array($IceGrid__t_ObjectNotRegisteredException, $IceGrid__t_AllocationException));
    IcePHP_defineOperation($IceGrid__t_SessionPrx, 'allocateObjectByType', 0, 0, array(array($IcePHP__t_string)), null, array($Ice__t_ObjectPrx), array($IceGrid__t_AllocationException));
    IcePHP_defineOperation($IceGrid__t_SessionPrx, 'releaseObject', 0, 0, array(array($Ice__t_Identity)), null, null, array($IceGrid__t_ObjectNotRegisteredException, $IceGrid__t_AllocationException));
    IcePHP_defineOperation($IceGrid__t_SessionPrx, 'setAllocationTimeout', 2, 0, array(array($IcePHP__t_int)), null, null, null);
}
?>
