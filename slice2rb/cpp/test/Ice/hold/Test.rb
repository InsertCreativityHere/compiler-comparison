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
    if not defined?(::Test::T_HoldPrx)
        T_HoldPrx = Ice::__declareProxy('::Test::Hold')
    end

    if not defined?(::Test::HoldPrx)
        module HoldPrx_mixin
            def putOnHold(delay, context=nil)
                HoldPrx_mixin::OP_putOnHold.invoke(self, [delay], context)
            end

            def waitForHold(context=nil)
                HoldPrx_mixin::OP_waitForHold.invoke(self, [], context)
            end

            def setOneway(value, expected, context=nil)
                HoldPrx_mixin::OP_setOneway.invoke(self, [value, expected], context)
            end

            def set(value, delay, context=nil)
                HoldPrx_mixin::OP_set.invoke(self, [value, delay], context)
            end

            def shutdown(context=nil)
                HoldPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class HoldPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include HoldPrx_mixin
        end

        T_HoldPrx.defineProxy(HoldPrx, nil, [])

        HoldPrx_mixin::OP_putOnHold = Ice::__defineOperation('putOnHold', Ice::OperationMode::Normal, nil, [[Ice::T_int, false, 0]], [], nil, [])
        HoldPrx_mixin::OP_waitForHold = Ice::__defineOperation('waitForHold', Ice::OperationMode::Normal, nil, [], [], nil, [])
        HoldPrx_mixin::OP_setOneway = Ice::__defineOperation('setOneway', Ice::OperationMode::Normal, nil, [[Ice::T_int, false, 0], [Ice::T_int, false, 0]], [], nil, [])
        HoldPrx_mixin::OP_set = Ice::__defineOperation('set', Ice::OperationMode::Normal, nil, [[Ice::T_int, false, 0], [Ice::T_int, false, 0]], [], [Ice::T_int, false, 0], [])
        HoldPrx_mixin::OP_shutdown = Ice::__defineOperation('shutdown', Ice::OperationMode::Normal, nil, [], [], nil, [])
    end
end
