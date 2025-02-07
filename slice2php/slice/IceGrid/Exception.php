<?php
// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Exception.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>


namespace
{
    require_once 'Ice/Identity.php';
    require_once 'Ice/BuiltinSequences.php';
}

namespace IceGrid
{
    global $IceGrid__t_ApplicationNotExistException;
    class ApplicationNotExistException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::ApplicationNotExistException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_ApplicationNotExistException;
            return IcePHP_stringifyException($this, $IceGrid__t_ApplicationNotExistException);
        }

        public $name;
    }
    global $IcePHP__t_string;

    $IceGrid__t_ApplicationNotExistException = IcePHP_defineException('::IceGrid::ApplicationNotExistException', '\\IceGrid\\ApplicationNotExistException', null, array(
        array('name', $IcePHP__t_string, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_ServerNotExistException;
    class ServerNotExistException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::ServerNotExistException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_ServerNotExistException;
            return IcePHP_stringifyException($this, $IceGrid__t_ServerNotExistException);
        }

        public $id;
    }
    global $IcePHP__t_string;

    $IceGrid__t_ServerNotExistException = IcePHP_defineException('::IceGrid::ServerNotExistException', '\\IceGrid\\ServerNotExistException', null, array(
        array('id', $IcePHP__t_string, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_ServerStartException;
    class ServerStartException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::ServerStartException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_ServerStartException;
            return IcePHP_stringifyException($this, $IceGrid__t_ServerStartException);
        }

        public $id;
        public $reason;
    }
    global $IcePHP__t_string;

    $IceGrid__t_ServerStartException = IcePHP_defineException('::IceGrid::ServerStartException', '\\IceGrid\\ServerStartException', null, array(
        array('id', $IcePHP__t_string, false, 0),
        array('reason', $IcePHP__t_string, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_ServerStopException;
    class ServerStopException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::ServerStopException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_ServerStopException;
            return IcePHP_stringifyException($this, $IceGrid__t_ServerStopException);
        }

        public $id;
        public $reason;
    }
    global $IcePHP__t_string;

    $IceGrid__t_ServerStopException = IcePHP_defineException('::IceGrid::ServerStopException', '\\IceGrid\\ServerStopException', null, array(
        array('id', $IcePHP__t_string, false, 0),
        array('reason', $IcePHP__t_string, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_AdapterNotExistException;
    class AdapterNotExistException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::AdapterNotExistException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_AdapterNotExistException;
            return IcePHP_stringifyException($this, $IceGrid__t_AdapterNotExistException);
        }

        public $id;
    }
    global $IcePHP__t_string;

    $IceGrid__t_AdapterNotExistException = IcePHP_defineException('::IceGrid::AdapterNotExistException', '\\IceGrid\\AdapterNotExistException', null, array(
        array('id', $IcePHP__t_string, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_ObjectExistsException;
    class ObjectExistsException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::ObjectExistsException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_ObjectExistsException;
            return IcePHP_stringifyException($this, $IceGrid__t_ObjectExistsException);
        }

        public $id;
    }
    global $Ice__t_Identity;

    $IceGrid__t_ObjectExistsException = IcePHP_defineException('::IceGrid::ObjectExistsException', '\\IceGrid\\ObjectExistsException', null, array(
        array('id', $Ice__t_Identity, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_ObjectNotRegisteredException;
    class ObjectNotRegisteredException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::ObjectNotRegisteredException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_ObjectNotRegisteredException;
            return IcePHP_stringifyException($this, $IceGrid__t_ObjectNotRegisteredException);
        }

        public $id;
    }
    global $Ice__t_Identity;

    $IceGrid__t_ObjectNotRegisteredException = IcePHP_defineException('::IceGrid::ObjectNotRegisteredException', '\\IceGrid\\ObjectNotRegisteredException', null, array(
        array('id', $Ice__t_Identity, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_NodeNotExistException;
    class NodeNotExistException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::NodeNotExistException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_NodeNotExistException;
            return IcePHP_stringifyException($this, $IceGrid__t_NodeNotExistException);
        }

        public $name;
    }
    global $IcePHP__t_string;

    $IceGrid__t_NodeNotExistException = IcePHP_defineException('::IceGrid::NodeNotExistException', '\\IceGrid\\NodeNotExistException', null, array(
        array('name', $IcePHP__t_string, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_RegistryNotExistException;
    class RegistryNotExistException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::RegistryNotExistException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_RegistryNotExistException;
            return IcePHP_stringifyException($this, $IceGrid__t_RegistryNotExistException);
        }

        public $name;
    }
    global $IcePHP__t_string;

    $IceGrid__t_RegistryNotExistException = IcePHP_defineException('::IceGrid::RegistryNotExistException', '\\IceGrid\\RegistryNotExistException', null, array(
        array('name', $IcePHP__t_string, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_DeploymentException;
    class DeploymentException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::DeploymentException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_DeploymentException;
            return IcePHP_stringifyException($this, $IceGrid__t_DeploymentException);
        }

        public $reason;
    }
    global $IcePHP__t_string;

    $IceGrid__t_DeploymentException = IcePHP_defineException('::IceGrid::DeploymentException', '\\IceGrid\\DeploymentException', null, array(
        array('reason', $IcePHP__t_string, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_NodeUnreachableException;
    class NodeUnreachableException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::NodeUnreachableException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_NodeUnreachableException;
            return IcePHP_stringifyException($this, $IceGrid__t_NodeUnreachableException);
        }

        public $name;
        public $reason;
    }
    global $IcePHP__t_string;

    $IceGrid__t_NodeUnreachableException = IcePHP_defineException('::IceGrid::NodeUnreachableException', '\\IceGrid\\NodeUnreachableException', null, array(
        array('name', $IcePHP__t_string, false, 0),
        array('reason', $IcePHP__t_string, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_ServerUnreachableException;
    class ServerUnreachableException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::ServerUnreachableException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_ServerUnreachableException;
            return IcePHP_stringifyException($this, $IceGrid__t_ServerUnreachableException);
        }

        public $name;
        public $reason;
    }
    global $IcePHP__t_string;

    $IceGrid__t_ServerUnreachableException = IcePHP_defineException('::IceGrid::ServerUnreachableException', '\\IceGrid\\ServerUnreachableException', null, array(
        array('name', $IcePHP__t_string, false, 0),
        array('reason', $IcePHP__t_string, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_RegistryUnreachableException;
    class RegistryUnreachableException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::RegistryUnreachableException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_RegistryUnreachableException;
            return IcePHP_stringifyException($this, $IceGrid__t_RegistryUnreachableException);
        }

        public $name;
        public $reason;
    }
    global $IcePHP__t_string;

    $IceGrid__t_RegistryUnreachableException = IcePHP_defineException('::IceGrid::RegistryUnreachableException', '\\IceGrid\\RegistryUnreachableException', null, array(
        array('name', $IcePHP__t_string, false, 0),
        array('reason', $IcePHP__t_string, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_BadSignalException;
    class BadSignalException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::BadSignalException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_BadSignalException;
            return IcePHP_stringifyException($this, $IceGrid__t_BadSignalException);
        }

        public $reason;
    }
    global $IcePHP__t_string;

    $IceGrid__t_BadSignalException = IcePHP_defineException('::IceGrid::BadSignalException', '\\IceGrid\\BadSignalException', null, array(
        array('reason', $IcePHP__t_string, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_AccessDeniedException;
    class AccessDeniedException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::AccessDeniedException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_AccessDeniedException;
            return IcePHP_stringifyException($this, $IceGrid__t_AccessDeniedException);
        }

        public $lockUserId;
    }
    global $IcePHP__t_string;

    $IceGrid__t_AccessDeniedException = IcePHP_defineException('::IceGrid::AccessDeniedException', '\\IceGrid\\AccessDeniedException', null, array(
        array('lockUserId', $IcePHP__t_string, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_AllocationException;
    class AllocationException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::AllocationException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_AllocationException;
            return IcePHP_stringifyException($this, $IceGrid__t_AllocationException);
        }

        public $reason;
    }
    global $IcePHP__t_string;

    $IceGrid__t_AllocationException = IcePHP_defineException('::IceGrid::AllocationException', '\\IceGrid\\AllocationException', null, array(
        array('reason', $IcePHP__t_string, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_AllocationTimeoutException;
    class AllocationTimeoutException extends \IceGrid\AllocationException
    {
        public function ice_id()
        {
            return '::IceGrid::AllocationTimeoutException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_AllocationTimeoutException;
            return IcePHP_stringifyException($this, $IceGrid__t_AllocationTimeoutException);
        }
    }

    $IceGrid__t_AllocationTimeoutException = IcePHP_defineException('::IceGrid::AllocationTimeoutException', '\\IceGrid\\AllocationTimeoutException', $IceGrid__t_AllocationException, null);
}

namespace IceGrid
{
    global $IceGrid__t_PermissionDeniedException;
    class PermissionDeniedException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::PermissionDeniedException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_PermissionDeniedException;
            return IcePHP_stringifyException($this, $IceGrid__t_PermissionDeniedException);
        }

        public $reason;
    }
    global $IcePHP__t_string;

    $IceGrid__t_PermissionDeniedException = IcePHP_defineException('::IceGrid::PermissionDeniedException', '\\IceGrid\\PermissionDeniedException', null, array(
        array('reason', $IcePHP__t_string, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_ObserverAlreadyRegisteredException;
    class ObserverAlreadyRegisteredException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::ObserverAlreadyRegisteredException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_ObserverAlreadyRegisteredException;
            return IcePHP_stringifyException($this, $IceGrid__t_ObserverAlreadyRegisteredException);
        }

        public $id;
    }
    global $Ice__t_Identity;

    $IceGrid__t_ObserverAlreadyRegisteredException = IcePHP_defineException('::IceGrid::ObserverAlreadyRegisteredException', '\\IceGrid\\ObserverAlreadyRegisteredException', null, array(
        array('id', $Ice__t_Identity, false, 0)));
}

namespace IceGrid
{
    global $IceGrid__t_FileNotAvailableException;
    class FileNotAvailableException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::IceGrid::FileNotAvailableException';
        }

        public function __toString(): string
        {
            global $IceGrid__t_FileNotAvailableException;
            return IcePHP_stringifyException($this, $IceGrid__t_FileNotAvailableException);
        }

        public $reason;
    }
    global $IcePHP__t_string;

    $IceGrid__t_FileNotAvailableException = IcePHP_defineException('::IceGrid::FileNotAvailableException', '\\IceGrid\\FileNotAvailableException', null, array(
        array('reason', $IcePHP__t_string, false, 0)));
}
?>
