# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'Router.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

require 'Ice'
require 'Ice/Router.rb'
require_relative 'Session.rb'
require_relative 'PermissionsVerifier.rb'

module ::Glacier2
    if not defined?(::Glacier2::SessionNotExistException)
        class SessionNotExistException < Ice::UserException
            def to_s
                '::Glacier2::SessionNotExistException'
            end
        end

        T_SessionNotExistException = Ice::__defineException('::Glacier2::SessionNotExistException', SessionNotExistException, nil, [])
    end

    if not defined?(::Glacier2::T_RouterPrx)
        T_RouterPrx = Ice::__declareProxy('::Glacier2::Router')
    end

    if not defined?(::Glacier2::RouterPrx)
        module RouterPrx_mixin
            include ::Ice::RouterPrx_mixin
            def getCategoryForClient(context=nil)
                RouterPrx_mixin::OP_getCategoryForClient.invoke(self, [], context)
            end

            def createSession(userId, password, context=nil)
                RouterPrx_mixin::OP_createSession.invoke(self, [userId, password], context)
            end

            def createSessionFromSecureConnection(context=nil)
                RouterPrx_mixin::OP_createSessionFromSecureConnection.invoke(self, [], context)
            end

            def refreshSession(context=nil)
                RouterPrx_mixin::OP_refreshSession.invoke(self, [], context)
            end

            def destroySession(context=nil)
                RouterPrx_mixin::OP_destroySession.invoke(self, [], context)
            end

            def getSessionTimeout(context=nil)
                RouterPrx_mixin::OP_getSessionTimeout.invoke(self, [], context)
            end

            def getACMTimeout(context=nil)
                RouterPrx_mixin::OP_getACMTimeout.invoke(self, [], context)
            end
        end

        class RouterPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include RouterPrx_mixin
        end

        T_RouterPrx.defineProxy(RouterPrx, nil, [::Ice::T_RouterPrx])

        RouterPrx_mixin::OP_getCategoryForClient = Ice::__defineOperation('getCategoryForClient', Ice::OperationMode::Idempotent, nil, [], [], [Ice::T_string, false, 0], [])
        RouterPrx_mixin::OP_createSession = Ice::__defineOperation('createSession', Ice::OperationMode::Normal, nil, [[Ice::T_string, false, 0], [Ice::T_string, false, 0]], [], [::Glacier2::T_SessionPrx, false, 0], [::Glacier2::T_PermissionDeniedException, ::Glacier2::T_CannotCreateSessionException])
        RouterPrx_mixin::OP_createSessionFromSecureConnection = Ice::__defineOperation('createSessionFromSecureConnection', Ice::OperationMode::Normal, nil, [], [], [::Glacier2::T_SessionPrx, false, 0], [::Glacier2::T_PermissionDeniedException, ::Glacier2::T_CannotCreateSessionException])
        RouterPrx_mixin::OP_refreshSession = Ice::__defineOperation('refreshSession', Ice::OperationMode::Normal, nil, [], [], nil, [::Glacier2::T_SessionNotExistException])
        RouterPrx_mixin::OP_destroySession = Ice::__defineOperation('destroySession', Ice::OperationMode::Normal, nil, [], [], nil, [::Glacier2::T_SessionNotExistException])
        RouterPrx_mixin::OP_getSessionTimeout = Ice::__defineOperation('getSessionTimeout', Ice::OperationMode::Idempotent, nil, [], [], [Ice::T_long, false, 0], [])
        RouterPrx_mixin::OP_getACMTimeout = Ice::__defineOperation('getACMTimeout', Ice::OperationMode::Idempotent, nil, [], [], [Ice::T_int, false, 0], [])
    end
end
