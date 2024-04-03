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
require_relative 'Package.rb'
require_relative 'NoPackage.rb'

module ::Test

    if not defined?(::Test::Initial_Mixin)

        module ::Test::Initial_Mixin
        end
        module InitialPrx_mixin

            def getTest1C2AsC1(context=nil)
                InitialPrx_mixin::OP_getTest1C2AsC1.invoke(self, [], context)
            end

            def getTest1C2AsC2(context=nil)
                InitialPrx_mixin::OP_getTest1C2AsC2.invoke(self, [], context)
            end

            def throwTest1E2AsE1(context=nil)
                InitialPrx_mixin::OP_throwTest1E2AsE1.invoke(self, [], context)
            end

            def throwTest1E2AsE2(context=nil)
                InitialPrx_mixin::OP_throwTest1E2AsE2.invoke(self, [], context)
            end

            def throwTest1Notify(context=nil)
                InitialPrx_mixin::OP_throwTest1Notify.invoke(self, [], context)
            end

            def getTest2C2AsC1(context=nil)
                InitialPrx_mixin::OP_getTest2C2AsC1.invoke(self, [], context)
            end

            def getTest2C2AsC2(context=nil)
                InitialPrx_mixin::OP_getTest2C2AsC2.invoke(self, [], context)
            end

            def throwTest2E2AsE1(context=nil)
                InitialPrx_mixin::OP_throwTest2E2AsE1.invoke(self, [], context)
            end

            def throwTest2E2AsE2(context=nil)
                InitialPrx_mixin::OP_throwTest2E2AsE2.invoke(self, [], context)
            end

            def getTest3C2AsC1(context=nil)
                InitialPrx_mixin::OP_getTest3C2AsC1.invoke(self, [], context)
            end

            def getTest3C2AsC2(context=nil)
                InitialPrx_mixin::OP_getTest3C2AsC2.invoke(self, [], context)
            end

            def throwTest3E2AsE1(context=nil)
                InitialPrx_mixin::OP_throwTest3E2AsE1.invoke(self, [], context)
            end

            def throwTest3E2AsE2(context=nil)
                InitialPrx_mixin::OP_throwTest3E2AsE2.invoke(self, [], context)
            end

            def shutdown(context=nil)
                InitialPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class InitialPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include InitialPrx_mixin
        end

        if not defined?(::Test::T_InitialPrx)
            T_Initial = ::Ice::__declareClass('::Test::Initial')
            T_InitialPrx = ::Ice::__declareProxy('::Test::Initial')
        end

        T_InitialPrx.defineProxy(InitialPrx, nil, [])

        InitialPrx_mixin::OP_getTest1C2AsC1 = ::Ice::__defineOperation('getTest1C2AsC1', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test1::T_C1, false, 0], [])
        InitialPrx_mixin::OP_getTest1C2AsC2 = ::Ice::__defineOperation('getTest1C2AsC2', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test1::T_C2, false, 0], [])
        InitialPrx_mixin::OP_throwTest1E2AsE1 = ::Ice::__defineOperation('throwTest1E2AsE1', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [::Test1::T_E1])
        InitialPrx_mixin::OP_throwTest1E2AsE2 = ::Ice::__defineOperation('throwTest1E2AsE2', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [::Test1::T_E2])
        InitialPrx_mixin::OP_throwTest1Notify = ::Ice::__defineOperation('throwTest1Notify', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [::Test1::T_Notify])
        InitialPrx_mixin::OP_getTest2C2AsC1 = ::Ice::__defineOperation('getTest2C2AsC1', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test2::T_C1, false, 0], [])
        InitialPrx_mixin::OP_getTest2C2AsC2 = ::Ice::__defineOperation('getTest2C2AsC2', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test2::T_C2, false, 0], [])
        InitialPrx_mixin::OP_throwTest2E2AsE1 = ::Ice::__defineOperation('throwTest2E2AsE1', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [::Test2::T_E1])
        InitialPrx_mixin::OP_throwTest2E2AsE2 = ::Ice::__defineOperation('throwTest2E2AsE2', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [::Test2::T_E2])
        InitialPrx_mixin::OP_getTest3C2AsC1 = ::Ice::__defineOperation('getTest3C2AsC1', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test3::T_C1, false, 0], [])
        InitialPrx_mixin::OP_getTest3C2AsC2 = ::Ice::__defineOperation('getTest3C2AsC2', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test3::T_C2, false, 0], [])
        InitialPrx_mixin::OP_throwTest3E2AsE1 = ::Ice::__defineOperation('throwTest3E2AsE1', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [::Test3::T_E1])
        InitialPrx_mixin::OP_throwTest3E2AsE2 = ::Ice::__defineOperation('throwTest3E2AsE2', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [::Test3::T_E2])
        InitialPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end
