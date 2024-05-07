# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
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

    if not defined?(::Test::Retry_Mixin)

        module ::Test::Retry_Mixin
        end
        module RetryPrx_mixin

            def op(kill, context=nil)
                RetryPrx_mixin::OP_op.invoke(self, [kill], context)
            end

            def opIdempotent(c, context=nil)
                RetryPrx_mixin::OP_opIdempotent.invoke(self, [c], context)
            end

            def opNotIdempotent(context=nil)
                RetryPrx_mixin::OP_opNotIdempotent.invoke(self, [], context)
            end

            def sleep(delay, context=nil)
                RetryPrx_mixin::OP_sleep.invoke(self, [delay], context)
            end

            def shutdown(context=nil)
                RetryPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class RetryPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include RetryPrx_mixin
        end

        if not defined?(::Test::T_RetryPrx)
            T_Retry = ::Ice::__declareClass('::Test::Retry')
            T_RetryPrx = ::Ice::__declareProxy('::Test::Retry')
        end

        T_RetryPrx.defineProxy(RetryPrx, nil, [])

        RetryPrx_mixin::OP_op = ::Ice::__defineOperation('op', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_bool, false, 0]], [], nil, [])
        RetryPrx_mixin::OP_opIdempotent = ::Ice::__defineOperation('opIdempotent', ::Ice::OperationMode::Idempotent, false, nil, [[::Ice::T_int, false, 0]], [], [::Ice::T_int, false, 0], [])
        RetryPrx_mixin::OP_opNotIdempotent = ::Ice::__defineOperation('opNotIdempotent', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        RetryPrx_mixin::OP_sleep = ::Ice::__defineOperation('sleep', ::Ice::OperationMode::Idempotent, false, nil, [[::Ice::T_int, false, 0]], [], nil, [])
        RetryPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Idempotent, false, nil, [], [], nil, [])
    end
end
