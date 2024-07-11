# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `Key.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'

module ::Abstract

    if not defined?(::Abstract::Assert)
        class Assert
            include Comparable

            def initialize(name, value)
                @name = name
                @value = value
            end

            def Assert.from_int(val)
                @@_enumerators[val]
            end

            def to_s
                @name
            end

            def to_i
                @value
            end

            def <=>(other)
                other.is_a?(Assert) or raise ArgumentError, "value must be a Assert"
                @value <=> other.to_i
            end

            def hash
                @value.hash
            end

            def Assert.each(&block)
                @@_enumerators.each_value(&block)
            end

            Boolean = Assert.new("boolean", 0)

            @@_enumerators = {0=>Boolean}

            def Assert._enumerators
                @@_enumerators
            end

            private_class_method :new
        end

        T_Assert = ::Ice::__defineEnum('::abstract::assert', Assert, Assert::_enumerators)
    end

    if not defined?(::Abstract::Break)
        class Break
            include ::Ice::Inspect_mixin
            def initialize(_case=0)
                @_case = _case
            end

            def hash
                _h = 0
                _h = 5 * _h + @_case.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Abstract::Break or
                    @_case != other._case
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :_case
        end

        T_Break = ::Ice::__defineStruct('::abstract::break', Break, [["_case", ::Ice::T_int]])
    end

    if not defined?(::Abstract::Catch_Mixin)

        module ::Abstract::Catch_Mixin
        end
        module CatchPrx_mixin

            def _checkedCast(_clone, context=nil)
                CatchPrx_mixin::OP_checkedCast.invoke(self, [_clone], context)
            end
        end

        class CatchPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include CatchPrx_mixin
        end

        if not defined?(::Abstract::T_CatchPrx)
            T_Catch = ::Ice::__declareClass('::abstract::catch')
            T_CatchPrx = ::Ice::__declareProxy('::abstract::catch')
        end

        T_CatchPrx.defineProxy(CatchPrx, nil, [])

        CatchPrx_mixin::OP_checkedCast = ::Ice::__defineOperation('checkedCast', ::Ice::OperationMode::Normal, true, nil, [[::Ice::T_int, false, 0]], [[::Ice::T_int, false, 0]], nil, [])
    end

    if not defined?(::Abstract::Default_Mixin)

        module ::Abstract::Default_Mixin
        end
        module DefaultPrx_mixin

            def _do(context=nil)
                DefaultPrx_mixin::OP_do.invoke(self, [], context)
            end
        end

        class DefaultPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include DefaultPrx_mixin
        end

        if not defined?(::Abstract::T_DefaultPrx)
            T_Default = ::Ice::__declareClass('::abstract::default')
            T_DefaultPrx = ::Ice::__declareProxy('::abstract::default')
        end

        T_DefaultPrx.defineProxy(DefaultPrx, nil, [])

        DefaultPrx_mixin::OP_do = ::Ice::__defineOperation('do', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end

    if not defined?(::Abstract::Else_Mixin)

        module ::Abstract::Else_Mixin
        end
        class Else < ::Ice::Value

            def initialize(_if=0, equals=nil, final=0)
                @_if = _if
                @equals = equals
                @final = final
            end

            attr_accessor :_if, :equals, :final
        end

        if not defined?(::Abstract::T_Else)
            T_Else = ::Ice::__declareClass('::abstract::else')
        end

        T_Else.defineClass(Else, -1, false, nil, [
            ['_if', ::Ice::T_int, false, 0],
            ['equals', ::Abstract::T_DefaultPrx, false, 0],
            ['final', ::Ice::T_int, false, 0]
        ])
    end

    if not defined?(::Abstract::Finalize_Mixin)

        module ::Abstract::Finalize_Mixin
        end
        module FinalizePrx_mixin
            include ::Abstract::DefaultPrx_mixin
            include ::Abstract::CatchPrx_mixin
        end

        class FinalizePrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include FinalizePrx_mixin
        end

        if not defined?(::Abstract::T_FinalizePrx)
            T_Finalize = ::Ice::__declareClass('::abstract::finalize')
            T_FinalizePrx = ::Ice::__declareProxy('::abstract::finalize')
        end

        T_FinalizePrx.defineProxy(FinalizePrx, nil, [::Abstract::T_DefaultPrx, ::Abstract::T_CatchPrx])
    end

    if not defined?(::Abstract::T_For)
        T_For = ::Ice::__defineSequence('::abstract::for', ::Abstract::T_Assert)
    end

    if not defined?(::Abstract::T_Goto)
        T_Goto = ::Ice::__defineDictionary('::abstract::goto', ::Ice::T_string, ::Abstract::T_Assert)
    end

    if not defined?(::Abstract::HashCode)
        class HashCode < Ice::UserException
            def to_s
                '::abstract::hashCode'
            end

            attr_accessor :_if
        end

        T_HashCode = ::Ice::__defineException('::abstract::hashCode', HashCode, nil, [["_if", ::Ice::T_int, false, 0]])
    end

    if not defined?(::Abstract::Import)
        class Import < ::Abstract::HashCode
            def to_s
                '::abstract::import'
            end

            attr_accessor :instanceof, :native
        end

        T_Import = ::Ice::__defineException('::abstract::import', Import, ::Abstract::T_HashCode, [
            ["instanceof", ::Ice::T_int, false, 0],
            ["native", ::Ice::T_int, false, 0]
        ])
    end

    if not defined?(::Abstract::New_Mixin)

        module ::Abstract::New_Mixin
        end
        module NewPrx_mixin

            def notify(notifyAll, null, package, public, _return, static, strictfp, _super, context=nil)
                NewPrx_mixin::OP_notify.invoke(self, [notifyAll, null, package, public, _return, static, strictfp, _super], context)
            end
        end

        class NewPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include NewPrx_mixin
        end

        if not defined?(::Abstract::T_NewPrx)
            T_New = ::Ice::__declareClass('::abstract::new')
            T_NewPrx = ::Ice::__declareProxy('::abstract::new')
        end

        T_NewPrx.defineProxy(NewPrx, nil, [])

        NewPrx_mixin::OP_notify = ::Ice::__defineOperation('notify', ::Ice::OperationMode::Normal, false, nil, [[::Abstract::T_Break, false, 0], [::Abstract::T_Else, false, 0], [::Abstract::T_FinalizePrx, false, 0], [::Abstract::T_CatchPrx, false, 0], [::Abstract::T_DefaultPrx, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [], [::Abstract::T_Assert, false, 0], [::Abstract::T_HashCode, ::Abstract::T_Import])
    end

    Switch = 0

    Synchronized = 0

    This = 0

    Throw = 0

    ToString = 0

    Try = 0

    UncheckedCast = 0

    Volatile = 0

    Wait = 0

    While = 0

    Finally = 0

    GetClass = 0
end
