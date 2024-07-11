<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Router.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace
{
    require_once 'Ice/Router.php';
    require_once 'Session.php';
    require_once 'PermissionsVerifier.php';
}

namespace Glacier2
{
    global $Glacier2__t_SessionNotExistException;
    class SessionNotExistException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::Glacier2::SessionNotExistException';
        }

        public function __toString(): string
        {
            global $Glacier2__t_SessionNotExistException;
            return IcePHP_stringifyException($this, $Glacier2__t_SessionNotExistException);
        }
    }

    $Glacier2__t_SessionNotExistException = IcePHP_defineException('::Glacier2::SessionNotExistException', '\\Glacier2\\SessionNotExistException', null, null);
}

namespace Glacier2
{
    global $Glacier2__t_Router;
    global $Glacier2__t_RouterPrx;

    class RouterPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Glacier2::Router', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Glacier2::Router', $facet);
        }

        public static function ice_staticId()
        {
            return '::Glacier2::Router';
        }
    }

    global $Ice__t_ObjectPrx;
    $Glacier2__t_RouterPrx = IcePHP_defineProxy('::Glacier2::Router', $Ice__t_ObjectPrx, array($Ice__t_RouterPrx));

    global $IcePHP__t_string;
    global $Glacier2__t_SessionPrx;
    global $IcePHP__t_long;
    global $IcePHP__t_int;
    IcePHP_defineOperation($Glacier2__t_RouterPrx, 'getCategoryForClient', 2, 0, null, null, array($IcePHP__t_string), null);
    IcePHP_defineOperation($Glacier2__t_RouterPrx, 'createSession', 0, 2, array(array($IcePHP__t_string), array($IcePHP__t_string)), null, array($Glacier2__t_SessionPrx), array($Glacier2__t_PermissionDeniedException, $Glacier2__t_CannotCreateSessionException));
    IcePHP_defineOperation($Glacier2__t_RouterPrx, 'createSessionFromSecureConnection', 0, 2, null, null, array($Glacier2__t_SessionPrx), array($Glacier2__t_PermissionDeniedException, $Glacier2__t_CannotCreateSessionException));
    IcePHP_defineOperation($Glacier2__t_RouterPrx, 'refreshSession', 0, 0, null, null, null, array($Glacier2__t_SessionNotExistException));
    IcePHP_defineOperation($Glacier2__t_RouterPrx, 'destroySession', 0, 0, null, null, null, array($Glacier2__t_SessionNotExistException));
    IcePHP_defineOperation($Glacier2__t_RouterPrx, 'getSessionTimeout', 2, 0, null, null, array($IcePHP__t_long), null);
    IcePHP_defineOperation($Glacier2__t_RouterPrx, 'getACMTimeout', 2, 0, null, null, array($IcePHP__t_int), null);
}
?>
