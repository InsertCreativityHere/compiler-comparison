# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `ACMTest.ice'
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

            def sleep(seconds, context=nil)
                TestIntfPrx_mixin::OP_sleep.invoke(self, [seconds], context)
            end

            def sleepAndHold(seconds, context=nil)
                TestIntfPrx_mixin::OP_sleepAndHold.invoke(self, [seconds], context)
            end

            def interruptSleep(context=nil)
                TestIntfPrx_mixin::OP_interruptSleep.invoke(self, [], context)
            end

            def startHeartbeatCount(context=nil)
                TestIntfPrx_mixin::OP_startHeartbeatCount.invoke(self, [], context)
            end

            def waitForHeartbeatCount(count, context=nil)
                TestIntfPrx_mixin::OP_waitForHeartbeatCount.invoke(self, [count], context)
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

        TestIntfPrx_mixin::OP_sleep = ::Ice::__defineOperation('sleep', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0]], [], nil, [])
        TestIntfPrx_mixin::OP_sleepAndHold = ::Ice::__defineOperation('sleepAndHold', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0]], [], nil, [])
        TestIntfPrx_mixin::OP_interruptSleep = ::Ice::__defineOperation('interruptSleep', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_startHeartbeatCount = ::Ice::__defineOperation('startHeartbeatCount', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_waitForHeartbeatCount = ::Ice::__defineOperation('waitForHeartbeatCount', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0]], [], nil, [])
    end

    if not defined?(::Test::RemoteObjectAdapter_Mixin)

        module ::Test::RemoteObjectAdapter_Mixin
        end
        module RemoteObjectAdapterPrx_mixin

            def getTestIntf(context=nil)
                RemoteObjectAdapterPrx_mixin::OP_getTestIntf.invoke(self, [], context)
            end

            def activate(context=nil)
                RemoteObjectAdapterPrx_mixin::OP_activate.invoke(self, [], context)
            end

            def hold(context=nil)
                RemoteObjectAdapterPrx_mixin::OP_hold.invoke(self, [], context)
            end

            def deactivate(context=nil)
                RemoteObjectAdapterPrx_mixin::OP_deactivate.invoke(self, [], context)
            end
        end

        class RemoteObjectAdapterPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include RemoteObjectAdapterPrx_mixin
        end

        if not defined?(::Test::T_RemoteObjectAdapterPrx)
            T_RemoteObjectAdapter = ::Ice::__declareClass('::Test::RemoteObjectAdapter')
            T_RemoteObjectAdapterPrx = ::Ice::__declareProxy('::Test::RemoteObjectAdapter')
        end

        T_RemoteObjectAdapter.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_RemoteObjectAdapterPrx.defineProxy(RemoteObjectAdapterPrx, nil, [])

        RemoteObjectAdapterPrx_mixin::OP_getTestIntf = ::Ice::__defineOperation('getTestIntf', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::T_TestIntfPrx, false, 0], [])
        RemoteObjectAdapterPrx_mixin::OP_activate = ::Ice::__defineOperation('activate', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        RemoteObjectAdapterPrx_mixin::OP_hold = ::Ice::__defineOperation('hold', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        RemoteObjectAdapterPrx_mixin::OP_deactivate = ::Ice::__defineOperation('deactivate', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end

    if not defined?(::Test::RemoteCommunicator_Mixin)

        module ::Test::RemoteCommunicator_Mixin
        end
        module RemoteCommunicatorPrx_mixin

            def createObjectAdapter(acmTimeout, close, heartbeat, context=nil)
                RemoteCommunicatorPrx_mixin::OP_createObjectAdapter.invoke(self, [acmTimeout, close, heartbeat], context)
            end

            def shutdown(context=nil)
                RemoteCommunicatorPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class RemoteCommunicatorPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include RemoteCommunicatorPrx_mixin
        end

        if not defined?(::Test::T_RemoteCommunicatorPrx)
            T_RemoteCommunicator = ::Ice::__declareClass('::Test::RemoteCommunicator')
            T_RemoteCommunicatorPrx = ::Ice::__declareProxy('::Test::RemoteCommunicator')
        end

        T_RemoteCommunicator.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_RemoteCommunicatorPrx.defineProxy(RemoteCommunicatorPrx, nil, [])

        RemoteCommunicatorPrx_mixin::OP_createObjectAdapter = ::Ice::__defineOperation('createObjectAdapter', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [], [::Test::T_RemoteObjectAdapterPrx, false, 0], [])
        RemoteCommunicatorPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end
