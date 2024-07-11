# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `Exception.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'
require 'Ice/Identity.rb'
require 'Ice/BuiltinSequences.rb'

module ::IceGrid

    if not defined?(::IceGrid::ApplicationNotExistException)
        class ApplicationNotExistException < Ice::UserException
            def to_s
                '::IceGrid::ApplicationNotExistException'
            end

            attr_accessor :name
        end

        T_ApplicationNotExistException = ::Ice::__defineException('::IceGrid::ApplicationNotExistException', ApplicationNotExistException, nil, [["name", ::Ice::T_string, false, 0]])
    end

    if not defined?(::IceGrid::ServerNotExistException)
        class ServerNotExistException < Ice::UserException
            def to_s
                '::IceGrid::ServerNotExistException'
            end

            attr_accessor :id
        end

        T_ServerNotExistException = ::Ice::__defineException('::IceGrid::ServerNotExistException', ServerNotExistException, nil, [["id", ::Ice::T_string, false, 0]])
    end

    if not defined?(::IceGrid::ServerStartException)
        class ServerStartException < Ice::UserException
            def to_s
                '::IceGrid::ServerStartException'
            end

            attr_accessor :id, :reason
        end

        T_ServerStartException = ::Ice::__defineException('::IceGrid::ServerStartException', ServerStartException, nil, [
            ["id", ::Ice::T_string, false, 0],
            ["reason", ::Ice::T_string, false, 0]
        ])
    end

    if not defined?(::IceGrid::ServerStopException)
        class ServerStopException < Ice::UserException
            def to_s
                '::IceGrid::ServerStopException'
            end

            attr_accessor :id, :reason
        end

        T_ServerStopException = ::Ice::__defineException('::IceGrid::ServerStopException', ServerStopException, nil, [
            ["id", ::Ice::T_string, false, 0],
            ["reason", ::Ice::T_string, false, 0]
        ])
    end

    if not defined?(::IceGrid::AdapterNotExistException)
        class AdapterNotExistException < Ice::UserException
            def to_s
                '::IceGrid::AdapterNotExistException'
            end

            attr_accessor :id
        end

        T_AdapterNotExistException = ::Ice::__defineException('::IceGrid::AdapterNotExistException', AdapterNotExistException, nil, [["id", ::Ice::T_string, false, 0]])
    end

    if not defined?(::IceGrid::ObjectExistsException)
        class ObjectExistsException < Ice::UserException
            def to_s
                '::IceGrid::ObjectExistsException'
            end

            attr_accessor :id
        end

        T_ObjectExistsException = ::Ice::__defineException('::IceGrid::ObjectExistsException', ObjectExistsException, nil, [["id", ::Ice::T_Identity, false, 0]])
    end

    if not defined?(::IceGrid::ObjectNotRegisteredException)
        class ObjectNotRegisteredException < Ice::UserException
            def to_s
                '::IceGrid::ObjectNotRegisteredException'
            end

            attr_accessor :id
        end

        T_ObjectNotRegisteredException = ::Ice::__defineException('::IceGrid::ObjectNotRegisteredException', ObjectNotRegisteredException, nil, [["id", ::Ice::T_Identity, false, 0]])
    end

    if not defined?(::IceGrid::NodeNotExistException)
        class NodeNotExistException < Ice::UserException
            def to_s
                '::IceGrid::NodeNotExistException'
            end

            attr_accessor :name
        end

        T_NodeNotExistException = ::Ice::__defineException('::IceGrid::NodeNotExistException', NodeNotExistException, nil, [["name", ::Ice::T_string, false, 0]])
    end

    if not defined?(::IceGrid::RegistryNotExistException)
        class RegistryNotExistException < Ice::UserException
            def to_s
                '::IceGrid::RegistryNotExistException'
            end

            attr_accessor :name
        end

        T_RegistryNotExistException = ::Ice::__defineException('::IceGrid::RegistryNotExistException', RegistryNotExistException, nil, [["name", ::Ice::T_string, false, 0]])
    end

    if not defined?(::IceGrid::DeploymentException)
        class DeploymentException < Ice::UserException
            def to_s
                '::IceGrid::DeploymentException'
            end

            attr_accessor :reason
        end

        T_DeploymentException = ::Ice::__defineException('::IceGrid::DeploymentException', DeploymentException, nil, [["reason", ::Ice::T_string, false, 0]])
    end

    if not defined?(::IceGrid::NodeUnreachableException)
        class NodeUnreachableException < Ice::UserException
            def to_s
                '::IceGrid::NodeUnreachableException'
            end

            attr_accessor :name, :reason
        end

        T_NodeUnreachableException = ::Ice::__defineException('::IceGrid::NodeUnreachableException', NodeUnreachableException, nil, [
            ["name", ::Ice::T_string, false, 0],
            ["reason", ::Ice::T_string, false, 0]
        ])
    end

    if not defined?(::IceGrid::ServerUnreachableException)
        class ServerUnreachableException < Ice::UserException
            def to_s
                '::IceGrid::ServerUnreachableException'
            end

            attr_accessor :name, :reason
        end

        T_ServerUnreachableException = ::Ice::__defineException('::IceGrid::ServerUnreachableException', ServerUnreachableException, nil, [
            ["name", ::Ice::T_string, false, 0],
            ["reason", ::Ice::T_string, false, 0]
        ])
    end

    if not defined?(::IceGrid::RegistryUnreachableException)
        class RegistryUnreachableException < Ice::UserException
            def to_s
                '::IceGrid::RegistryUnreachableException'
            end

            attr_accessor :name, :reason
        end

        T_RegistryUnreachableException = ::Ice::__defineException('::IceGrid::RegistryUnreachableException', RegistryUnreachableException, nil, [
            ["name", ::Ice::T_string, false, 0],
            ["reason", ::Ice::T_string, false, 0]
        ])
    end

    if not defined?(::IceGrid::BadSignalException)
        class BadSignalException < Ice::UserException
            def to_s
                '::IceGrid::BadSignalException'
            end

            attr_accessor :reason
        end

        T_BadSignalException = ::Ice::__defineException('::IceGrid::BadSignalException', BadSignalException, nil, [["reason", ::Ice::T_string, false, 0]])
    end

    if not defined?(::IceGrid::AccessDeniedException)
        class AccessDeniedException < Ice::UserException
            def to_s
                '::IceGrid::AccessDeniedException'
            end

            attr_accessor :lockUserId
        end

        T_AccessDeniedException = ::Ice::__defineException('::IceGrid::AccessDeniedException', AccessDeniedException, nil, [["lockUserId", ::Ice::T_string, false, 0]])
    end

    if not defined?(::IceGrid::AllocationException)
        class AllocationException < Ice::UserException
            def to_s
                '::IceGrid::AllocationException'
            end

            attr_accessor :reason
        end

        T_AllocationException = ::Ice::__defineException('::IceGrid::AllocationException', AllocationException, nil, [["reason", ::Ice::T_string, false, 0]])
    end

    if not defined?(::IceGrid::AllocationTimeoutException)
        class AllocationTimeoutException < ::IceGrid::AllocationException
            def to_s
                '::IceGrid::AllocationTimeoutException'
            end
        end

        T_AllocationTimeoutException = ::Ice::__defineException('::IceGrid::AllocationTimeoutException', AllocationTimeoutException, ::IceGrid::T_AllocationException, [])
    end

    if not defined?(::IceGrid::PermissionDeniedException)
        class PermissionDeniedException < Ice::UserException
            def to_s
                '::IceGrid::PermissionDeniedException'
            end

            attr_accessor :reason
        end

        T_PermissionDeniedException = ::Ice::__defineException('::IceGrid::PermissionDeniedException', PermissionDeniedException, nil, [["reason", ::Ice::T_string, false, 0]])
    end

    if not defined?(::IceGrid::ObserverAlreadyRegisteredException)
        class ObserverAlreadyRegisteredException < Ice::UserException
            def to_s
                '::IceGrid::ObserverAlreadyRegisteredException'
            end

            attr_accessor :id
        end

        T_ObserverAlreadyRegisteredException = ::Ice::__defineException('::IceGrid::ObserverAlreadyRegisteredException', ObserverAlreadyRegisteredException, nil, [["id", ::Ice::T_Identity, false, 0]])
    end

    if not defined?(::IceGrid::FileNotAvailableException)
        class FileNotAvailableException < Ice::UserException
            def to_s
                '::IceGrid::FileNotAvailableException'
            end

            attr_accessor :reason
        end

        T_FileNotAvailableException = ::Ice::__defineException('::IceGrid::FileNotAvailableException', FileNotAvailableException, nil, [["reason", ::Ice::T_string, false, 0]])
    end
end
