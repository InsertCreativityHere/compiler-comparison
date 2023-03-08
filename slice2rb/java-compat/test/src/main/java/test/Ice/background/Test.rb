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
require 'Ice/BuiltinSequences.rb'

module ::Test

    if not defined?(::Test::Background_Mixin)

        module ::Test::Background_Mixin
        end
        module BackgroundPrx_mixin

            def op(context=nil)
                BackgroundPrx_mixin::OP_op.invoke(self, [], context)
            end

            def opWithPayload(seq, context=nil)
                BackgroundPrx_mixin::OP_opWithPayload.invoke(self, [seq], context)
            end

            def shutdown(context=nil)
                BackgroundPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class BackgroundPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include BackgroundPrx_mixin
        end

        if not defined?(::Test::T_BackgroundPrx)
            T_Background = ::Ice::__declareClass('::Test::Background')
            T_BackgroundPrx = ::Ice::__declareProxy('::Test::Background')
        end

        T_Background.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_BackgroundPrx.defineProxy(BackgroundPrx, nil, [])

        BackgroundPrx_mixin::OP_op = ::Ice::__defineOperation('op', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        BackgroundPrx_mixin::OP_opWithPayload = ::Ice::__defineOperation('opWithPayload', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_ByteSeq, false, 0]], [], nil, [])
        BackgroundPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end

    if not defined?(::Test::BackgroundController_Mixin)

        module ::Test::BackgroundController_Mixin
        end
        module BackgroundControllerPrx_mixin

            def pauseCall(call, context=nil)
                BackgroundControllerPrx_mixin::OP_pauseCall.invoke(self, [call], context)
            end

            def resumeCall(call, context=nil)
                BackgroundControllerPrx_mixin::OP_resumeCall.invoke(self, [call], context)
            end

            def holdAdapter(context=nil)
                BackgroundControllerPrx_mixin::OP_holdAdapter.invoke(self, [], context)
            end

            def resumeAdapter(context=nil)
                BackgroundControllerPrx_mixin::OP_resumeAdapter.invoke(self, [], context)
            end

            def initializeSocketStatus(status, context=nil)
                BackgroundControllerPrx_mixin::OP_initializeSocketStatus.invoke(self, [status], context)
            end

            def initializeException(enable, context=nil)
                BackgroundControllerPrx_mixin::OP_initializeException.invoke(self, [enable], context)
            end

            def readReady(enable, context=nil)
                BackgroundControllerPrx_mixin::OP_readReady.invoke(self, [enable], context)
            end

            def readException(enable, context=nil)
                BackgroundControllerPrx_mixin::OP_readException.invoke(self, [enable], context)
            end

            def writeReady(enable, context=nil)
                BackgroundControllerPrx_mixin::OP_writeReady.invoke(self, [enable], context)
            end

            def writeException(enable, context=nil)
                BackgroundControllerPrx_mixin::OP_writeException.invoke(self, [enable], context)
            end

            def buffered(enable, context=nil)
                BackgroundControllerPrx_mixin::OP_buffered.invoke(self, [enable], context)
            end
        end

        class BackgroundControllerPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include BackgroundControllerPrx_mixin
        end

        if not defined?(::Test::T_BackgroundControllerPrx)
            T_BackgroundController = ::Ice::__declareClass('::Test::BackgroundController')
            T_BackgroundControllerPrx = ::Ice::__declareProxy('::Test::BackgroundController')
        end

        T_BackgroundController.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_BackgroundControllerPrx.defineProxy(BackgroundControllerPrx, nil, [])

        BackgroundControllerPrx_mixin::OP_pauseCall = ::Ice::__defineOperation('pauseCall', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0]], [], nil, [])
        BackgroundControllerPrx_mixin::OP_resumeCall = ::Ice::__defineOperation('resumeCall', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0]], [], nil, [])
        BackgroundControllerPrx_mixin::OP_holdAdapter = ::Ice::__defineOperation('holdAdapter', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        BackgroundControllerPrx_mixin::OP_resumeAdapter = ::Ice::__defineOperation('resumeAdapter', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        BackgroundControllerPrx_mixin::OP_initializeSocketStatus = ::Ice::__defineOperation('initializeSocketStatus', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0]], [], nil, [])
        BackgroundControllerPrx_mixin::OP_initializeException = ::Ice::__defineOperation('initializeException', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_bool, false, 0]], [], nil, [])
        BackgroundControllerPrx_mixin::OP_readReady = ::Ice::__defineOperation('readReady', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_bool, false, 0]], [], nil, [])
        BackgroundControllerPrx_mixin::OP_readException = ::Ice::__defineOperation('readException', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_bool, false, 0]], [], nil, [])
        BackgroundControllerPrx_mixin::OP_writeReady = ::Ice::__defineOperation('writeReady', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_bool, false, 0]], [], nil, [])
        BackgroundControllerPrx_mixin::OP_writeException = ::Ice::__defineOperation('writeException', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_bool, false, 0]], [], nil, [])
        BackgroundControllerPrx_mixin::OP_buffered = ::Ice::__defineOperation('buffered', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_bool, false, 0]], [], nil, [])
    end
end
