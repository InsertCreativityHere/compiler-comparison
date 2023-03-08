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
require 'Ice/Identity.rb'

module ::Test

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

        T_PingReply.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_PingReplyPrx.defineProxy(PingReplyPrx, nil, [])

        PingReplyPrx_mixin::OP_reply = ::Ice::__defineOperation('reply', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end

    if not defined?(::Test::T_ByteSeq)
        T_ByteSeq = ::Ice::__defineSequence('::Test::ByteSeq', ::Ice::T_byte)
    end

    if not defined?(::Test::TestIntf_Mixin)

        module ::Test::TestIntf_Mixin
        end
        module TestIntfPrx_mixin

            def ping(reply, context=nil)
                TestIntfPrx_mixin::OP_ping.invoke(self, [reply], context)
            end

            def sendByteSeq(seq, reply, context=nil)
                TestIntfPrx_mixin::OP_sendByteSeq.invoke(self, [seq, reply], context)
            end

            def pingBiDir(id, context=nil)
                TestIntfPrx_mixin::OP_pingBiDir.invoke(self, [id], context)
            end

            def shutdown(context=nil)
                TestIntfPrx_mixin::OP_shutdown.invoke(self, [], context)
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

        TestIntfPrx_mixin::OP_ping = ::Ice::__defineOperation('ping', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::T_PingReplyPrx, false, 0]], [], nil, [])
        TestIntfPrx_mixin::OP_sendByteSeq = ::Ice::__defineOperation('sendByteSeq', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::T_ByteSeq, false, 0], [::Test::T_PingReplyPrx, false, 0]], [], nil, [])
        TestIntfPrx_mixin::OP_pingBiDir = ::Ice::__defineOperation('pingBiDir', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_Identity, false, 0]], [], nil, [])
        TestIntfPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end
