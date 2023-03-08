# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
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

module ::And

    if not defined?(::And::Assert)
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

            Break = Assert.new("break", 0)

            @@_enumerators = {0=>Break}

            def Assert._enumerators
                @@_enumerators
            end

            private_class_method :new
        end

        T_Assert = ::Ice::__defineEnum('::and::assert', Assert, Assert::_enumerators)
    end

    if not defined?(::And::Continue)
        class Continue
            include ::Ice::Inspect_mixin
            def initialize(_def=0)
                @_def = _def
            end

            def hash
                _h = 0
                _h = 5 * _h + @_def.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::And::Continue or
                    @_def != other._def
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :_def
        end

        T_Continue = ::Ice::__defineStruct('::and::continue', Continue, [["_def", ::Ice::T_int]])
    end

    if not defined?(::And::Del_Mixin)

        module ::And::Del_Mixin
        end
        module DelPrx_mixin

            def elif(_else, context=nil)
                DelPrx_mixin::OP_elif.invoke(self, [_else], context)
            end
        end

        class DelPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include DelPrx_mixin
        end

        if not defined?(::And::T_DelPrx)
            T_Del = ::Ice::__declareClass('::and::del')
            T_DelPrx = ::Ice::__declareProxy('::and::del')
        end

        T_Del.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_DelPrx.defineProxy(DelPrx, nil, [])

        DelPrx_mixin::OP_elif = ::Ice::__defineOperation('elif', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Ice::T_int, false, 0]], [[::Ice::T_int, false, 0]], nil, [])
    end

    if not defined?(::And::Exec_Mixin)

        module ::And::Exec_Mixin
        end
        module ExecPrx_mixin

            def finally(context=nil)
                ExecPrx_mixin::OP_finally.invoke(self, [], context)
            end
        end

        class ExecPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include ExecPrx_mixin
        end

        if not defined?(::And::T_ExecPrx)
            T_Exec = ::Ice::__declareClass('::and::exec')
            T_ExecPrx = ::Ice::__declareProxy('::and::exec')
        end

        T_Exec.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_ExecPrx.defineProxy(ExecPrx, nil, [])

        ExecPrx_mixin::OP_finally = ::Ice::__defineOperation('finally', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end

    if not defined?(::And::For_Mixin)

        module ::And::For_Mixin
        end
        class For < ::Ice::Value

            def initialize(lambda=0, from=nil, global=0)
                @lambda = lambda
                @from = from
                @global = global
            end

            attr_accessor :lambda, :from, :global
        end

        if not defined?(::And::T_For)
            T_For = ::Ice::__declareClass('::and::for')
        end

        T_For.defineClass(For, -1, false, false, nil, [
            ['lambda', ::Ice::T_int, false, 0],
            ['from', ::And::T_ExecPrx, false, 0],
            ['global', ::Ice::T_int, false, 0]
        ])
    end

    if not defined?(::And::If_Mixin)

        module ::And::If_Mixin
        end
        module IfPrx_mixin
            include ::And::ExecPrx_mixin
            include ::And::DelPrx_mixin
        end

        class IfPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include IfPrx_mixin
        end

        if not defined?(::And::T_IfPrx)
            T_If = ::Ice::__declareClass('::and::if')
            T_IfPrx = ::Ice::__declareProxy('::and::if')
        end

        T_If.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_IfPrx.defineProxy(IfPrx, nil, [::And::T_ExecPrx, ::And::T_DelPrx])
    end

    if not defined?(::And::T_Import)
        T_Import = ::Ice::__defineSequence('::and::import', ::And::T_Assert)
    end

    if not defined?(::And::T_In)
        T_In = ::Ice::__defineDictionary('::and::in', ::Ice::T_string, ::And::T_Assert)
    end

    if not defined?(::And::Is)
        class Is < Ice::UserException
            def initialize(lambda=0)
                @lambda = lambda
            end

            def to_s
                '::and::is'
            end

            attr_accessor :lambda
        end

        T_Is = ::Ice::__defineException('::and::is', Is, false, nil, [["lambda", ::Ice::T_int, false, 0]])
    end

    if not defined?(::And::Not)
        class Not < ::And::Is
            def initialize(lambda=0, _or=0, pass=0)
                super(lambda)
                @_or = _or
                @pass = pass
            end

            def to_s
                '::and::not'
            end

            attr_accessor :_or, :pass
        end

        T_Not = ::Ice::__defineException('::and::not', Not, false, ::And::T_Is, [
            ["_or", ::Ice::T_int, false, 0],
            ["pass", ::Ice::T_int, false, 0]
        ])
    end

    if not defined?(::And::T_Print)
        T_Print = ::Ice::__declareLocalClass('::and::print')
    end

    Lambda = 0

    if not defined?(::And::EnumNone)
        class EnumNone
            include Comparable

            def initialize(name, value)
                @name = name
                @value = value
            end

            def EnumNone.from_int(val)
                @@_enumerators[val]
            end

            def to_s
                @name
            end

            def to_i
                @value
            end

            def <=>(other)
                other.is_a?(EnumNone) or raise ArgumentError, "value must be a EnumNone"
                @value <=> other.to_i
            end

            def hash
                @value.hash
            end

            def EnumNone.each(&block)
                @@_enumerators.each_value(&block)
            end

            None = EnumNone.new("None", 0)

            @@_enumerators = {0=>None}

            def EnumNone._enumerators
                @@_enumerators
            end

            private_class_method :new
        end

        T_EnumNone = ::Ice::__defineEnum('::and::EnumNone', EnumNone, EnumNone::_enumerators)
    end
end
