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
require 'Ice/BuiltinSequences.rb'
require 'Ice/Identity.rb'

module ::Test

    if not defined?(::Test::TestIntfException)
        class TestIntfException < Ice::UserException
            def initialize
            end

            def to_s
                '::Test::TestIntfException'
            end
        end

        T_TestIntfException = ::Ice::__defineException('::Test::TestIntfException', TestIntfException, nil, [])
    end

    if not defined?(::Test::CloseMode)
        class CloseMode
            include Comparable

            def initialize(name, value)
                @name = name
                @value = value
            end

            def CloseMode.from_int(val)
                @@_enumerators[val]
            end

            def to_s
                @name
            end

            def to_i
                @value
            end

            def <=>(other)
                other.is_a?(CloseMode) or raise ArgumentError, "value must be a CloseMode"
                @value <=> other.to_i
            end

            def hash
                @value.hash
            end

            def CloseMode.each(&block)
                @@_enumerators.each_value(&block)
            end

            Forcefully = CloseMode.new("Forcefully", 0)
            Gracefully = CloseMode.new("Gracefully", 1)
            GracefullyWithWait = CloseMode.new("GracefullyWithWait", 2)

            @@_enumerators = {0=>Forcefully, 1=>Gracefully, 2=>GracefullyWithWait}

            def CloseMode._enumerators
                @@_enumerators
            end

            private_class_method :new
        end

        T_CloseMode = ::Ice::__defineEnum('::Test::CloseMode', CloseMode, CloseMode::_enumerators)
    end

    if not defined?(::Test::PingReply_Mixin)

        module ::Test::PingReply_Mixin
        end
        module PingReplyPrx_mixin

            def reply(context=nil)
                PingReplyPrx_mixin::OP_reply.invoke(self, [], context)
            end
        end

        class PingReplyPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include PingReplyPrx_mixin
        end

        if not defined?(::Test::T_PingReplyPrx)
            T_PingReply = ::Ice::__declareClass('::Test::PingReply')
            T_PingReplyPrx = ::Ice::__declareProxy('::Test::PingReply')
        end

        T_PingReplyPrx.defineProxy(PingReplyPrx, nil, [])

        PingReplyPrx_mixin::OP_reply = ::Ice::__defineOperation('reply', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end

    if not defined?(::Test::TestIntf_Mixin)

        module ::Test::TestIntf_Mixin
        end
        module TestIntfPrx_mixin

            def op(context=nil)
                TestIntfPrx_mixin::OP_op.invoke(self, [], context)
            end

            def opWithPayload(seq, context=nil)
                TestIntfPrx_mixin::OP_opWithPayload.invoke(self, [seq], context)
            end

            def opWithResult(context=nil)
                TestIntfPrx_mixin::OP_opWithResult.invoke(self, [], context)
            end

            def opWithUE(context=nil)
                TestIntfPrx_mixin::OP_opWithUE.invoke(self, [], context)
            end

            def opWithResultAndUE(context=nil)
                TestIntfPrx_mixin::OP_opWithResultAndUE.invoke(self, [], context)
            end

            def opBatch(context=nil)
                TestIntfPrx_mixin::OP_opBatch.invoke(self, [], context)
            end

            def opWithArgs(context=nil)
                TestIntfPrx_mixin::OP_opWithArgs.invoke(self, [], context)
            end

            def opBatchCount(context=nil)
                TestIntfPrx_mixin::OP_opBatchCount.invoke(self, [], context)
            end

            def waitForBatch(count, context=nil)
                TestIntfPrx_mixin::OP_waitForBatch.invoke(self, [count], context)
            end

            def close(mode, context=nil)
                TestIntfPrx_mixin::OP_close.invoke(self, [mode], context)
            end

            def sleep(ms, context=nil)
                TestIntfPrx_mixin::OP_sleep.invoke(self, [ms], context)
            end

            def startDispatch(context=nil)
                TestIntfPrx_mixin::OP_startDispatch.invoke(self, [], context)
            end

            def finishDispatch(context=nil)
                TestIntfPrx_mixin::OP_finishDispatch.invoke(self, [], context)
            end

            def shutdown(context=nil)
                TestIntfPrx_mixin::OP_shutdown.invoke(self, [], context)
            end

            def supportsAMD(context=nil)
                TestIntfPrx_mixin::OP_supportsAMD.invoke(self, [], context)
            end

            def supportsFunctionalTests(context=nil)
                TestIntfPrx_mixin::OP_supportsFunctionalTests.invoke(self, [], context)
            end

            def pingBiDir(reply, context=nil)
                TestIntfPrx_mixin::OP_pingBiDir.invoke(self, [reply], context)
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

        T_TestIntfPrx.defineProxy(TestIntfPrx, nil, [])

        TestIntfPrx_mixin::OP_op = ::Ice::__defineOperation('op', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_opWithPayload = ::Ice::__defineOperation('opWithPayload', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_ByteSeq, false, 0]], [], nil, [])
        TestIntfPrx_mixin::OP_opWithResult = ::Ice::__defineOperation('opWithResult', ::Ice::OperationMode::Normal, false, nil, [], [], [::Ice::T_int, false, 0], [])
        TestIntfPrx_mixin::OP_opWithUE = ::Ice::__defineOperation('opWithUE', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [::Test::T_TestIntfException])
        TestIntfPrx_mixin::OP_opWithResultAndUE = ::Ice::__defineOperation('opWithResultAndUE', ::Ice::OperationMode::Normal, false, nil, [], [], [::Ice::T_int, false, 0], [::Test::T_TestIntfException])
        TestIntfPrx_mixin::OP_opBatch = ::Ice::__defineOperation('opBatch', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_opWithArgs = ::Ice::__defineOperation('opWithArgs', ::Ice::OperationMode::Normal, false, nil, [], [[::Ice::T_int, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], nil, [])
        TestIntfPrx_mixin::OP_opBatchCount = ::Ice::__defineOperation('opBatchCount', ::Ice::OperationMode::Normal, false, nil, [], [], [::Ice::T_int, false, 0], [])
        TestIntfPrx_mixin::OP_waitForBatch = ::Ice::__defineOperation('waitForBatch', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0]], [], [::Ice::T_bool, false, 0], [])
        TestIntfPrx_mixin::OP_close = ::Ice::__defineOperation('close', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_CloseMode, false, 0]], [], nil, [])
        TestIntfPrx_mixin::OP_sleep = ::Ice::__defineOperation('sleep', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0]], [], nil, [])
        TestIntfPrx_mixin::OP_startDispatch = ::Ice::__defineOperation('startDispatch', ::Ice::OperationMode::Normal, true, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_finishDispatch = ::Ice::__defineOperation('finishDispatch', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_supportsAMD = ::Ice::__defineOperation('supportsAMD', ::Ice::OperationMode::Normal, false, nil, [], [], [::Ice::T_bool, false, 0], [])
        TestIntfPrx_mixin::OP_supportsFunctionalTests = ::Ice::__defineOperation('supportsFunctionalTests', ::Ice::OperationMode::Normal, false, nil, [], [], [::Ice::T_bool, false, 0], [])
        TestIntfPrx_mixin::OP_pingBiDir = ::Ice::__defineOperation('pingBiDir', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_PingReplyPrx, false, 0]], [], nil, [])
    end

    if not defined?(::Test::TestIntfController_Mixin)

        module ::Test::TestIntfController_Mixin
        end
        module TestIntfControllerPrx_mixin

            def holdAdapter(context=nil)
                TestIntfControllerPrx_mixin::OP_holdAdapter.invoke(self, [], context)
            end

            def resumeAdapter(context=nil)
                TestIntfControllerPrx_mixin::OP_resumeAdapter.invoke(self, [], context)
            end
        end

        class TestIntfControllerPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include TestIntfControllerPrx_mixin
        end

        if not defined?(::Test::T_TestIntfControllerPrx)
            T_TestIntfController = ::Ice::__declareClass('::Test::TestIntfController')
            T_TestIntfControllerPrx = ::Ice::__declareProxy('::Test::TestIntfController')
        end

        T_TestIntfControllerPrx.defineProxy(TestIntfControllerPrx, nil, [])

        TestIntfControllerPrx_mixin::OP_holdAdapter = ::Ice::__defineOperation('holdAdapter', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfControllerPrx_mixin::OP_resumeAdapter = ::Ice::__defineOperation('resumeAdapter', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end

    module Outer

        module Inner

            if not defined?(::Test::Outer::Inner::TestIntf_Mixin)

                module ::Test::Outer::Inner::TestIntf_Mixin
                end
                module TestIntfPrx_mixin

                    def op(i, context=nil)
                        TestIntfPrx_mixin::OP_op.invoke(self, [i], context)
                    end
                end

                class TestIntfPrx < ::Ice::ObjectPrx
                    include ::Ice::Proxy_mixin
                    include TestIntfPrx_mixin
                end

                if not defined?(::Test::Outer::Inner::T_TestIntfPrx)
                    T_TestIntf = ::Ice::__declareClass('::Test::Outer::Inner::TestIntf')
                    T_TestIntfPrx = ::Ice::__declareProxy('::Test::Outer::Inner::TestIntf')
                end

                T_TestIntfPrx.defineProxy(TestIntfPrx, nil, [])

                TestIntfPrx_mixin::OP_op = ::Ice::__defineOperation('op', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0]], [[::Ice::T_int, false, 0]], [::Ice::T_int, false, 0], [])
            end
        end
    end
end
