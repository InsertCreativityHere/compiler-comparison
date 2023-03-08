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

    if not defined?(::Test::TestIntf_Mixin)

        module ::Test::TestIntf_Mixin
        end
        module TestIntfPrx_mixin

            def getReplicaId(context=nil)
                TestIntfPrx_mixin::OP_getReplicaId.invoke(self, [], context)
            end

            def getReplicaIdAndShutdown(context=nil)
                TestIntfPrx_mixin::OP_getReplicaIdAndShutdown.invoke(self, [], context)
            end
        end

        class TestIntfPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include TestIntfPrx_mixin
        end

        if not defined?(::Test::T_TestIntfPrx)
            T_TestIntf = ::Ice::__declareClass('::Test::TestIntf')
            T_TestIntfPrx = ::Ice::__declareProxy('::Test::TestIntf')
        end

        T_TestIntf.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_TestIntfPrx.defineProxy(TestIntfPrx, nil, [])

        TestIntfPrx_mixin::OP_getReplicaId = ::Ice::__defineOperation('getReplicaId', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Ice::T_string, false, 0], [])
        TestIntfPrx_mixin::OP_getReplicaIdAndShutdown = ::Ice::__defineOperation('getReplicaIdAndShutdown', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Ice::T_string, false, 0], [])
    end
end
