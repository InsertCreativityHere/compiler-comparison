<?php
// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'PermissionsVerifier.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>


namespace
{
    require_once 'SSLInfo.php';
}

namespace Glacier2
{
    global $Glacier2__t_PermissionDeniedException;
    class PermissionDeniedException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::Glacier2::PermissionDeniedException';
        }

        public function __toString(): string
        {
            global $Glacier2__t_PermissionDeniedException;
            return IcePHP_stringifyException($this, $Glacier2__t_PermissionDeniedException);
        }

        public $reason;
    }
    global $IcePHP__t_string;

    $Glacier2__t_PermissionDeniedException = IcePHP_defineException('::Glacier2::PermissionDeniedException', '\\Glacier2\\PermissionDeniedException', null, array(
        array('reason', $IcePHP__t_string, false, 0)));
}

namespace Glacier2
{
    global $Glacier2__t_PermissionsVerifier;
    global $Glacier2__t_PermissionsVerifierPrx;
    $Glacier2__t_PermissionsVerifierPrx = IcePHP_declareProxy('::Glacier2::PermissionsVerifier');
}

namespace Glacier2
{
    global $Glacier2__t_PermissionsVerifier;
    global $Glacier2__t_PermissionsVerifierPrx;

    class PermissionsVerifierPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Glacier2::PermissionsVerifier');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Glacier2::PermissionsVerifier', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Glacier2::PermissionsVerifier', $facet);
        }

        public static function ice_staticId()
        {
            return '::Glacier2::PermissionsVerifier';
        }
    }

    global $Ice__t_ObjectPrx;
    $Glacier2__t_PermissionsVerifierPrx = IcePHP_defineProxy('::Glacier2::PermissionsVerifier', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_string;
    global $IcePHP__t_bool;
    IcePHP_defineOperation($Glacier2__t_PermissionsVerifierPrx, 'checkPermissions', 2, -1, array(array($IcePHP__t_string), array($IcePHP__t_string)), array(array($IcePHP__t_string)), array($IcePHP__t_bool), array($Glacier2__t_PermissionDeniedException));
}

namespace Glacier2
{
    global $Glacier2__t_SSLPermissionsVerifier;
    global $Glacier2__t_SSLPermissionsVerifierPrx;
    $Glacier2__t_SSLPermissionsVerifierPrx = IcePHP_declareProxy('::Glacier2::SSLPermissionsVerifier');
}

namespace Glacier2
{
    global $Glacier2__t_SSLPermissionsVerifier;
    global $Glacier2__t_SSLPermissionsVerifierPrx;

    class SSLPermissionsVerifierPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Glacier2::SSLPermissionsVerifier');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Glacier2::SSLPermissionsVerifier', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Glacier2::SSLPermissionsVerifier', $facet);
        }

        public static function ice_staticId()
        {
            return '::Glacier2::SSLPermissionsVerifier';
        }
    }

    global $Ice__t_ObjectPrx;
    $Glacier2__t_SSLPermissionsVerifierPrx = IcePHP_defineProxy('::Glacier2::SSLPermissionsVerifier', $Ice__t_ObjectPrx, null);

    global $Glacier2__t_SSLInfo;
    global $IcePHP__t_string;
    global $IcePHP__t_bool;
    IcePHP_defineOperation($Glacier2__t_SSLPermissionsVerifierPrx, 'authorize', 2, -1, array(array($Glacier2__t_SSLInfo)), array(array($IcePHP__t_string)), array($IcePHP__t_bool), array($Glacier2__t_PermissionDeniedException));
}
?>
