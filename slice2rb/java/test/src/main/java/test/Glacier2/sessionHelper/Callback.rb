# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `Callback.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'

module ::Test

    if not defined?(::Test::CallbackException)
        class CallbackException < Ice::UserException
            def to_s
                '::Test::CallbackException'
            end

            attr_accessor :someValue, :someString
        end

        T_CallbackException = ::Ice::__defineException('::Test::CallbackException', CallbackException, nil, [
            ["someValue", ::Ice::T_double, false, 0],
            ["someString", ::Ice::T_string, false, 0]
        ])
    end

    if not defined?(::Test::CallbackReceiver_Mixin)

        module ::Test::CallbackReceiver_Mixin
        end
        module CallbackReceiverPrx_mixin

            def callback(context=nil)
                CallbackReceiverPrx_mixin::OP_callback.invoke(self, [], context)
            end

            def callbackEx(context=nil)
                CallbackReceiverPrx_mixin::OP_callbackEx.invoke(self, [], context)
            end
        end

        class CallbackReceiverPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include CallbackReceiverPrx_mixin
        end

        if not defined?(::Test::T_CallbackReceiverPrx)
            T_CallbackReceiver = ::Ice::__declareClass('::Test::CallbackReceiver')
            T_CallbackReceiverPrx = ::Ice::__declareProxy('::Test::CallbackReceiver')
        end

        T_CallbackReceiverPrx.defineProxy(CallbackReceiverPrx, nil, [])

        CallbackReceiverPrx_mixin::OP_callback = ::Ice::__defineOperation('callback', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        CallbackReceiverPrx_mixin::OP_callbackEx = ::Ice::__defineOperation('callbackEx', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [::Test::T_CallbackException])
    end

    if not defined?(::Test::Callback_Mixin)

        module ::Test::Callback_Mixin
        end
        module CallbackPrx_mixin

            def initiateCallback(proxy, context=nil)
                CallbackPrx_mixin::OP_initiateCallback.invoke(self, [proxy], context)
            end

            def initiateCallbackEx(proxy, context=nil)
                CallbackPrx_mixin::OP_initiateCallbackEx.invoke(self, [proxy], context)
            end

            def shutdown(context=nil)
                CallbackPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class CallbackPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include CallbackPrx_mixin
        end

        if not defined?(::Test::T_CallbackPrx)
            T_Callback = ::Ice::__declareClass('::Test::Callback')
            T_CallbackPrx = ::Ice::__declareProxy('::Test::Callback')
        end

        T_CallbackPrx.defineProxy(CallbackPrx, nil, [])

        CallbackPrx_mixin::OP_initiateCallback = ::Ice::__defineOperation('initiateCallback', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_CallbackReceiverPrx, false, 0]], [], nil, [])
        CallbackPrx_mixin::OP_initiateCallbackEx = ::Ice::__defineOperation('initiateCallbackEx', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_CallbackReceiverPrx, false, 0]], [], nil, [::Test::T_CallbackException])
        CallbackPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end
