# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'Test.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

require 'Ice'
require 'Ice/Context.rb'

module ::Test
    if not defined?(::Test::T_TestIntfPrx)
        T_TestIntfPrx = Ice::__declareProxy('::Test::TestIntf')
    end

    if not defined?(::Test::TestIntfPrx)
        module TestIntfPrx_mixin
            def shutdown(context=nil)
                TestIntfPrx_mixin::OP_shutdown.invoke(self, [], context)
            end

            def getEndpointInfoAsContext(context=nil)
                TestIntfPrx_mixin::OP_getEndpointInfoAsContext.invoke(self, [], context)
            end

            def getConnectionInfoAsContext(context=nil)
                TestIntfPrx_mixin::OP_getConnectionInfoAsContext.invoke(self, [], context)
            end
        end

        class TestIntfPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include TestIntfPrx_mixin
        end

        T_TestIntfPrx.defineProxy(TestIntfPrx, nil, [])

        TestIntfPrx_mixin::OP_shutdown = Ice::__defineOperation('shutdown', Ice::OperationMode::Normal, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_getEndpointInfoAsContext = Ice::__defineOperation('getEndpointInfoAsContext', Ice::OperationMode::Normal, nil, [], [], [::Ice::T_Context, false, 0], [])
        TestIntfPrx_mixin::OP_getConnectionInfoAsContext = Ice::__defineOperation('getConnectionInfoAsContext', Ice::OperationMode::Normal, nil, [], [], [::Ice::T_Context, false, 0], [])
    end
end
