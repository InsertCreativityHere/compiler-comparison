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

    if not defined?(::Test::Priority_Mixin)

        module ::Test::Priority_Mixin
        end
        module PriorityPrx_mixin

            def shutdown(context=nil)
                PriorityPrx_mixin::OP_shutdown.invoke(self, [], context)
            end

            def getPriority(context=nil)
                PriorityPrx_mixin::OP_getPriority.invoke(self, [], context)
            end
        end

        class PriorityPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include PriorityPrx_mixin
        end

        if not defined?(::Test::T_PriorityPrx)
            T_Priority = ::Ice::__declareClass('::Test::Priority')
            T_PriorityPrx = ::Ice::__declareProxy('::Test::Priority')
        end

        T_PriorityPrx.defineProxy(PriorityPrx, nil, [])

        PriorityPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        PriorityPrx_mixin::OP_getPriority = ::Ice::__defineOperation('getPriority', ::Ice::OperationMode::Normal, false, nil, [], [], [::Ice::T_string, false, 0], [])
    end
end
