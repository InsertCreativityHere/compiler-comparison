# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `Controller.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'

module ::Test

    module Common

        if not defined?(::Test::Common::T_BoolSeq)
            T_BoolSeq = ::Ice::__defineSequence('::Test::Common::BoolSeq', ::Ice::T_bool)
        end

        if not defined?(::Test::Common::T_StringSeq)
            T_StringSeq = ::Ice::__defineSequence('::Test::Common::StringSeq', ::Ice::T_string)
        end

        if not defined?(::Test::Common::Config_Mixin)

            module ::Test::Common::Config_Mixin
            end
            class Config < ::Ice::Value

                def initialize(protocol=::Ice::Unset, mx=::Ice::Unset, serialize=::Ice::Unset, compress=::Ice::Unset, ipv6=::Ice::Unset, cprops=::Ice::Unset, sprops=::Ice::Unset)
                    @protocol = protocol
                    @mx = mx
                    @serialize = serialize
                    @compress = compress
                    @ipv6 = ipv6
                    @cprops = cprops
                    @sprops = sprops
                end

                attr_accessor :protocol, :mx, :serialize, :compress, :ipv6, :cprops, :sprops
            end

            if not defined?(::Test::Common::T_Config)
                T_Config = ::Ice::__declareClass('::Test::Common::Config')
            end

            T_Config.defineClass(Config, -1, false, false, nil, [
                ['protocol', ::Ice::T_string, true, 1],
                ['mx', ::Ice::T_bool, true, 2],
                ['serialize', ::Ice::T_bool, true, 3],
                ['compress', ::Ice::T_bool, true, 4],
                ['ipv6', ::Ice::T_bool, true, 5],
                ['cprops', ::Test::Common::T_StringSeq, true, 6],
                ['sprops', ::Test::Common::T_StringSeq, true, 7]
            ])
        end

        if not defined?(::Test::Common::OptionOverrides_Mixin)

            module ::Test::Common::OptionOverrides_Mixin
            end
            class OptionOverrides < ::Ice::Value

                def initialize(protocol=::Ice::Unset, mx=::Ice::Unset, serialize=::Ice::Unset, compress=::Ice::Unset, ipv6=::Ice::Unset)
                    @protocol = protocol
                    @mx = mx
                    @serialize = serialize
                    @compress = compress
                    @ipv6 = ipv6
                end

                attr_accessor :protocol, :mx, :serialize, :compress, :ipv6
            end

            if not defined?(::Test::Common::T_OptionOverrides)
                T_OptionOverrides = ::Ice::__declareClass('::Test::Common::OptionOverrides')
            end

            T_OptionOverrides.defineClass(OptionOverrides, -1, false, false, nil, [
                ['protocol', ::Test::Common::T_StringSeq, true, 1],
                ['mx', ::Test::Common::T_BoolSeq, true, 2],
                ['serialize', ::Test::Common::T_BoolSeq, true, 3],
                ['compress', ::Test::Common::T_BoolSeq, true, 4],
                ['ipv6', ::Test::Common::T_BoolSeq, true, 5]
            ])
        end

        if not defined?(::Test::Common::TestCaseNotExistException)
            class TestCaseNotExistException < Ice::UserException
                def initialize(reason='')
                    @reason = reason
                end

                def to_s
                    '::Test::Common::TestCaseNotExistException'
                end

                attr_accessor :reason
            end

            T_TestCaseNotExistException = ::Ice::__defineException('::Test::Common::TestCaseNotExistException', TestCaseNotExistException, false, nil, [["reason", ::Ice::T_string, false, 0]])
        end

        if not defined?(::Test::Common::TestCaseFailedException)
            class TestCaseFailedException < Ice::UserException
                def initialize(output='')
                    @output = output
                end

                def to_s
                    '::Test::Common::TestCaseFailedException'
                end

                attr_accessor :output
            end

            T_TestCaseFailedException = ::Ice::__defineException('::Test::Common::TestCaseFailedException', TestCaseFailedException, false, nil, [["output", ::Ice::T_string, false, 0]])
        end

        if not defined?(::Test::Common::TestCase_Mixin)

            module ::Test::Common::TestCase_Mixin
            end
            module TestCasePrx_mixin

                def startServerSide(config, context=nil)
                    TestCasePrx_mixin::OP_startServerSide.invoke(self, [config], context)
                end

                def stopServerSide(success, context=nil)
                    TestCasePrx_mixin::OP_stopServerSide.invoke(self, [success], context)
                end

                def runClientSide(host, config, context=nil)
                    TestCasePrx_mixin::OP_runClientSide.invoke(self, [host, config], context)
                end

                def destroy(context=nil)
                    TestCasePrx_mixin::OP_destroy.invoke(self, [], context)
                end
            end

            class TestCasePrx < ::Ice::ObjectPrx
                include ::Ice::Proxy_mixin
                include TestCasePrx_mixin
            end

            if not defined?(::Test::Common::T_TestCasePrx)
                T_TestCase = ::Ice::__declareClass('::Test::Common::TestCase')
                T_TestCasePrx = ::Ice::__declareProxy('::Test::Common::TestCase')
            end

            T_TestCase.defineClass(::Ice::Value, -1, false, true, nil, [])

            T_TestCasePrx.defineProxy(TestCasePrx, nil, [])

            TestCasePrx_mixin::OP_startServerSide = ::Ice::__defineOperation('startServerSide', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::Common::T_Config, false, 0]], [], [::Ice::T_string, false, 0], [::Test::Common::T_TestCaseFailedException])
            TestCasePrx_mixin::OP_stopServerSide = ::Ice::__defineOperation('stopServerSide', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_bool, false, 0]], [], [::Ice::T_string, false, 0], [::Test::Common::T_TestCaseFailedException])
            TestCasePrx_mixin::OP_runClientSide = ::Ice::__defineOperation('runClientSide', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0], [::Test::Common::T_Config, false, 0]], [], [::Ice::T_string, false, 0], [::Test::Common::T_TestCaseFailedException])
            TestCasePrx_mixin::OP_destroy = ::Ice::__defineOperation('destroy', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        end

        if not defined?(::Test::Common::Controller_Mixin)

            module ::Test::Common::Controller_Mixin
            end
            module ControllerPrx_mixin

                def runTestCase(mapping, testsuite, testcase, cross, context=nil)
                    ControllerPrx_mixin::OP_runTestCase.invoke(self, [mapping, testsuite, testcase, cross], context)
                end

                def getOptionOverrides(context=nil)
                    ControllerPrx_mixin::OP_getOptionOverrides.invoke(self, [], context)
                end

                def getTestSuites(mapping, context=nil)
                    ControllerPrx_mixin::OP_getTestSuites.invoke(self, [mapping], context)
                end

                def getHost(protocol, ipv6, context=nil)
                    ControllerPrx_mixin::OP_getHost.invoke(self, [protocol, ipv6], context)
                end
            end

            class ControllerPrx < ::Ice::ObjectPrx
                include ::Ice::Proxy_mixin
                include ControllerPrx_mixin
            end

            if not defined?(::Test::Common::T_ControllerPrx)
                T_Controller = ::Ice::__declareClass('::Test::Common::Controller')
                T_ControllerPrx = ::Ice::__declareProxy('::Test::Common::Controller')
            end

            T_Controller.defineClass(::Ice::Value, -1, false, true, nil, [])

            T_ControllerPrx.defineProxy(ControllerPrx, nil, [])

            ControllerPrx_mixin::OP_runTestCase = ::Ice::__defineOperation('runTestCase', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0], [::Ice::T_string, false, 0], [::Ice::T_string, false, 0], [::Ice::T_string, false, 0]], [], [::Test::Common::T_TestCasePrx, false, 0], [::Test::Common::T_TestCaseNotExistException])
            ControllerPrx_mixin::OP_getOptionOverrides = ::Ice::__defineOperation('getOptionOverrides', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::Common::T_OptionOverrides, false, 0], [])
            ControllerPrx_mixin::OP_getTestSuites = ::Ice::__defineOperation('getTestSuites', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0]], [], [::Test::Common::T_StringSeq, false, 0], [])
            ControllerPrx_mixin::OP_getHost = ::Ice::__defineOperation('getHost', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0], [::Ice::T_bool, false, 0]], [], [::Ice::T_string, false, 0], [])
        end

        if not defined?(::Test::Common::ProcessFailedException)
            class ProcessFailedException < Ice::UserException
                def initialize(reason='')
                    @reason = reason
                end

                def to_s
                    '::Test::Common::ProcessFailedException'
                end

                attr_accessor :reason
            end

            T_ProcessFailedException = ::Ice::__defineException('::Test::Common::ProcessFailedException', ProcessFailedException, false, nil, [["reason", ::Ice::T_string, false, 0]])
        end

        if not defined?(::Test::Common::Process_Mixin)

            module ::Test::Common::Process_Mixin
            end
            module ProcessPrx_mixin

                def waitReady(timeout, context=nil)
                    ProcessPrx_mixin::OP_waitReady.invoke(self, [timeout], context)
                end

                def waitSuccess(timeout, context=nil)
                    ProcessPrx_mixin::OP_waitSuccess.invoke(self, [timeout], context)
                end

                def terminate(context=nil)
                    ProcessPrx_mixin::OP_terminate.invoke(self, [], context)
                end
            end

            class ProcessPrx < ::Ice::ObjectPrx
                include ::Ice::Proxy_mixin
                include ProcessPrx_mixin
            end

            if not defined?(::Test::Common::T_ProcessPrx)
                T_Process = ::Ice::__declareClass('::Test::Common::Process')
                T_ProcessPrx = ::Ice::__declareProxy('::Test::Common::Process')
            end

            T_Process.defineClass(::Ice::Value, -1, false, true, nil, [])

            T_ProcessPrx.defineProxy(ProcessPrx, nil, [])

            ProcessPrx_mixin::OP_waitReady = ::Ice::__defineOperation('waitReady', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0]], [], nil, [::Test::Common::T_ProcessFailedException])
            ProcessPrx_mixin::OP_waitSuccess = ::Ice::__defineOperation('waitSuccess', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0]], [], [::Ice::T_int, false, 0], [::Test::Common::T_ProcessFailedException])
            ProcessPrx_mixin::OP_terminate = ::Ice::__defineOperation('terminate', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Ice::T_string, false, 0], [])
        end

        if not defined?(::Test::Common::ProcessController_Mixin)

            module ::Test::Common::ProcessController_Mixin
            end
            module ProcessControllerPrx_mixin

                def start(testsuite, exe, args, context=nil)
                    ProcessControllerPrx_mixin::OP_start.invoke(self, [testsuite, exe, args], context)
                end

                def getHost(protocol, ipv6, context=nil)
                    ProcessControllerPrx_mixin::OP_getHost.invoke(self, [protocol, ipv6], context)
                end
            end

            class ProcessControllerPrx < ::Ice::ObjectPrx
                include ::Ice::Proxy_mixin
                include ProcessControllerPrx_mixin
            end

            if not defined?(::Test::Common::T_ProcessControllerPrx)
                T_ProcessController = ::Ice::__declareClass('::Test::Common::ProcessController')
                T_ProcessControllerPrx = ::Ice::__declareProxy('::Test::Common::ProcessController')
            end

            T_ProcessController.defineClass(::Ice::Value, -1, false, true, nil, [])

            T_ProcessControllerPrx.defineProxy(ProcessControllerPrx, nil, [])

            ProcessControllerPrx_mixin::OP_start = ::Ice::__defineOperation('start', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0], [::Ice::T_string, false, 0], [::Test::Common::T_StringSeq, false, 0]], [], [::Test::Common::T_ProcessPrx, false, 0], [::Test::Common::T_ProcessFailedException])
            ProcessControllerPrx_mixin::OP_getHost = ::Ice::__defineOperation('getHost', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0], [::Ice::T_bool, false, 0]], [], [::Ice::T_string, false, 0], [])
        end

        if not defined?(::Test::Common::BrowserProcessController_Mixin)

            module ::Test::Common::BrowserProcessController_Mixin
            end
            module BrowserProcessControllerPrx_mixin
                include ::Test::Common::ProcessControllerPrx_mixin

                def redirect(url, context=nil)
                    BrowserProcessControllerPrx_mixin::OP_redirect.invoke(self, [url], context)
                end
            end

            class BrowserProcessControllerPrx < ::Ice::ObjectPrx
                include ::Ice::Proxy_mixin
                include BrowserProcessControllerPrx_mixin
            end

            if not defined?(::Test::Common::T_BrowserProcessControllerPrx)
                T_BrowserProcessController = ::Ice::__declareClass('::Test::Common::BrowserProcessController')
                T_BrowserProcessControllerPrx = ::Ice::__declareProxy('::Test::Common::BrowserProcessController')
            end

            T_BrowserProcessController.defineClass(::Ice::Value, -1, false, true, nil, [])

            T_BrowserProcessControllerPrx.defineProxy(BrowserProcessControllerPrx, nil, [::Test::Common::T_ProcessControllerPrx])

            BrowserProcessControllerPrx_mixin::OP_redirect = ::Ice::__defineOperation('redirect', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0]], [], nil, [])
        end

        if not defined?(::Test::Common::ProcessControllerRegistry_Mixin)

            module ::Test::Common::ProcessControllerRegistry_Mixin
            end
            module ProcessControllerRegistryPrx_mixin

                def setProcessController(controller, context=nil)
                    ProcessControllerRegistryPrx_mixin::OP_setProcessController.invoke(self, [controller], context)
                end
            end

            class ProcessControllerRegistryPrx < ::Ice::ObjectPrx
                include ::Ice::Proxy_mixin
                include ProcessControllerRegistryPrx_mixin
            end

            if not defined?(::Test::Common::T_ProcessControllerRegistryPrx)
                T_ProcessControllerRegistry = ::Ice::__declareClass('::Test::Common::ProcessControllerRegistry')
                T_ProcessControllerRegistryPrx = ::Ice::__declareProxy('::Test::Common::ProcessControllerRegistry')
            end

            T_ProcessControllerRegistry.defineClass(::Ice::Value, -1, false, true, nil, [])

            T_ProcessControllerRegistryPrx.defineProxy(ProcessControllerRegistryPrx, nil, [])

            ProcessControllerRegistryPrx_mixin::OP_setProcessController = ::Ice::__defineOperation('setProcessController', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::Common::T_ProcessControllerPrx, false, 0]], [], nil, [])
        end
    end
end
