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

    if not defined?(::Test::Echo_Mixin)

        module ::Test::Echo_Mixin
        end
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

        class EchoPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include EchoPrx_mixin
        end

        if not defined?(::Test::T_EchoPrx)
            T_Echo = ::Ice::__declareClass('::Test::Echo')
            T_EchoPrx = ::Ice::__declareProxy('::Test::Echo')
        end

        T_EchoPrx.defineProxy(EchoPrx, nil, [])

        EchoPrx_mixin::OP_startBatch = ::Ice::__defineOperation('startBatch', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        EchoPrx_mixin::OP_flushBatch = ::Ice::__defineOperation('flushBatch', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        EchoPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end
