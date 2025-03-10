# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'Key.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

require 'Ice'

module ::Cs_abstract
    if not defined?(::Cs_abstract::As)
        class As
            include Comparable

            def initialize(name, value)
                @name = name
                @value = value
            end

            def As.from_int(val)
                @@_enumerators[val]
            end

            def to_s
                @name
            end

            def to_i
                @value
            end

            def <=>(other)
                other.is_a?(As) or raise ArgumentError, "value must be a As"
                @value <=> other.to_i
            end

            def hash
                @value.hash
            end

            def As.each(&block)
                @@_enumerators.each_value(&block)
            end

            Base = As.new("base", 0)

            @@_enumerators = {0=>Base}

            def As._enumerators
                @@_enumerators
            end

            private_class_method :new
        end

        T_As = Ice::__defineEnum('::cs_abstract::as', As, As::_enumerators)
    end

    if not defined?(::Cs_abstract::Break)
        class Break
            include Ice::Inspect_mixin
            def initialize(readonly=0)
                @readonly = readonly
            end

            def hash
                _h = 0
                _h = 5 * _h + @readonly.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Cs_abstract::Break or
                    @readonly != other.readonly
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :readonly
        end

        T_Break = Ice::__defineStruct('::cs_abstract::break', Break, [["readonly", Ice::T_int]])
    end

    if not defined?(::Cs_abstract::Fixed)
        class Fixed < Ice::UserException
            def to_s
                '::cs_abstract::fixed'
            end

            attr_accessor :_for
        end

        T_Fixed = Ice::__defineException('::cs_abstract::fixed', Fixed, nil, [["_for", Ice::T_int, false, 0]])
    end

    if not defined?(::Cs_abstract::Foreach)
        class Foreach < ::Cs_abstract::Fixed
            def to_s
                '::cs_abstract::foreach'
            end

            attr_accessor :goto, :Message
        end

        T_Foreach = Ice::__defineException('::cs_abstract::foreach', Foreach, ::Cs_abstract::T_Fixed, [
            ["goto", Ice::T_int, false, 0],
            ["Message", Ice::T_int, false, 0]
        ])
    end

    if not defined?(::Cs_abstract::T_CasePrx)
        T_CasePrx = Ice::__declareProxy('::cs_abstract::case')
    end

    if not defined?(::Cs_abstract::CasePrx)
        module CasePrx_mixin
            def catch(checked, context=nil)
                CasePrx_mixin::OP_catch.invoke(self, [checked], context)
            end
        end

        class CasePrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include CasePrx_mixin
        end

        T_CasePrx.defineProxy(CasePrx, nil, [])

        CasePrx_mixin::OP_catch = Ice::__defineOperation('catch', Ice::OperationMode::Normal, nil, [[Ice::T_int, false, 0]], [[Ice::T_int, false, 0]], nil, [])
    end

    if not defined?(::Cs_abstract::T_DecimalPrx)
        T_DecimalPrx = Ice::__declareProxy('::cs_abstract::decimal')
    end

    if not defined?(::Cs_abstract::DecimalPrx)
        module DecimalPrx_mixin
            def default(context=nil)
                DecimalPrx_mixin::OP_default.invoke(self, [], context)
            end
        end

        class DecimalPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include DecimalPrx_mixin
        end

        T_DecimalPrx.defineProxy(DecimalPrx, nil, [])

        DecimalPrx_mixin::OP_default = Ice::__defineOperation('default', Ice::OperationMode::Normal, nil, [], [], nil, [::Cs_abstract::T_Foreach])
    end

    if not defined?(::Cs_abstract::T_Delegate)
        T_Delegate = Ice::__declareClass('::cs_abstract::delegate')
    end

    if not defined?(::Cs_abstract::Delegate)
        class Delegate < Ice::Value

            def initialize(_if=0, _else=nil)
                @_if = _if
                @_else = _else
            end

            attr_accessor :_if, :_else
        end

        T_Delegate.defineClass(Delegate, -1, false, nil, [
            ['_if', Ice::T_int, false, 0],
            ['_else', ::Cs_abstract::T_CasePrx, false, 0]
        ])
    end

    if not defined?(::Cs_abstract::T_ExplicitPrx)
        T_ExplicitPrx = Ice::__declareProxy('::cs_abstract::explicit')
    end

    if not defined?(::Cs_abstract::ExplicitPrx)
        module ExplicitPrx_mixin
            include ::Cs_abstract::DecimalPrx_mixin
            include ::Cs_abstract::CasePrx_mixin
        end

        class ExplicitPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include ExplicitPrx_mixin
        end

        T_ExplicitPrx.defineProxy(ExplicitPrx, nil, [::Cs_abstract::T_DecimalPrx, ::Cs_abstract::T_CasePrx])
    end

    if not defined?(::Cs_abstract::T_While)
        T_While = Ice::__defineDictionary('::cs_abstract::while', Ice::T_string, ::Cs_abstract::T_Break)
    end

    if not defined?(::Cs_abstract::T_OptionalMembers)
        T_OptionalMembers = Ice::__declareClass('::cs_abstract::optionalMembers')
    end

    if not defined?(::Cs_abstract::OptionalMembers)
        class OptionalMembers < Ice::Value

            def initialize(_for=Ice::Unset, goto=Ice::Unset, _if=Ice::Unset, internal=Ice::Unset, namespace=Ice::Unset)
                @_for = _for
                @goto = goto
                @_if = _if
                @internal = internal
                @namespace = namespace
            end

            attr_accessor :_for, :goto, :_if, :internal, :namespace
        end

        T_OptionalMembers.defineClass(OptionalMembers, -1, false, nil, [
            ['_for', ::Cs_abstract::T_Break, true, 1],
            ['goto', ::Cs_abstract::T_As, true, 2],
            ['_if', ::Cs_abstract::T_ExplicitPrx, true, 3],
            ['internal', ::Cs_abstract::T_While, true, 5],
            ['namespace', Ice::T_string, true, 7]
        ])
    end

    if not defined?(::Cs_abstract::T_OptionalParamsPrx)
        T_OptionalParamsPrx = Ice::__declareProxy('::cs_abstract::optionalParams')
    end

    if not defined?(::Cs_abstract::OptionalParamsPrx)
        module OptionalParamsPrx_mixin
            def _for(goto, _if, internal, context, context_=nil)
                OptionalParamsPrx_mixin::OP_for.invoke(self, [goto, _if, internal, context], context_)
            end

            def continue(goto, _if, internal, context, context_=nil)
                OptionalParamsPrx_mixin::OP_continue.invoke(self, [goto, _if, internal, context], context_)
            end

            def _in(context_=nil)
                OptionalParamsPrx_mixin::OP_in.invoke(self, [], context_)
            end

            def foreach(context_=nil)
                OptionalParamsPrx_mixin::OP_foreach.invoke(self, [], context_)
            end
        end

        class OptionalParamsPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include OptionalParamsPrx_mixin
        end

        T_OptionalParamsPrx.defineProxy(OptionalParamsPrx, nil, [])

        OptionalParamsPrx_mixin::OP_for = Ice::__defineOperation('for', Ice::OperationMode::Normal, nil, [[::Cs_abstract::T_As, true, 2], [::Cs_abstract::T_ExplicitPrx, true, 3], [::Cs_abstract::T_While, true, 5], [Ice::T_string, true, 7]], [], [::Cs_abstract::T_Break, true, 1], [])
        OptionalParamsPrx_mixin::OP_continue = Ice::__defineOperation('continue', Ice::OperationMode::Normal, nil, [[::Cs_abstract::T_As, true, 2], [::Cs_abstract::T_ExplicitPrx, true, 3], [::Cs_abstract::T_While, true, 5], [Ice::T_string, true, 7]], [], [::Cs_abstract::T_Break, true, 1], [])
        OptionalParamsPrx_mixin::OP_in = Ice::__defineOperation('in', Ice::OperationMode::Normal, nil, [], [[::Cs_abstract::T_As, true, 2], [::Cs_abstract::T_ExplicitPrx, true, 3], [::Cs_abstract::T_While, true, 5], [Ice::T_string, true, 7]], [::Cs_abstract::T_Break, true, 1], [])
        OptionalParamsPrx_mixin::OP_foreach = Ice::__defineOperation('foreach', Ice::OperationMode::Normal, nil, [], [[::Cs_abstract::T_As, true, 2], [::Cs_abstract::T_ExplicitPrx, true, 3], [::Cs_abstract::T_While, true, 5], [Ice::T_string, true, 7]], [::Cs_abstract::T_Break, true, 1], [])
    end

    Protected = 0

    Struct = 1

    module System

        if not defined?(::Cs_abstract::System::T_TestPrx)
            T_TestPrx = Ice::__declareProxy('::cs_abstract::System::Test')
        end

        if not defined?(::Cs_abstract::System::TestPrx)
            module TestPrx_mixin
                def op(context=nil)
                    TestPrx_mixin::OP_op.invoke(self, [], context)
                end
            end

            class TestPrx < Ice::ObjectPrx
                include Ice::Proxy_mixin
                include TestPrx_mixin
            end

            T_TestPrx.defineProxy(TestPrx, nil, [])

            TestPrx_mixin::OP_op = Ice::__defineOperation('op', Ice::OperationMode::Normal, nil, [], [], nil, [])
        end
    end
end

module ::System

    if not defined?(::System::T_TestPrx)
        T_TestPrx = Ice::__declareProxy('::System::Test')
    end

    if not defined?(::System::TestPrx)
        module TestPrx_mixin
            def op(context=nil)
                TestPrx_mixin::OP_op.invoke(self, [], context)
            end
        end

        class TestPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include TestPrx_mixin
        end

        T_TestPrx.defineProxy(TestPrx, nil, [])

        TestPrx_mixin::OP_op = Ice::__defineOperation('op', Ice::OperationMode::Normal, nil, [], [], nil, [])
    end
end
