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

    if not defined?(::Test::T_ByteString)
        T_ByteString = ::Ice::__defineSequence('::Test::ByteString', ::Ice::T_byte)
    end

    if not defined?(::Test::T_ByteList)
        T_ByteList = ::Ice::__defineSequence('::Test::ByteList', ::Ice::T_byte)
    end

    if not defined?(::Test::T_StringList)
        T_StringList = ::Ice::__defineSequence('::Test::StringList', ::Ice::T_string)
    end

    if not defined?(::Test::T_StringTuple)
        T_StringTuple = ::Ice::__defineSequence('::Test::StringTuple', ::Ice::T_string)
    end

    if not defined?(::Test::T_BoolSeq1)
        T_BoolSeq1 = ::Ice::__defineSequence('::Test::BoolSeq1', ::Ice::T_bool)
    end

    if not defined?(::Test::T_BoolSeq2)
        T_BoolSeq2 = ::Ice::__defineSequence('::Test::BoolSeq2', ::Ice::T_bool)
    end

    if not defined?(::Test::T_ByteSeq1)
        T_ByteSeq1 = ::Ice::__defineSequence('::Test::ByteSeq1', ::Ice::T_byte)
    end

    if not defined?(::Test::T_ByteSeq2)
        T_ByteSeq2 = ::Ice::__defineSequence('::Test::ByteSeq2', ::Ice::T_byte)
    end

    if not defined?(::Test::T_ShortSeq1)
        T_ShortSeq1 = ::Ice::__defineSequence('::Test::ShortSeq1', ::Ice::T_short)
    end

    if not defined?(::Test::T_ShortSeq2)
        T_ShortSeq2 = ::Ice::__defineSequence('::Test::ShortSeq2', ::Ice::T_short)
    end

    if not defined?(::Test::T_IntSeq1)
        T_IntSeq1 = ::Ice::__defineSequence('::Test::IntSeq1', ::Ice::T_int)
    end

    if not defined?(::Test::T_IntSeq2)
        T_IntSeq2 = ::Ice::__defineSequence('::Test::IntSeq2', ::Ice::T_int)
    end

    if not defined?(::Test::T_LongSeq1)
        T_LongSeq1 = ::Ice::__defineSequence('::Test::LongSeq1', ::Ice::T_long)
    end

    if not defined?(::Test::T_LongSeq2)
        T_LongSeq2 = ::Ice::__defineSequence('::Test::LongSeq2', ::Ice::T_long)
    end

    if not defined?(::Test::T_FloatSeq1)
        T_FloatSeq1 = ::Ice::__defineSequence('::Test::FloatSeq1', ::Ice::T_float)
    end

    if not defined?(::Test::T_FloatSeq2)
        T_FloatSeq2 = ::Ice::__defineSequence('::Test::FloatSeq2', ::Ice::T_float)
    end

    if not defined?(::Test::T_DoubleSeq1)
        T_DoubleSeq1 = ::Ice::__defineSequence('::Test::DoubleSeq1', ::Ice::T_double)
    end

    if not defined?(::Test::T_DoubleSeq2)
        T_DoubleSeq2 = ::Ice::__defineSequence('::Test::DoubleSeq2', ::Ice::T_double)
    end

    if not defined?(::Test::S)
        class S
            include ::Ice::Inspect_mixin
            def initialize(b1=nil, b2=nil, b3=nil, b4=nil, s1=nil, s2=nil, s3=nil, s4=nil)
                @b1 = b1
                @b2 = b2
                @b3 = b3
                @b4 = b4
                @s1 = s1
                @s2 = s2
                @s3 = s3
                @s4 = s4
            end

            def hash
                _h = 0
                _h = 5 * _h + @b1.hash
                _h = 5 * _h + @b2.hash
                _h = 5 * _h + @b3.hash
                _h = 5 * _h + @b4.hash
                _h = 5 * _h + @s1.hash
                _h = 5 * _h + @s2.hash
                _h = 5 * _h + @s3.hash
                _h = 5 * _h + @s4.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::S or
                    @b1 != other.b1 or
                    @b2 != other.b2 or
                    @b3 != other.b3 or
                    @b4 != other.b4 or
                    @s1 != other.s1 or
                    @s2 != other.s2 or
                    @s3 != other.s3 or
                    @s4 != other.s4
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :b1, :b2, :b3, :b4, :s1, :s2, :s3, :s4
        end

        T_S = ::Ice::__defineStruct('::Test::S', S, [
            ["b1", ::Test::T_ByteString],
            ["b2", ::Test::T_ByteString],
            ["b3", ::Test::T_ByteList],
            ["b4", ::Test::T_ByteList],
            ["s1", ::Test::T_StringList],
            ["s2", ::Test::T_StringList],
            ["s3", ::Test::T_StringTuple],
            ["s4", ::Test::T_StringTuple]
        ])
    end

    if not defined?(::Test::C_Mixin)

        module ::Test::C_Mixin
        end
        class C < ::Ice::Value

            def initialize(b1=nil, b2=nil, b3=nil, b4=nil, s1=nil, s2=nil, s3=nil, s4=nil)
                @b1 = b1
                @b2 = b2
                @b3 = b3
                @b4 = b4
                @s1 = s1
                @s2 = s2
                @s3 = s3
                @s4 = s4
            end

            attr_accessor :b1, :b2, :b3, :b4, :s1, :s2, :s3, :s4
        end

        if not defined?(::Test::T_C)
            T_C = ::Ice::__declareClass('::Test::C')
        end

        T_C.defineClass(C, -1, false, nil, [
            ['b1', ::Test::T_ByteString, false, 0],
            ['b2', ::Test::T_ByteString, false, 0],
            ['b3', ::Test::T_ByteList, false, 0],
            ['b4', ::Test::T_ByteList, false, 0],
            ['s1', ::Test::T_StringList, false, 0],
            ['s2', ::Test::T_StringList, false, 0],
            ['s3', ::Test::T_StringTuple, false, 0],
            ['s4', ::Test::T_StringTuple, false, 0]
        ])
    end

    if not defined?(::Test::D_Mixin)

        module ::Test::D_Mixin
        end
        class D < ::Ice::Value

            def initialize(boolSeq=::Ice::Unset, byteSeq=::Ice::Unset, shortSeq=::Ice::Unset, intSeq=::Ice::Unset, longSeq=::Ice::Unset, floatSeq=::Ice::Unset, doubleSeq=::Ice::Unset)
                @boolSeq = boolSeq
                @byteSeq = byteSeq
                @shortSeq = shortSeq
                @intSeq = intSeq
                @longSeq = longSeq
                @floatSeq = floatSeq
                @doubleSeq = doubleSeq
            end

            attr_accessor :boolSeq, :byteSeq, :shortSeq, :intSeq, :longSeq, :floatSeq, :doubleSeq
        end

        if not defined?(::Test::T_D)
            T_D = ::Ice::__declareClass('::Test::D')
        end

        T_D.defineClass(D, -1, false, nil, [
            ['boolSeq', ::Test::T_BoolSeq1, true, 1],
            ['byteSeq', ::Test::T_ByteSeq1, true, 2],
            ['shortSeq', ::Test::T_ShortSeq1, true, 3],
            ['intSeq', ::Test::T_IntSeq1, true, 4],
            ['longSeq', ::Test::T_LongSeq1, true, 5],
            ['floatSeq', ::Test::T_FloatSeq1, true, 6],
            ['doubleSeq', ::Test::T_DoubleSeq1, true, 7]
        ])
    end

    if not defined?(::Test::Custom_Mixin)

        module ::Test::Custom_Mixin
        end
        module CustomPrx_mixin

            def opByteString1(b1, context=nil)
                CustomPrx_mixin::OP_opByteString1.invoke(self, [b1], context)
            end

            def opByteString2(b1, context=nil)
                CustomPrx_mixin::OP_opByteString2.invoke(self, [b1], context)
            end

            def opByteList1(b1, context=nil)
                CustomPrx_mixin::OP_opByteList1.invoke(self, [b1], context)
            end

            def opByteList2(b1, context=nil)
                CustomPrx_mixin::OP_opByteList2.invoke(self, [b1], context)
            end

            def opStringList1(s1, context=nil)
                CustomPrx_mixin::OP_opStringList1.invoke(self, [s1], context)
            end

            def opStringList2(s1, context=nil)
                CustomPrx_mixin::OP_opStringList2.invoke(self, [s1], context)
            end

            def opStringTuple1(s1, context=nil)
                CustomPrx_mixin::OP_opStringTuple1.invoke(self, [s1], context)
            end

            def opStringTuple2(s1, context=nil)
                CustomPrx_mixin::OP_opStringTuple2.invoke(self, [s1], context)
            end

            def sendS(val, context=nil)
                CustomPrx_mixin::OP_sendS.invoke(self, [val], context)
            end

            def sendC(val, context=nil)
                CustomPrx_mixin::OP_sendC.invoke(self, [val], context)
            end

            def opBoolSeq(v1, context=nil)
                CustomPrx_mixin::OP_opBoolSeq.invoke(self, [v1], context)
            end

            def opByteSeq(v1, context=nil)
                CustomPrx_mixin::OP_opByteSeq.invoke(self, [v1], context)
            end

            def opShortSeq(v1, context=nil)
                CustomPrx_mixin::OP_opShortSeq.invoke(self, [v1], context)
            end

            def opIntSeq(v1, context=nil)
                CustomPrx_mixin::OP_opIntSeq.invoke(self, [v1], context)
            end

            def opLongSeq(v1, context=nil)
                CustomPrx_mixin::OP_opLongSeq.invoke(self, [v1], context)
            end

            def opFloatSeq(v1, context=nil)
                CustomPrx_mixin::OP_opFloatSeq.invoke(self, [v1], context)
            end

            def opDoubleSeq(v1, context=nil)
                CustomPrx_mixin::OP_opDoubleSeq.invoke(self, [v1], context)
            end

            def opBogusArrayNotExistsFactory(context=nil)
                CustomPrx_mixin::OP_opBogusArrayNotExistsFactory.invoke(self, [], context)
            end

            def opBogusArrayThrowFactory(context=nil)
                CustomPrx_mixin::OP_opBogusArrayThrowFactory.invoke(self, [], context)
            end

            def opBogusArrayType(context=nil)
                CustomPrx_mixin::OP_opBogusArrayType.invoke(self, [], context)
            end

            def opBogusArrayNoneFactory(context=nil)
                CustomPrx_mixin::OP_opBogusArrayNoneFactory.invoke(self, [], context)
            end

            def opBogusArraySignatureFactory(context=nil)
                CustomPrx_mixin::OP_opBogusArraySignatureFactory.invoke(self, [], context)
            end

            def opBogusArrayNoCallableFactory(context=nil)
                CustomPrx_mixin::OP_opBogusArrayNoCallableFactory.invoke(self, [], context)
            end

            def opD(d, context=nil)
                CustomPrx_mixin::OP_opD.invoke(self, [d], context)
            end

            def shutdown(context=nil)
                CustomPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class CustomPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include CustomPrx_mixin
        end

        if not defined?(::Test::T_CustomPrx)
            T_Custom = ::Ice::__declareClass('::Test::Custom')
            T_CustomPrx = ::Ice::__declareProxy('::Test::Custom')
        end

        T_CustomPrx.defineProxy(CustomPrx, nil, [])

        CustomPrx_mixin::OP_opByteString1 = ::Ice::__defineOperation('opByteString1', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_ByteString, false, 0]], [[::Test::T_ByteString, false, 0]], [::Test::T_ByteString, false, 0], [])
        CustomPrx_mixin::OP_opByteString2 = ::Ice::__defineOperation('opByteString2', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_ByteString, false, 0]], [[::Test::T_ByteString, false, 0]], [::Test::T_ByteString, false, 0], [])
        CustomPrx_mixin::OP_opByteList1 = ::Ice::__defineOperation('opByteList1', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_ByteList, false, 0]], [[::Test::T_ByteList, false, 0]], [::Test::T_ByteList, false, 0], [])
        CustomPrx_mixin::OP_opByteList2 = ::Ice::__defineOperation('opByteList2', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_ByteList, false, 0]], [[::Test::T_ByteList, false, 0]], [::Test::T_ByteList, false, 0], [])
        CustomPrx_mixin::OP_opStringList1 = ::Ice::__defineOperation('opStringList1', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_StringList, false, 0]], [[::Test::T_StringList, false, 0]], [::Test::T_StringList, false, 0], [])
        CustomPrx_mixin::OP_opStringList2 = ::Ice::__defineOperation('opStringList2', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_StringList, false, 0]], [[::Test::T_StringList, false, 0]], [::Test::T_StringList, false, 0], [])
        CustomPrx_mixin::OP_opStringTuple1 = ::Ice::__defineOperation('opStringTuple1', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_StringTuple, false, 0]], [[::Test::T_StringTuple, false, 0]], [::Test::T_StringTuple, false, 0], [])
        CustomPrx_mixin::OP_opStringTuple2 = ::Ice::__defineOperation('opStringTuple2', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_StringTuple, false, 0]], [[::Test::T_StringTuple, false, 0]], [::Test::T_StringTuple, false, 0], [])
        CustomPrx_mixin::OP_sendS = ::Ice::__defineOperation('sendS', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_S, false, 0]], [], nil, [])
        CustomPrx_mixin::OP_sendC = ::Ice::__defineOperation('sendC', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_C, false, 0]], [], nil, [])
        CustomPrx_mixin::OP_opBoolSeq = ::Ice::__defineOperation('opBoolSeq', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_BoolSeq1, false, 0]], [[::Test::T_BoolSeq2, false, 0]], [::Test::T_BoolSeq1, false, 0], [])
        CustomPrx_mixin::OP_opByteSeq = ::Ice::__defineOperation('opByteSeq', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_ByteSeq1, false, 0]], [[::Test::T_ByteSeq2, false, 0]], [::Test::T_ByteSeq1, false, 0], [])
        CustomPrx_mixin::OP_opShortSeq = ::Ice::__defineOperation('opShortSeq', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_ShortSeq1, false, 0]], [[::Test::T_ShortSeq2, false, 0]], [::Test::T_ShortSeq1, false, 0], [])
        CustomPrx_mixin::OP_opIntSeq = ::Ice::__defineOperation('opIntSeq', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_IntSeq1, false, 0]], [[::Test::T_IntSeq2, false, 0]], [::Test::T_IntSeq1, false, 0], [])
        CustomPrx_mixin::OP_opLongSeq = ::Ice::__defineOperation('opLongSeq', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_LongSeq1, false, 0]], [[::Test::T_LongSeq2, false, 0]], [::Test::T_LongSeq1, false, 0], [])
        CustomPrx_mixin::OP_opFloatSeq = ::Ice::__defineOperation('opFloatSeq', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_FloatSeq1, false, 0]], [[::Test::T_FloatSeq2, false, 0]], [::Test::T_FloatSeq1, false, 0], [])
        CustomPrx_mixin::OP_opDoubleSeq = ::Ice::__defineOperation('opDoubleSeq', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_DoubleSeq1, false, 0]], [[::Test::T_DoubleSeq2, false, 0]], [::Test::T_DoubleSeq1, false, 0], [])
        CustomPrx_mixin::OP_opBogusArrayNotExistsFactory = ::Ice::__defineOperation('opBogusArrayNotExistsFactory', ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::T_BoolSeq1, false, 0], [])
        CustomPrx_mixin::OP_opBogusArrayThrowFactory = ::Ice::__defineOperation('opBogusArrayThrowFactory', ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::T_BoolSeq1, false, 0], [])
        CustomPrx_mixin::OP_opBogusArrayType = ::Ice::__defineOperation('opBogusArrayType', ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::T_BoolSeq1, false, 0], [])
        CustomPrx_mixin::OP_opBogusArrayNoneFactory = ::Ice::__defineOperation('opBogusArrayNoneFactory', ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::T_BoolSeq1, false, 0], [])
        CustomPrx_mixin::OP_opBogusArraySignatureFactory = ::Ice::__defineOperation('opBogusArraySignatureFactory', ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::T_BoolSeq1, false, 0], [])
        CustomPrx_mixin::OP_opBogusArrayNoCallableFactory = ::Ice::__defineOperation('opBogusArrayNoCallableFactory', ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::T_BoolSeq1, false, 0], [])
        CustomPrx_mixin::OP_opD = ::Ice::__defineOperation('opD', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_D, false, 0]], [], [::Test::T_D, false, 0], [])
        CustomPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end
