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

    if not defined?(::Test::MyEnum)
        class MyEnum
            include Comparable

            def initialize(name, value)
                @name = name
                @value = value
            end

            def MyEnum.from_int(val)
                @@_enumerators[val]
            end

            def to_s
                @name
            end

            def to_i
                @value
            end

            def <=>(other)
                other.is_a?(MyEnum) or raise ArgumentError, "value must be a MyEnum"
                @value <=> other.to_i
            end

            def hash
                @value.hash
            end

            def MyEnum.each(&block)
                @@_enumerators.each_value(&block)
            end

            Enum1 = MyEnum.new("enum1", 0)
            Enum2 = MyEnum.new("enum2", 1)
            Enum3 = MyEnum.new("enum3", 2)

            @@_enumerators = {0=>Enum1, 1=>Enum2, 2=>Enum3}

            def MyEnum._enumerators
                @@_enumerators
            end

            private_class_method :new
        end

        T_MyEnum = ::Ice::__defineEnum('::Test::MyEnum', MyEnum, MyEnum::_enumerators)
    end

    if not defined?(::Test::T_Initial)
        T_InitialPrx = ::Ice::__declareProxy('::Test::Initial')
    end

    if not defined?(::Test::T_Base)
        T_Base = ::Ice::__declareClass('::Test::Base')
    end

    if not defined?(::Test::Struct1)
        class Struct1
            include ::Ice::Inspect_mixin
            def initialize(bo=false, by=0, sh=0, i=0, l=0, f=0.0, d=0.0, str='', e=::Test::MyEnum::Enum1, p=nil)
                @bo = bo
                @by = by
                @sh = sh
                @i = i
                @l = l
                @f = f
                @d = d
                @str = str
                @e = e
                @p = p
            end

            def hash
                _h = 0
                _h = 5 * _h + @bo.hash
                _h = 5 * _h + @by.hash
                _h = 5 * _h + @sh.hash
                _h = 5 * _h + @i.hash
                _h = 5 * _h + @l.hash
                _h = 5 * _h + @f.hash
                _h = 5 * _h + @d.hash
                _h = 5 * _h + @str.hash
                _h = 5 * _h + @e.hash
                _h = 5 * _h + @p.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::Struct1 or
                    @bo != other.bo or
                    @by != other.by or
                    @sh != other.sh or
                    @i != other.i or
                    @l != other.l or
                    @f != other.f or
                    @d != other.d or
                    @str != other.str or
                    @e != other.e or
                    @p != other.p
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :bo, :by, :sh, :i, :l, :f, :d, :str, :e, :p
        end

        T_Struct1 = ::Ice::__defineStruct('::Test::Struct1', Struct1, [
            ["bo", ::Ice::T_bool],
            ["by", ::Ice::T_byte],
            ["sh", ::Ice::T_short],
            ["i", ::Ice::T_int],
            ["l", ::Ice::T_long],
            ["f", ::Ice::T_float],
            ["d", ::Ice::T_double],
            ["str", ::Ice::T_string],
            ["e", ::Test::T_MyEnum],
            ["p", ::Test::T_InitialPrx]
        ])
    end

    if not defined?(::Test::T_ByteS)
        T_ByteS = ::Ice::__defineSequence('::Test::ByteS', ::Ice::T_byte)
    end

    if not defined?(::Test::T_IntS)
        T_IntS = ::Ice::__defineSequence('::Test::IntS', ::Ice::T_int)
    end

    if not defined?(::Test::T_MyEnumS)
        T_MyEnumS = ::Ice::__defineSequence('::Test::MyEnumS', ::Test::T_MyEnum)
    end

    if not defined?(::Test::T_BaseS)
        T_BaseS = ::Ice::__defineSequence('::Test::BaseS', ::Test::T_Base)
    end

    if not defined?(::Test::T_ByteBoolD)
        T_ByteBoolD = ::Ice::__defineDictionary('::Test::ByteBoolD', ::Ice::T_byte, ::Ice::T_bool)
    end

    if not defined?(::Test::T_ShortIntD)
        T_ShortIntD = ::Ice::__defineDictionary('::Test::ShortIntD', ::Ice::T_short, ::Ice::T_int)
    end

    if not defined?(::Test::T_StringMyEnumD)
        T_StringMyEnumD = ::Ice::__defineDictionary('::Test::StringMyEnumD', ::Ice::T_string, ::Test::T_MyEnum)
    end

    if not defined?(::Test::T_StringBaseD)
        T_StringBaseD = ::Ice::__defineDictionary('::Test::StringBaseD', ::Ice::T_string, ::Test::T_Base)
    end

    if not defined?(::Test::Base_Mixin)

        module ::Test::Base_Mixin
        end
        class Base < ::Ice::Value

            def initialize(b=nil, o=nil, s=::Test::Struct1.new, seq1=nil, seq2=nil, seq3=nil, seq4=nil, d1=nil, d2=nil, d3=nil, d4=nil)
                @b = b
                @o = o
                @s = s
                @seq1 = seq1
                @seq2 = seq2
                @seq3 = seq3
                @seq4 = seq4
                @d1 = d1
                @d2 = d2
                @d3 = d3
                @d4 = d4
            end

            attr_accessor :b, :o, :s, :seq1, :seq2, :seq3, :seq4, :d1, :d2, :d3, :d4
        end

        if not defined?(::Test::T_Base)
            T_Base = ::Ice::__declareClass('::Test::Base')
        end

        T_Base.defineClass(Base, -1, false, nil, [
            ['b', ::Test::T_Base, false, 0],
            ['o', ::Ice::T_Value, false, 0],
            ['s', ::Test::T_Struct1, false, 0],
            ['seq1', ::Test::T_ByteS, false, 0],
            ['seq2', ::Test::T_IntS, false, 0],
            ['seq3', ::Test::T_MyEnumS, false, 0],
            ['seq4', ::Test::T_BaseS, false, 0],
            ['d1', ::Test::T_ByteBoolD, false, 0],
            ['d2', ::Test::T_ShortIntD, false, 0],
            ['d3', ::Test::T_StringMyEnumD, false, 0],
            ['d4', ::Test::T_StringBaseD, false, 0]
        ])
    end

    if not defined?(::Test::Derived_Mixin)

        module ::Test::Derived_Mixin
        end
        class Derived < ::Test::Base

            def initialize(b=nil, o=nil, s=::Test::Struct1.new, seq1=nil, seq2=nil, seq3=nil, seq4=nil, d1=nil, d2=nil, d3=nil, d4=nil, p=nil)
                super(b, o, s, seq1, seq2, seq3, seq4, d1, d2, d3, d4)
                @p = p
            end

            attr_accessor :p
        end

        if not defined?(::Test::T_Derived)
            T_Derived = ::Ice::__declareClass('::Test::Derived')
        end

        T_Derived.defineClass(Derived, -1, false, ::Test::T_Base, [['p', ::Ice::T_ObjectPrx, false, 0]])
    end

    if not defined?(::Test::Ex)
        class Ex < Ice::UserException
            def to_s
                '::Test::Ex'
            end

            attr_accessor :s, :b
        end

        T_Ex = ::Ice::__defineException('::Test::Ex', Ex, nil, [
            ["s", ::Test::T_Struct1, false, 0],
            ["b", ::Test::T_Base, false, 0]
        ])
    end

    if not defined?(::Test::Initial_Mixin)

        module ::Test::Initial_Mixin
        end
        module InitialPrx_mixin

            def getStruct1(context=nil)
                InitialPrx_mixin::OP_getStruct1.invoke(self, [], context)
            end

            def getBase(context=nil)
                InitialPrx_mixin::OP_getBase.invoke(self, [], context)
            end

            def getEx(context=nil)
                InitialPrx_mixin::OP_getEx.invoke(self, [], context)
            end

            def shutdown(context=nil)
                InitialPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class InitialPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include InitialPrx_mixin
        end

        if not defined?(::Test::T_InitialPrx)
            T_Initial = ::Ice::__declareClass('::Test::Initial')
            T_InitialPrx = ::Ice::__declareProxy('::Test::Initial')
        end

        T_InitialPrx.defineProxy(InitialPrx, nil, [])

        InitialPrx_mixin::OP_getStruct1 = ::Ice::__defineOperation('getStruct1', ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::T_ByteS, false, 0], [])
        InitialPrx_mixin::OP_getBase = ::Ice::__defineOperation('getBase', ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::T_ByteS, false, 0], [])
        InitialPrx_mixin::OP_getEx = ::Ice::__defineOperation('getEx', ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::T_ByteS, false, 0], [])
        InitialPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end
