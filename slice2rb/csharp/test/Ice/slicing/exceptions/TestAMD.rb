# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `TestAMD.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'

module ::Test

    if not defined?(::Test::Base)
        class Base < Ice::UserException
            def initialize(b='')
                @b = b
            end

            def to_s
                '::Test::Base'
            end

            attr_accessor :b
        end

        T_Base = ::Ice::__defineException('::Test::Base', Base, false, nil, [["b", ::Ice::T_string, false, 0]])
    end

    if not defined?(::Test::KnownDerived)
        class KnownDerived < ::Test::Base
            def initialize(b='', kd='')
                super(b)
                @kd = kd
            end

            def to_s
                '::Test::KnownDerived'
            end

            attr_accessor :kd
        end

        T_KnownDerived = ::Ice::__defineException('::Test::KnownDerived', KnownDerived, false, ::Test::T_Base, [["kd", ::Ice::T_string, false, 0]])
    end

    if not defined?(::Test::KnownIntermediate)
        class KnownIntermediate < ::Test::Base
            def initialize(b='', ki='')
                super(b)
                @ki = ki
            end

            def to_s
                '::Test::KnownIntermediate'
            end

            attr_accessor :ki
        end

        T_KnownIntermediate = ::Ice::__defineException('::Test::KnownIntermediate', KnownIntermediate, false, ::Test::T_Base, [["ki", ::Ice::T_string, false, 0]])
    end

    if not defined?(::Test::KnownMostDerived)
        class KnownMostDerived < ::Test::KnownIntermediate
            def initialize(b='', ki='', kmd='')
                super(b, ki)
                @kmd = kmd
            end

            def to_s
                '::Test::KnownMostDerived'
            end

            attr_accessor :kmd
        end

        T_KnownMostDerived = ::Ice::__defineException('::Test::KnownMostDerived', KnownMostDerived, false, ::Test::T_KnownIntermediate, [["kmd", ::Ice::T_string, false, 0]])
    end

    if not defined?(::Test::KnownPreserved)
        class KnownPreserved < ::Test::Base
            def initialize(b='', kp='')
                super(b)
                @kp = kp
            end

            def to_s
                '::Test::KnownPreserved'
            end

            attr_accessor :kp
        end

        T_KnownPreserved = ::Ice::__defineException('::Test::KnownPreserved', KnownPreserved, true, ::Test::T_Base, [["kp", ::Ice::T_string, false, 0]])
    end

    if not defined?(::Test::KnownPreservedDerived)
        class KnownPreservedDerived < ::Test::KnownPreserved
            def initialize(b='', kp='', kpd='')
                super(b, kp)
                @kpd = kpd
            end

            def to_s
                '::Test::KnownPreservedDerived'
            end

            attr_accessor :kpd
        end

        T_KnownPreservedDerived = ::Ice::__defineException('::Test::KnownPreservedDerived', KnownPreservedDerived, true, ::Test::T_KnownPreserved, [["kpd", ::Ice::T_string, false, 0]])
    end

    if not defined?(::Test::BaseClass_Mixin)

        module ::Test::BaseClass_Mixin
        end
        class BaseClass < ::Ice::Value

            def initialize(bc='')
                @bc = bc
            end

            attr_accessor :bc
        end

        if not defined?(::Test::T_BaseClass)
            T_BaseClass = ::Ice::__declareClass('::Test::BaseClass')
        end

        T_BaseClass.defineClass(BaseClass, -1, true, false, nil, [['bc', ::Ice::T_string, false, 0]])
    end

    if not defined?(::Test::Relay_Mixin)

        module ::Test::Relay_Mixin
        end
        module RelayPrx_mixin

            def knownPreservedAsBase(context=nil)
                RelayPrx_mixin::OP_knownPreservedAsBase.invoke(self, [], context)
            end

            def knownPreservedAsKnownPreserved(context=nil)
                RelayPrx_mixin::OP_knownPreservedAsKnownPreserved.invoke(self, [], context)
            end

            def unknownPreservedAsBase(context=nil)
                RelayPrx_mixin::OP_unknownPreservedAsBase.invoke(self, [], context)
            end

            def unknownPreservedAsKnownPreserved(context=nil)
                RelayPrx_mixin::OP_unknownPreservedAsKnownPreserved.invoke(self, [], context)
            end
        end

        class RelayPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include RelayPrx_mixin
        end

        if not defined?(::Test::T_RelayPrx)
            T_Relay = ::Ice::__declareClass('::Test::Relay')
            T_RelayPrx = ::Ice::__declareProxy('::Test::Relay')
        end

        T_Relay.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_RelayPrx.defineProxy(RelayPrx, nil, [])

        RelayPrx_mixin::OP_knownPreservedAsBase = ::Ice::__defineOperation('knownPreservedAsBase', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_Base])
        RelayPrx_mixin::OP_knownPreservedAsKnownPreserved = ::Ice::__defineOperation('knownPreservedAsKnownPreserved', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_KnownPreserved])
        RelayPrx_mixin::OP_unknownPreservedAsBase = ::Ice::__defineOperation('unknownPreservedAsBase', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_Base])
        RelayPrx_mixin::OP_unknownPreservedAsKnownPreserved = ::Ice::__defineOperation('unknownPreservedAsKnownPreserved', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_KnownPreserved])
    end

    if not defined?(::Test::TestIntf_Mixin)

        module ::Test::TestIntf_Mixin
        end
        module TestIntfPrx_mixin

            def baseAsBase(context=nil)
                TestIntfPrx_mixin::OP_baseAsBase.invoke(self, [], context)
            end

            def unknownDerivedAsBase(context=nil)
                TestIntfPrx_mixin::OP_unknownDerivedAsBase.invoke(self, [], context)
            end

            def knownDerivedAsBase(context=nil)
                TestIntfPrx_mixin::OP_knownDerivedAsBase.invoke(self, [], context)
            end

            def knownDerivedAsKnownDerived(context=nil)
                TestIntfPrx_mixin::OP_knownDerivedAsKnownDerived.invoke(self, [], context)
            end

            def unknownIntermediateAsBase(context=nil)
                TestIntfPrx_mixin::OP_unknownIntermediateAsBase.invoke(self, [], context)
            end

            def knownIntermediateAsBase(context=nil)
                TestIntfPrx_mixin::OP_knownIntermediateAsBase.invoke(self, [], context)
            end

            def knownMostDerivedAsBase(context=nil)
                TestIntfPrx_mixin::OP_knownMostDerivedAsBase.invoke(self, [], context)
            end

            def knownIntermediateAsKnownIntermediate(context=nil)
                TestIntfPrx_mixin::OP_knownIntermediateAsKnownIntermediate.invoke(self, [], context)
            end

            def knownMostDerivedAsKnownIntermediate(context=nil)
                TestIntfPrx_mixin::OP_knownMostDerivedAsKnownIntermediate.invoke(self, [], context)
            end

            def knownMostDerivedAsKnownMostDerived(context=nil)
                TestIntfPrx_mixin::OP_knownMostDerivedAsKnownMostDerived.invoke(self, [], context)
            end

            def unknownMostDerived1AsBase(context=nil)
                TestIntfPrx_mixin::OP_unknownMostDerived1AsBase.invoke(self, [], context)
            end

            def unknownMostDerived1AsKnownIntermediate(context=nil)
                TestIntfPrx_mixin::OP_unknownMostDerived1AsKnownIntermediate.invoke(self, [], context)
            end

            def unknownMostDerived2AsBase(context=nil)
                TestIntfPrx_mixin::OP_unknownMostDerived2AsBase.invoke(self, [], context)
            end

            def unknownMostDerived2AsBaseCompact(context=nil)
                TestIntfPrx_mixin::OP_unknownMostDerived2AsBaseCompact.invoke(self, [], context)
            end

            def knownPreservedAsBase(context=nil)
                TestIntfPrx_mixin::OP_knownPreservedAsBase.invoke(self, [], context)
            end

            def knownPreservedAsKnownPreserved(context=nil)
                TestIntfPrx_mixin::OP_knownPreservedAsKnownPreserved.invoke(self, [], context)
            end

            def relayKnownPreservedAsBase(r, context=nil)
                TestIntfPrx_mixin::OP_relayKnownPreservedAsBase.invoke(self, [r], context)
            end

            def relayKnownPreservedAsKnownPreserved(r, context=nil)
                TestIntfPrx_mixin::OP_relayKnownPreservedAsKnownPreserved.invoke(self, [r], context)
            end

            def unknownPreservedAsBase(context=nil)
                TestIntfPrx_mixin::OP_unknownPreservedAsBase.invoke(self, [], context)
            end

            def unknownPreservedAsKnownPreserved(context=nil)
                TestIntfPrx_mixin::OP_unknownPreservedAsKnownPreserved.invoke(self, [], context)
            end

            def relayUnknownPreservedAsBase(r, context=nil)
                TestIntfPrx_mixin::OP_relayUnknownPreservedAsBase.invoke(self, [r], context)
            end

            def relayUnknownPreservedAsKnownPreserved(r, context=nil)
                TestIntfPrx_mixin::OP_relayUnknownPreservedAsKnownPreserved.invoke(self, [r], context)
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

        TestIntfPrx_mixin::OP_baseAsBase = ::Ice::__defineOperation('baseAsBase', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_Base])
        TestIntfPrx_mixin::OP_unknownDerivedAsBase = ::Ice::__defineOperation('unknownDerivedAsBase', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_Base])
        TestIntfPrx_mixin::OP_knownDerivedAsBase = ::Ice::__defineOperation('knownDerivedAsBase', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_Base])
        TestIntfPrx_mixin::OP_knownDerivedAsKnownDerived = ::Ice::__defineOperation('knownDerivedAsKnownDerived', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_KnownDerived])
        TestIntfPrx_mixin::OP_unknownIntermediateAsBase = ::Ice::__defineOperation('unknownIntermediateAsBase', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_Base])
        TestIntfPrx_mixin::OP_knownIntermediateAsBase = ::Ice::__defineOperation('knownIntermediateAsBase', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_Base])
        TestIntfPrx_mixin::OP_knownMostDerivedAsBase = ::Ice::__defineOperation('knownMostDerivedAsBase', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_Base])
        TestIntfPrx_mixin::OP_knownIntermediateAsKnownIntermediate = ::Ice::__defineOperation('knownIntermediateAsKnownIntermediate', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_KnownIntermediate])
        TestIntfPrx_mixin::OP_knownMostDerivedAsKnownIntermediate = ::Ice::__defineOperation('knownMostDerivedAsKnownIntermediate', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_KnownIntermediate])
        TestIntfPrx_mixin::OP_knownMostDerivedAsKnownMostDerived = ::Ice::__defineOperation('knownMostDerivedAsKnownMostDerived', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_KnownMostDerived])
        TestIntfPrx_mixin::OP_unknownMostDerived1AsBase = ::Ice::__defineOperation('unknownMostDerived1AsBase', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_Base])
        TestIntfPrx_mixin::OP_unknownMostDerived1AsKnownIntermediate = ::Ice::__defineOperation('unknownMostDerived1AsKnownIntermediate', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_KnownIntermediate])
        TestIntfPrx_mixin::OP_unknownMostDerived2AsBase = ::Ice::__defineOperation('unknownMostDerived2AsBase', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_Base])
        TestIntfPrx_mixin::OP_unknownMostDerived2AsBaseCompact = ::Ice::__defineOperation('unknownMostDerived2AsBaseCompact', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::CompactFormat, [], [], nil, [::Test::T_Base])
        TestIntfPrx_mixin::OP_knownPreservedAsBase = ::Ice::__defineOperation('knownPreservedAsBase', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_Base])
        TestIntfPrx_mixin::OP_knownPreservedAsKnownPreserved = ::Ice::__defineOperation('knownPreservedAsKnownPreserved', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_KnownPreserved])
        TestIntfPrx_mixin::OP_relayKnownPreservedAsBase = ::Ice::__defineOperation('relayKnownPreservedAsBase', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [[::Test::T_RelayPrx, false, 0]], [], nil, [::Test::T_Base])
        TestIntfPrx_mixin::OP_relayKnownPreservedAsKnownPreserved = ::Ice::__defineOperation('relayKnownPreservedAsKnownPreserved', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [[::Test::T_RelayPrx, false, 0]], [], nil, [::Test::T_KnownPreserved])
        TestIntfPrx_mixin::OP_unknownPreservedAsBase = ::Ice::__defineOperation('unknownPreservedAsBase', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_Base])
        TestIntfPrx_mixin::OP_unknownPreservedAsKnownPreserved = ::Ice::__defineOperation('unknownPreservedAsKnownPreserved', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [::Test::T_KnownPreserved])
        TestIntfPrx_mixin::OP_relayUnknownPreservedAsBase = ::Ice::__defineOperation('relayUnknownPreservedAsBase', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [[::Test::T_RelayPrx, false, 0]], [], nil, [::Test::T_Base])
        TestIntfPrx_mixin::OP_relayUnknownPreservedAsKnownPreserved = ::Ice::__defineOperation('relayUnknownPreservedAsKnownPreserved', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [[::Test::T_RelayPrx, false, 0]], [], nil, [::Test::T_KnownPreserved])
        TestIntfPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, ::Ice::FormatType::SlicedFormat, [], [], nil, [])
    end
end
