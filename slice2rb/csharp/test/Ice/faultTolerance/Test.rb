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

            def shutdown(context=nil)
                TestIntfPrx_mixin::OP_shutdown.invoke(self, [], context)
            end

            def abort(context=nil)
                TestIntfPrx_mixin::OP_abort.invoke(self, [], context)
            end

            def idempotentAbort(context=nil)
                TestIntfPrx_mixin::OP_idempotentAbort.invoke(self, [], context)
            end

            def pid(context=nil)
                TestIntfPrx_mixin::OP_pid.invoke(self, [], context)
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

        TestIntfPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_abort = ::Ice::__defineOperation('abort', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_idempotentAbort = ::Ice::__defineOperation('idempotentAbort', ::Ice::OperationMode::Idempotent, ::Ice::OperationMode::Idempotent, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_pid = ::Ice::__defineOperation('pid', ::Ice::OperationMode::Idempotent, ::Ice::OperationMode::Idempotent, false, nil, [], [], [::Ice::T_int, false, 0], [])
    end

    if not defined?(::Test::Cleaner_Mixin)

        module ::Test::Cleaner_Mixin
        end
        module CleanerPrx_mixin

            def cleanup(context=nil)
                CleanerPrx_mixin::OP_cleanup.invoke(self, [], context)
            end
        end

        class CleanerPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include CleanerPrx_mixin
        end

        if not defined?(::Test::T_CleanerPrx)
            T_Cleaner = ::Ice::__declareClass('::Test::Cleaner')
            T_CleanerPrx = ::Ice::__declareProxy('::Test::Cleaner')
        end

        T_Cleaner.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_CleanerPrx.defineProxy(CleanerPrx, nil, [])

        CleanerPrx_mixin::OP_cleanup = ::Ice::__defineOperation('cleanup', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end
