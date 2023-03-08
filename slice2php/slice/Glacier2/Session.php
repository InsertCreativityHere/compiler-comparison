<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
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
    require_once 'Ice/BuiltinSequences.php';
    require_once 'Ice/Identity.php';
    require_once 'SSLInfo.php';
}

namespace Glacier2
{
    global $Glacier2__t_CannotCreateSessionException;
    class CannotCreateSessionException extends \Ice\UserException
    {
        public function __construct($reason='')
        {
            $this->reason = $reason;
        }

        public function ice_id()
        {
            return '::Glacier2::CannotCreateSessionException';
        }

        public function __toString(): string
        {
            global $Glacier2__t_CannotCreateSessionException;
            return IcePHP_stringifyException($this, $Glacier2__t_CannotCreateSessionException);
        }

        public $reason;
    }
    global $IcePHP__t_string;

    $Glacier2__t_CannotCreateSessionException = IcePHP_defineException('::Glacier2::CannotCreateSessionException', '\\Glacier2\\CannotCreateSessionException', true, null, array(
        array('reason', $IcePHP__t_string, false, 0)));
}

namespace Glacier2
{
    global $Glacier2__t_Session;
    global $Glacier2__t_SessionPrx;

    class SessionPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Glacier2::Session', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Glacier2::Session', $facet);
        }

        public static function ice_staticId()
        {
            return '::Glacier2::Session';
        }
    }
    $Glacier2__t_Session = IcePHP_defineClass('::Glacier2::Session', '\\Glacier2\\Session', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Glacier2__t_SessionPrx = IcePHP_defineProxy('::Glacier2::Session', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($Glacier2__t_SessionPrx, 'destroy', 0, 0, 0, null, null, null, null);
}

namespace Glacier2
{
    global $Glacier2__t_StringSet;
    global $Glacier2__t_StringSetPrx;

    class StringSetPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Glacier2::StringSet', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Glacier2::StringSet', $facet);
        }

        public static function ice_staticId()
        {
            return '::Glacier2::StringSet';
        }
    }
    $Glacier2__t_StringSet = IcePHP_defineClass('::Glacier2::StringSet', '\\Glacier2\\StringSet', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Glacier2__t_StringSetPrx = IcePHP_defineProxy('::Glacier2::StringSet', $Ice__t_ObjectPrx, null);

    global $Ice__t_StringSeq;
    IcePHP_defineOperation($Glacier2__t_StringSetPrx, 'add', 2, 2, 0, array(array($Ice__t_StringSeq)), null, null, null);
    IcePHP_defineOperation($Glacier2__t_StringSetPrx, 'remove', 2, 2, 0, array(array($Ice__t_StringSeq)), null, null, null);
    IcePHP_defineOperation($Glacier2__t_StringSetPrx, 'get', 2, 2, 0, null, null, array($Ice__t_StringSeq), null);
}

namespace Glacier2
{
    global $Glacier2__t_IdentitySet;
    global $Glacier2__t_IdentitySetPrx;

    class IdentitySetPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Glacier2::IdentitySet', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Glacier2::IdentitySet', $facet);
        }

        public static function ice_staticId()
        {
            return '::Glacier2::IdentitySet';
        }
    }
    $Glacier2__t_IdentitySet = IcePHP_defineClass('::Glacier2::IdentitySet', '\\Glacier2\\IdentitySet', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Glacier2__t_IdentitySetPrx = IcePHP_defineProxy('::Glacier2::IdentitySet', $Ice__t_ObjectPrx, null);

    global $Ice__t_IdentitySeq;
    IcePHP_defineOperation($Glacier2__t_IdentitySetPrx, 'add', 2, 2, 0, array(array($Ice__t_IdentitySeq)), null, null, null);
    IcePHP_defineOperation($Glacier2__t_IdentitySetPrx, 'remove', 2, 2, 0, array(array($Ice__t_IdentitySeq)), null, null, null);
    IcePHP_defineOperation($Glacier2__t_IdentitySetPrx, 'get', 2, 2, 0, null, null, array($Ice__t_IdentitySeq), null);
}

