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
    if not defined?(::Test::T_EchoPrx)
        T_EchoPrx = Ice::__declareProxy('::Test::Echo')
    end

    if not defined?(::Test::EchoPrx)
        module EchoPrx_mixin
            def startBatch(context=nil)
                EchoPrx_mixin::OP_startBatch.invoke(self, [], context)
            end

            def flushBatch(context=nil)
                EchoPrx_mixin::OP_flushBatch.invoke(self, [], context)
            end

            def shutdown(context=nil)
                EchoPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class EchoPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include EchoPrx_mixin
        end

        T_EchoPrx.defineProxy(EchoPrx, nil, [])

        EchoPrx_mixin::OP_startBatch = Ice::__defineOperation('startBatch', Ice::OperationMode::Normal, nil, [], [], nil, [])
        EchoPrx_mixin::OP_flushBatch = Ice::__defineOperation('flushBatch', Ice::OperationMode::Normal, nil, [], [], nil, [])
        EchoPrx_mixin::OP_shutdown = Ice::__defineOperation('shutdown', Ice::OperationMode::Normal, nil, [], [], nil, [])
    end
end
