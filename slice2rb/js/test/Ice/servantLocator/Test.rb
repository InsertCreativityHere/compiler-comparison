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

    if not defined?(::Test::TestIntfUserException)
        class TestIntfUserException < Ice::UserException
            def to_s
                '::Test::TestIntfUserException'
            end
        end

        T_TestIntfUserException = ::Ice::__defineException('::Test::TestIntfUserException', TestIntfUserException, nil, [])
    end

    if not defined?(::Test::TestImpossibleException)
        class TestImpossibleException < Ice::UserException
            def to_s
                '::Test::TestImpossibleException'
            end
        end

        T_TestImpossibleException = ::Ice::__defineException('::Test::TestImpossibleException', TestImpossibleException, nil, [])
    end

    if not defined?(::Test::TestIntf_Mixin)

        module ::Test::TestIntf_Mixin
        end
        module TestIntfPrx_mixin

            def requestFailedException(context=nil)
                TestIntfPrx_mixin::OP_requestFailedException.invoke(self, [], context)
            end

            def unknownUserException(context=nil)
                TestIntfPrx_mixin::OP_unknownUserException.invoke(self, [], context)
            end

            def unknownLocalException(context=nil)
                TestIntfPrx_mixin::OP_unknownLocalException.invoke(self, [], context)
            end

            def unknownException(context=nil)
                TestIntfPrx_mixin::OP_unknownException.invoke(self, [], context)
            end

            def localException(context=nil)
                TestIntfPrx_mixin::OP_localException.invoke(self, [], context)
            end

            def userException(context=nil)
                TestIntfPrx_mixin::OP_userException.invoke(self, [], context)
            end

            def jsException(context=nil)
                TestIntfPrx_mixin::OP_jsException.invoke(self, [], context)
            end

            def unknownExceptionWithServantException(context=nil)
                TestIntfPrx_mixin::OP_unknownExceptionWithServantException.invoke(self, [], context)
            end

            def impossibleException(throw, context=nil)
                TestIntfPrx_mixin::OP_impossibleException.invoke(self, [throw], context)
            end

            def intfUserException(throw, context=nil)
                TestIntfPrx_mixin::OP_intfUserException.invoke(self, [throw], context)
            end

            def asyncResponse(context=nil)
                TestIntfPrx_mixin::OP_asyncResponse.invoke(self, [], context)
            end

            def asyncException(context=nil)
                TestIntfPrx_mixin::OP_asyncException.invoke(self, [], context)
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

        T_TestIntfPrx.defineProxy(TestIntfPrx, nil, [])

        TestIntfPrx_mixin::OP_requestFailedException = ::Ice::__defineOperation('requestFailedException', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_unknownUserException = ::Ice::__defineOperation('unknownUserException', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_unknownLocalException = ::Ice::__defineOperation('unknownLocalException', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_unknownException = ::Ice::__defineOperation('unknownException', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_localException = ::Ice::__defineOperation('localException', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_userException = ::Ice::__defineOperation('userException', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_jsException = ::Ice::__defineOperation('jsException', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_unknownExceptionWithServantException = ::Ice::__defineOperation('unknownExceptionWithServantException', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        TestIntfPrx_mixin::OP_impossibleException = ::Ice::__defineOperation('impossibleException', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_bool, false, 0]], [], [::Ice::T_string, false, 0], [::Test::T_TestImpossibleException])
        TestIntfPrx_mixin::OP_intfUserException = ::Ice::__defineOperation('intfUserException', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_bool, false, 0]], [], [::Ice::T_string, false, 0], [::Test::T_TestIntfUserException, ::Test::T_TestImpossibleException])
        TestIntfPrx_mixin::OP_asyncResponse = ::Ice::__defineOperation('asyncResponse', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [::Test::T_TestIntfUserException, ::Test::T_TestImpossibleException])
        TestIntfPrx_mixin::OP_asyncException = ::Ice::__defineOperation('asyncException', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [::Test::T_TestIntfUserException, ::Test::T_TestImpossibleException])
        TestIntfPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end

    if not defined?(::Test::TestActivation_Mixin)

        module ::Test::TestActivation_Mixin
        end
        module TestActivationPrx_mixin

            def activateServantLocator(activate, context=nil)
                TestActivationPrx_mixin::OP_activateServantLocator.invoke(self, [activate], context)
            end
        end

        class TestActivationPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include TestActivationPrx_mixin
        end

        if not defined?(::Test::T_TestActivationPrx)
            T_TestActivation = ::Ice::__declareClass('::Test::TestActivation')
            T_TestActivationPrx = ::Ice::__declareProxy('::Test::TestActivation')
        end

        T_TestActivationPrx.defineProxy(TestActivationPrx, nil, [])

        TestActivationPrx_mixin::OP_activateServantLocator = ::Ice::__defineOperation('activateServantLocator', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_bool, false, 0]], [], nil, [])
    end

    if not defined?(::Test::Echo_Mixin)

        module ::Test::Echo_Mixin
        end
        module EchoPrx_mixin

            def setConnection(context=nil)
                EchoPrx_mixin::OP_setConnection.invoke(self, [], context)
            end

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

        EchoPrx_mixin::OP_setConnection = ::Ice::__defineOperation('setConnection', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        EchoPrx_mixin::OP_startBatch = ::Ice::__defineOperation('startBatch', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        EchoPrx_mixin::OP_flushBatch = ::Ice::__defineOperation('flushBatch', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        EchoPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end
