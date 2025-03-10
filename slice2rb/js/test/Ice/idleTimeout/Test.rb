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

module ::Test
    if not defined?(::Test::T_DelayedTestIntfPrx)
        T_DelayedTestIntfPrx = Ice::__declareProxy('::Test::DelayedTestIntf')
    end

    if not defined?(::Test::DelayedTestIntfPrx)
        module DelayedTestIntfPrx_mixin
            def sleep(ms, context=nil)
                DelayedTestIntfPrx_mixin::OP_sleep.invoke(self, [ms], context)
            end
        end

        class DelayedTestIntfPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include DelayedTestIntfPrx_mixin
        end

        T_DelayedTestIntfPrx.defineProxy(DelayedTestIntfPrx, nil, [])

        DelayedTestIntfPrx_mixin::OP_sleep = Ice::__defineOperation('sleep', Ice::OperationMode::Normal, nil, [[Ice::T_int, false, 0]], [], nil, [])
    end

    if not defined?(::Test::T_TestIntfPrx)
        T_TestIntfPrx = Ice::__declareProxy('::Test::TestIntf')
    end

    if not defined?(::Test::TestIntfPrx)
        module TestIntfPrx_mixin
            include ::Test::DelayedTestIntfPrx_mixin
            def shutdown(context=nil)
                TestIntfPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class TestIntfPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include TestIntfPrx_mixin
        end

        T_TestIntfPrx.defineProxy(TestIntfPrx, nil, [::Test::T_DelayedTestIntfPrx])

        TestIntfPrx_mixin::OP_shutdown = Ice::__defineOperation('shutdown', Ice::OperationMode::Normal, nil, [], [], nil, [])
    end

    if not defined?(::Test::T_TestIntfBidirPrx)
        T_TestIntfBidirPrx = Ice::__declareProxy('::Test::TestIntfBidir')
    end

    if not defined?(::Test::TestIntfBidirPrx)
        module TestIntfBidirPrx_mixin
            def makeSleep(aborted, ms, target, context=nil)
                TestIntfBidirPrx_mixin::OP_makeSleep.invoke(self, [aborted, ms, target], context)
            end
        end

        class TestIntfBidirPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include TestIntfBidirPrx_mixin
        end

        T_TestIntfBidirPrx.defineProxy(TestIntfBidirPrx, nil, [])

        TestIntfBidirPrx_mixin::OP_makeSleep = Ice::__defineOperation('makeSleep', Ice::OperationMode::Normal, nil, [[Ice::T_bool, false, 0], [Ice::T_int, false, 0], [::Test::T_DelayedTestIntfPrx, false, 0]], [], nil, [])
    end
end