namespace Glacier2
{
    global $Glacier2__t_SessionControl;
    global $Glacier2__t_SessionControlPrx;

    class SessionControlPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Glacier2::SessionControl', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Glacier2::SessionControl', $facet);
        }

        public static function ice_staticId()
        {
            return '::Glacier2::SessionControl';
        }
    }
    $Glacier2__t_SessionControl = IcePHP_defineClass('::Glacier2::SessionControl', '\\Glacier2\\SessionControl', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Glacier2__t_SessionControlPrx = IcePHP_defineProxy('::Glacier2::SessionControl', $Ice__t_ObjectPrx, null);

    global $Glacier2__t_StringSetPrx;
    global $Glacier2__t_IdentitySetPrx;
    global $IcePHP__t_int;
    IcePHP_defineOperation($Glacier2__t_SessionControlPrx, 'categories', 0, 0, 0, null, null, array($Glacier2__t_StringSetPrx), null);
    IcePHP_defineOperation($Glacier2__t_SessionControlPrx, 'adapterIds', 0, 0, 0, null, null, array($Glacier2__t_StringSetPrx), null);
    IcePHP_defineOperation($Glacier2__t_SessionControlPrx, 'identities', 0, 0, 0, null, null, array($Glacier2__t_IdentitySetPrx), null);
    IcePHP_defineOperation($Glacier2__t_SessionControlPrx, 'getSessionTimeout', 2, 2, 0, null, null, array($IcePHP__t_int), null);
    IcePHP_defineOperation($Glacier2__t_SessionControlPrx, 'destroy', 0, 0, 0, null, null, null, null);
}

namespace Glacier2
{
    global $Glacier2__t_SessionManager;
    global $Glacier2__t_SessionManagerPrx;

    class SessionManagerPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Glacier2::SessionManager', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Glacier2::SessionManager', $facet);
        }

        public static function ice_staticId()
        {
            return '::Glacier2::SessionManager';
        }
    }
    $Glacier2__t_SessionManager = IcePHP_defineClass('::Glacier2::SessionManager', '\\Glacier2\\SessionManager', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Glacier2__t_SessionManagerPrx = IcePHP_defineProxy('::Glacier2::SessionManager', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_string;
    global $Glacier2__t_SessionControlPrx;
    global $Glacier2__t_SessionPrx;
    IcePHP_defineOperation($Glacier2__t_SessionManagerPrx, 'create', 0, 0, 2, array(array($IcePHP__t_string), array($Glacier2__t_SessionControlPrx)), null, array($Glacier2__t_SessionPrx), array($Glacier2__t_CannotCreateSessionException));
}

namespace Glacier2
{
    global $Glacier2__t_SSLSessionManager;
    global $Glacier2__t_SSLSessionManagerPrx;

    class SSLSessionManagerPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Glacier2::SSLSessionManager', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Glacier2::SSLSessionManager', $facet);
        }

        public static function ice_staticId()
        {
            return '::Glacier2::SSLSessionManager';
        }
    }
    $Glacier2__t_SSLSessionManager = IcePHP_defineClass('::Glacier2::SSLSessionManager', '\\Glacier2\\SSLSessionManager', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Glacier2__t_SSLSessionManagerPrx = IcePHP_defineProxy('::Glacier2::SSLSessionManager', $Ice__t_ObjectPrx, null);

    global $Glacier2__t_SSLInfo;
    global $Glacier2__t_SessionControlPrx;
    global $Glacier2__t_SessionPrx;
    IcePHP_defineOperation($Glacier2__t_SSLSessionManagerPrx, 'create', 0, 0, 2, array(array($Glacier2__t_SSLInfo), array($Glacier2__t_SessionControlPrx)), null, array($Glacier2__t_SessionPrx), array($Glacier2__t_CannotCreateSessionException));
}
?>
