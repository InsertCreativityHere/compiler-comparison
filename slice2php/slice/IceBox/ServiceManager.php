<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServiceManager.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace
{
    require_once '../Ice/BuiltinSequences.php';
}

namespace IceBox
{
    global $IceBox__t_AlreadyStartedException;
    class AlreadyStartedException extends \Ice\UserException
    {
        public function __construct()
        {
        }

        public function ice_id()
        {
            return '::IceBox::AlreadyStartedException';
        }

        public function __toString(): string
        {
            global $IceBox__t_AlreadyStartedException;
            return IcePHP_stringifyException($this, $IceBox__t_AlreadyStartedException);
        }
    }

    $IceBox__t_AlreadyStartedException = IcePHP_defineException('::IceBox::AlreadyStartedException', '\\IceBox\\AlreadyStartedException', null, null);
}

namespace IceBox
{
    global $IceBox__t_AlreadyStoppedException;
    class AlreadyStoppedException extends \Ice\UserException
    {
        public function __construct()
        {
        }

        public function ice_id()
        {
            return '::IceBox::AlreadyStoppedException';
        }

        public function __toString(): string
        {
            global $IceBox__t_AlreadyStoppedException;
            return IcePHP_stringifyException($this, $IceBox__t_AlreadyStoppedException);
        }
    }

    $IceBox__t_AlreadyStoppedException = IcePHP_defineException('::IceBox::AlreadyStoppedException', '\\IceBox\\AlreadyStoppedException', null, null);
}

namespace IceBox
{
    global $IceBox__t_NoSuchServiceException;
    class NoSuchServiceException extends \Ice\UserException
    {
        public function __construct()
        {
        }

        public function ice_id()
        {
            return '::IceBox::NoSuchServiceException';
        }

        public function __toString(): string
        {
            global $IceBox__t_NoSuchServiceException;
            return IcePHP_stringifyException($this, $IceBox__t_NoSuchServiceException);
        }
    }

    $IceBox__t_NoSuchServiceException = IcePHP_defineException('::IceBox::NoSuchServiceException', '\\IceBox\\NoSuchServiceException', null, null);
}

namespace IceBox
{
    global $IceBox__t_ServiceObserver;
    global $IceBox__t_ServiceObserverPrx;

    class ServiceObserverPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::IceBox::ServiceObserver', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::IceBox::ServiceObserver', $facet);
        }

        public static function ice_staticId()
        {
            return '::IceBox::ServiceObserver';
        }
    }

    global $Ice__t_ObjectPrx;
    $IceBox__t_ServiceObserverPrx = IcePHP_defineProxy('::IceBox::ServiceObserver', $Ice__t_ObjectPrx, null);

    global $Ice__t_StringSeq;
    IcePHP_defineOperation($IceBox__t_ServiceObserverPrx, 'servicesStarted', 0, 0, array(array($Ice__t_StringSeq)), null, null, null);
    IcePHP_defineOperation($IceBox__t_ServiceObserverPrx, 'servicesStopped', 0, 0, array(array($Ice__t_StringSeq)), null, null, null);
}

namespace IceBox
{
    global $IceBox__t_ServiceManager;
    global $IceBox__t_ServiceManagerPrx;

    class ServiceManagerPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::IceBox::ServiceManager', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::IceBox::ServiceManager', $facet);
        }

        public static function ice_staticId()
        {
            return '::IceBox::ServiceManager';
        }
    }

    global $Ice__t_ObjectPrx;
    $IceBox__t_ServiceManagerPrx = IcePHP_defineProxy('::IceBox::ServiceManager', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_string;
    global $IceBox__t_ServiceObserverPrx;
    IcePHP_defineOperation($IceBox__t_ServiceManagerPrx, 'startService', 0, 0, array(array($IcePHP__t_string)), null, null, array($IceBox__t_AlreadyStartedException, $IceBox__t_NoSuchServiceException));
    IcePHP_defineOperation($IceBox__t_ServiceManagerPrx, 'stopService', 0, 0, array(array($IcePHP__t_string)), null, null, array($IceBox__t_AlreadyStoppedException, $IceBox__t_NoSuchServiceException));
    IcePHP_defineOperation($IceBox__t_ServiceManagerPrx, 'addObserver', 0, 0, array(array($IceBox__t_ServiceObserverPrx)), null, null, null);
    IcePHP_defineOperation($IceBox__t_ServiceManagerPrx, 'shutdown', 0, 0, null, null, null, null);
}
?>
