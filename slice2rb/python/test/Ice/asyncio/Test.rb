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

    if not defined?(::Test::TestException)
        class TestException < Ice::UserException
            def initialize
            end

            def to_s
                '::Test::TestException'
            end
        end

        T_TestException = ::Ice::__defineException('::Test::TestException', TestException, false, nil, [])
    end

    if not defined?(::Test::TestIntf_Mixin)

        module ::Test::TestIntf_Mixin
        end
        module TestIntfPrx_mixin

            def op(context=nil)
                TestIntfPrx_mixin::OP_op.invoke(self, [], context)
            end

            def callOpOn(proxy, context=nil)
                TestIntfPrx_mixin::OP_callOpOn.invoke(self, [proxy], context)
            end

            def throwUserException1(context=nil)
                TestIntfPrx_mixin::OP_throwUserException1.invoke(self, [], context)
            end

            def throwUserException2(context=nil)
                TestIntfPrx_mixin::OP_throwUserException2.invoke(self, [], context)
            end

            def throwUnhandledException1(context=nil)
                TestIntfPrx_mixin::OP_throwUnhandledException1.invoke(self, [], context)
            end

            def throwUnhandledException2(context=nil)
                TestIntfPrx_mixin::OP_throwUnhandledException2.invoke(self, [], context)
            end

            def sleep(ms, context=nil)
                TestIntfPrx_mixin::OP_sleep.invoke(self, [ms], context)
            end

            def shutdown(context=nil)
                TestIntfPrx_mixin::OP_shutdown.invoke(self, [], context)
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

        TestIntfPrx_mixin::OP_op = ::Ice::__defineOperation('op', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Ice::T_int, false, 0], [])
        TestIntfPrx_mixin::OP_callOpOn = ::Ice::__defineOperation('callOpOn', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::T_TestIntfPrx, false, 0]], [], [::Ice::T_int, false, 0], [])
        TestIntfPrx_mixin::OP_throwUserException1 = ::Ice::__defineOperation('throwUserException1', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [::Test::T_TestException])
        TestIntfPrx_mixin::OP_throwUserException2 = ::Ice::__defineOperation('throwUserException2', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [::Test::T_TestException])
        TestIntfPrx_mixin::OP_throwUnhandledException1 = ::Ice::__defineOperation('throwUnhandledException1', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_throwUnhandledException2 = ::Ice::__defineOperation('throwUnhandledException2', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_sleep = ::Ice::__defineOperation('sleep', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0]], [], nil, [])
        TestIntfPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end
