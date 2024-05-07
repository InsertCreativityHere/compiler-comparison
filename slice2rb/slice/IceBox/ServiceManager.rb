# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `ServiceManager.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'
require_relative '../Ice/BuiltinSequences.rb'

module ::IceBox

    if not defined?(::IceBox::AlreadyStartedException)
        class AlreadyStartedException < Ice::UserException
            def initialize
            end

            def to_s
                '::IceBox::AlreadyStartedException'
            end
        end

        T_AlreadyStartedException = ::Ice::__defineException('::IceBox::AlreadyStartedException', AlreadyStartedException, nil, [])
    end

    if not defined?(::IceBox::AlreadyStoppedException)
        class AlreadyStoppedException < Ice::UserException
            def initialize
            end

            def to_s
                '::IceBox::AlreadyStoppedException'
            end
        end

        T_AlreadyStoppedException = ::Ice::__defineException('::IceBox::AlreadyStoppedException', AlreadyStoppedException, nil, [])
    end

    if not defined?(::IceBox::NoSuchServiceException)
        class NoSuchServiceException < Ice::UserException
            def initialize
            end

            def to_s
                '::IceBox::NoSuchServiceException'
            end
        end

        T_NoSuchServiceException = ::Ice::__defineException('::IceBox::NoSuchServiceException', NoSuchServiceException, nil, [])
    end

    if not defined?(::IceBox::ServiceObserver_Mixin)

        module ::IceBox::ServiceObserver_Mixin
        end
        module ServiceObserverPrx_mixin

            def servicesStarted(services, context=nil)
                ServiceObserverPrx_mixin::OP_servicesStarted.invoke(self, [services], context)
            end

            def servicesStopped(services, context=nil)
                ServiceObserverPrx_mixin::OP_servicesStopped.invoke(self, [services], context)
            end
        end

        class ServiceObserverPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include ServiceObserverPrx_mixin
        end

        if not defined?(::IceBox::T_ServiceObserverPrx)
            T_ServiceObserver = ::Ice::__declareClass('::IceBox::ServiceObserver')
            T_ServiceObserverPrx = ::Ice::__declareProxy('::IceBox::ServiceObserver')
        end

        T_ServiceObserverPrx.defineProxy(ServiceObserverPrx, nil, [])

        ServiceObserverPrx_mixin::OP_servicesStarted = ::Ice::__defineOperation('servicesStarted', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_StringSeq, false, 0]], [], nil, [])
        ServiceObserverPrx_mixin::OP_servicesStopped = ::Ice::__defineOperation('servicesStopped', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_StringSeq, false, 0]], [], nil, [])
    end

    if not defined?(::IceBox::ServiceManager_Mixin)

        module ::IceBox::ServiceManager_Mixin
        end
        module ServiceManagerPrx_mixin

            def startService(service, context=nil)
                ServiceManagerPrx_mixin::OP_startService.invoke(self, [service], context)
            end

            def stopService(service, context=nil)
                ServiceManagerPrx_mixin::OP_stopService.invoke(self, [service], context)
            end

            def addObserver(observer, context=nil)
                ServiceManagerPrx_mixin::OP_addObserver.invoke(self, [observer], context)
            end

            def shutdown(context=nil)
                ServiceManagerPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class ServiceManagerPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include ServiceManagerPrx_mixin
        end

        if not defined?(::IceBox::T_ServiceManagerPrx)
            T_ServiceManager = ::Ice::__declareClass('::IceBox::ServiceManager')
            T_ServiceManagerPrx = ::Ice::__declareProxy('::IceBox::ServiceManager')
        end

        T_ServiceManagerPrx.defineProxy(ServiceManagerPrx, nil, [])

        ServiceManagerPrx_mixin::OP_startService = ::Ice::__defineOperation('startService', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0]], [], nil, [::IceBox::T_AlreadyStartedException, ::IceBox::T_NoSuchServiceException])
        ServiceManagerPrx_mixin::OP_stopService = ::Ice::__defineOperation('stopService', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0]], [], nil, [::IceBox::T_AlreadyStoppedException, ::IceBox::T_NoSuchServiceException])
        ServiceManagerPrx_mixin::OP_addObserver = ::Ice::__defineOperation('addObserver', ::Ice::OperationMode::Normal, false, nil, [[::IceBox::T_ServiceObserverPrx, false, 0]], [], nil, [])
        ServiceManagerPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end
