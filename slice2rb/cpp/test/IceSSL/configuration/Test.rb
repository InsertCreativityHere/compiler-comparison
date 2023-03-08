# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `Test.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'

module ::Test

    if not defined?(::Test::Server_Mixin)

        module ::Test::Server_Mixin
        end
        module ServerPrx_mixin

            def noCert(context=nil)
                ServerPrx_mixin::OP_noCert.invoke(self, [], context)
            end

            def checkCert(subjectDN, issuerDN, context=nil)
                ServerPrx_mixin::OP_checkCert.invoke(self, [subjectDN, issuerDN], context)
            end

            def checkCipher(cipher, context=nil)
                ServerPrx_mixin::OP_checkCipher.invoke(self, [cipher], context)
            end
        end

        class ServerPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include ServerPrx_mixin
        end

        if not defined?(::Test::T_ServerPrx)
            T_Server = ::Ice::__declareClass('::Test::Server')
            T_ServerPrx = ::Ice::__declareProxy('::Test::Server')
        end

        T_Server.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_ServerPrx.defineProxy(ServerPrx, nil, [])

        ServerPrx_mixin::OP_noCert = ::Ice::__defineOperation('noCert', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        ServerPrx_mixin::OP_checkCert = ::Ice::__defineOperation('checkCert', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0], [::Ice::T_string, false, 0]], [], nil, [])
        ServerPrx_mixin::OP_checkCipher = ::Ice::__defineOperation('checkCipher', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0]], [], nil, [])
    end

    if not defined?(::Test::T_Properties)
        T_Properties = ::Ice::__defineDictionary('::Test::Properties', ::Ice::T_string, ::Ice::T_string)
    end

    if not defined?(::Test::ServerFactory_Mixin)

        module ::Test::ServerFactory_Mixin
        end
        module ServerFactoryPrx_mixin

            def createServer(props, context=nil)
                ServerFactoryPrx_mixin::OP_createServer.invoke(self, [props], context)
            end

            def destroyServer(srv, context=nil)
                ServerFactoryPrx_mixin::OP_destroyServer.invoke(self, [srv], context)
            end

            def shutdown(context=nil)
                ServerFactoryPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class ServerFactoryPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include ServerFactoryPrx_mixin
        end

        if not defined?(::Test::T_ServerFactoryPrx)
            T_ServerFactory = ::Ice::__declareClass('::Test::ServerFactory')
            T_ServerFactoryPrx = ::Ice::__declareProxy('::Test::ServerFactory')
        end

        T_ServerFactory.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_ServerFactoryPrx.defineProxy(ServerFactoryPrx, nil, [])

        ServerFactoryPrx_mixin::OP_createServer = ::Ice::__defineOperation('createServer', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::T_Properties, false, 0]], [], [::Test::T_ServerPrx, false, 0], [])
        ServerFactoryPrx_mixin::OP_destroyServer = ::Ice::__defineOperation('destroyServer', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::T_ServerPrx, false, 0]], [], nil, [])
        ServerFactoryPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end
