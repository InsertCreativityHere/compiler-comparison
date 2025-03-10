# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'Test.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

require 'Ice'
require 'Ice/BuiltinSequences.rb'

module ::Test
    if not defined?(::Test::A)
        class A
            include Ice::Inspect_mixin
            def initialize(i=0)
                @i = i
            end

            def hash
                _h = 0
                _h = 5 * _h + @i.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::A or
                    @i != other.i
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :i
        end

        T_A = Ice::__defineStruct('::Test::A', A, [["i", Ice::T_int]])
    end

    if not defined?(::Test::T_ASeq)
        T_ASeq = Ice::__defineSequence('::Test::ASeq', ::Test::T_A)
    end

    if not defined?(::Test::T_AArray)
        T_AArray = Ice::__defineSequence('::Test::AArray', ::Test::T_A)
    end

    if not defined?(::Test::T_AList)
        T_AList = Ice::__defineSequence('::Test::AList', ::Test::T_A)
    end

    if not defined?(::Test::T_BoolSeq)
        T_BoolSeq = Ice::__defineSequence('::Test::BoolSeq', Ice::T_bool)
    end

    if not defined?(::Test::T_ByteSeq)
        T_ByteSeq = Ice::__defineSequence('::Test::ByteSeq', Ice::T_byte)
    end

    if not defined?(::Test::T_ShortSeq)
        T_ShortSeq = Ice::__defineSequence('::Test::ShortSeq', Ice::T_short)
    end

    if not defined?(::Test::T_IntSeq)
        T_IntSeq = Ice::__defineSequence('::Test::IntSeq', Ice::T_int)
    end

    if not defined?(::Test::T_LongSeq)
        T_LongSeq = Ice::__defineSequence('::Test::LongSeq', Ice::T_long)
    end

    if not defined?(::Test::T_FloatSeq)
        T_FloatSeq = Ice::__defineSequence('::Test::FloatSeq', Ice::T_float)
    end

    if not defined?(::Test::T_DoubleSeq)
        T_DoubleSeq = Ice::__defineSequence('::Test::DoubleSeq', Ice::T_double)
    end

    if not defined?(::Test::T_StringSeq)
        T_StringSeq = Ice::__defineSequence('::Test::StringSeq', Ice::T_string)
    end

    if not defined?(::Test::T_ByteBuffer)
        T_ByteBuffer = Ice::__defineSequence('::Test::ByteBuffer', Ice::T_byte)
    end

    if not defined?(::Test::T_ShortBuffer)
        T_ShortBuffer = Ice::__defineSequence('::Test::ShortBuffer', Ice::T_short)
    end

    if not defined?(::Test::T_IntBuffer)
        T_IntBuffer = Ice::__defineSequence('::Test::IntBuffer', Ice::T_int)
    end

    if not defined?(::Test::T_LongBuffer)
        T_LongBuffer = Ice::__defineSequence('::Test::LongBuffer', Ice::T_long)
    end

    if not defined?(::Test::T_FloatBuffer)
        T_FloatBuffer = Ice::__defineSequence('::Test::FloatBuffer', Ice::T_float)
    end

    if not defined?(::Test::T_DoubleBuffer)
        T_DoubleBuffer = Ice::__defineSequence('::Test::DoubleBuffer', Ice::T_double)
    end

    if not defined?(::Test::E)
        class E
            include Comparable

            def initialize(name, value)
                @name = name
                @value = value
            end

            def E.from_int(val)
                @@_enumerators[val]
            end

            def to_s
                @name
            end

            def to_i
                @value
            end

            def <=>(other)
                other.is_a?(E) or raise ArgumentError, "value must be a E"
                @value <=> other.to_i
            end

            def hash
                @value.hash
            end

            def E.each(&block)
                @@_enumerators.each_value(&block)
            end

            E1 = E.new("E1", 0)
            E2 = E.new("E2", 1)
            E3 = E.new("E3", 2)

            @@_enumerators = {0=>E1, 1=>E2, 2=>E3}

            def E._enumerators
                @@_enumerators
            end

            private_class_method :new
        end

        T_E = Ice::__defineEnum('::Test::E', E, E::_enumerators)
    end

    if not defined?(::Test::T_ESeq)
        T_ESeq = Ice::__defineSequence('::Test::ESeq', ::Test::T_E)
    end

    if not defined?(::Test::S)
        class S
            include Ice::Inspect_mixin
            def initialize(en=::Test::E::E1)
                @en = en
            end

            def hash
                _h = 0
                _h = 5 * _h + @en.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::S or
                    @en != other.en
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :en
        end

        T_S = Ice::__defineStruct('::Test::S', S, [["en", ::Test::T_E]])
    end

    if not defined?(::Test::T_SSeq)
        T_SSeq = Ice::__defineSequence('::Test::SSeq', ::Test::T_S)
    end

    if not defined?(::Test::T_D)
        T_D = Ice::__defineDictionary('::Test::D', Ice::T_int, Ice::T_string)
    end

    if not defined?(::Test::T_DSeq)
        T_DSeq = Ice::__defineSequence('::Test::DSeq', ::Test::T_D)
    end

    if not defined?(::Test::T_StringSeqSeq)
        T_StringSeqSeq = Ice::__defineSequence('::Test::StringSeqSeq', ::Test::T_StringSeq)
    end

    if not defined?(::Test::T_TestIntfPrx)
        T_TestIntfPrx = Ice::__declareProxy('::Test::TestIntf')
    end

    if not defined?(::Test::TestIntfPrx)
        module TestIntfPrx_mixin
            def opASeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opASeq.invoke(self, [inSeq], context)
            end

            def opAArray(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opAArray.invoke(self, [inSeq], context)
            end

            def opAList(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opAList.invoke(self, [inSeq], context)
            end

            def opBoolSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opBoolSeq.invoke(self, [inSeq], context)
            end

            def opByteSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opByteSeq.invoke(self, [inSeq], context)
            end

            def opShortSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opShortSeq.invoke(self, [inSeq], context)
            end

            def opIntSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opIntSeq.invoke(self, [inSeq], context)
            end

            def opLongSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opLongSeq.invoke(self, [inSeq], context)
            end

            def opFloatSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opFloatSeq.invoke(self, [inSeq], context)
            end

            def opDoubleSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opDoubleSeq.invoke(self, [inSeq], context)
            end

            def opStringSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opStringSeq.invoke(self, [inSeq], context)
            end

            def opESeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opESeq.invoke(self, [inSeq], context)
            end

            def opSSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opSSeq.invoke(self, [inSeq], context)
            end

            def opDSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opDSeq.invoke(self, [inSeq], context)
            end

            def opStringSeqSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opStringSeqSeq.invoke(self, [inSeq], context)
            end

            def opByteBufferSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opByteBufferSeq.invoke(self, [inSeq], context)
            end

            def opShortBufferSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opShortBufferSeq.invoke(self, [inSeq], context)
            end

            def opIntBufferSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opIntBufferSeq.invoke(self, [inSeq], context)
            end

            def opLongBufferSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opLongBufferSeq.invoke(self, [inSeq], context)
            end

            def opFloatBufferSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opFloatBufferSeq.invoke(self, [inSeq], context)
            end

            def opDoubleBufferSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opDoubleBufferSeq.invoke(self, [inSeq], context)
            end

            def opOptASeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptASeq.invoke(self, [inSeq], context)
            end

            def opOptAArray(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptAArray.invoke(self, [inSeq], context)
            end

            def opOptAList(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptAList.invoke(self, [inSeq], context)
            end

            def opOptBoolSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptBoolSeq.invoke(self, [inSeq], context)
            end

            def opOptByteSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptByteSeq.invoke(self, [inSeq], context)
            end

            def opOptShortSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptShortSeq.invoke(self, [inSeq], context)
            end

            def opOptIntSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptIntSeq.invoke(self, [inSeq], context)
            end

            def opOptLongSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptLongSeq.invoke(self, [inSeq], context)
            end

            def opOptFloatSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptFloatSeq.invoke(self, [inSeq], context)
            end

            def opOptDoubleSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptDoubleSeq.invoke(self, [inSeq], context)
            end

            def opOptStringSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptStringSeq.invoke(self, [inSeq], context)
            end

            def opOptESeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptESeq.invoke(self, [inSeq], context)
            end

            def opOptSSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptSSeq.invoke(self, [inSeq], context)
            end

            def opOptDSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptDSeq.invoke(self, [inSeq], context)
            end

            def opOptStringSeqSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptStringSeqSeq.invoke(self, [inSeq], context)
            end

            def opOptByteBufferSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptByteBufferSeq.invoke(self, [inSeq], context)
            end

            def opOptShortBufferSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptShortBufferSeq.invoke(self, [inSeq], context)
            end

            def opOptIntBufferSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptIntBufferSeq.invoke(self, [inSeq], context)
            end

            def opOptLongBufferSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptLongBufferSeq.invoke(self, [inSeq], context)
            end

            def opOptFloatBufferSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptFloatBufferSeq.invoke(self, [inSeq], context)
            end

            def opOptDoubleBufferSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opOptDoubleBufferSeq.invoke(self, [inSeq], context)
            end

            def shutdown(context=nil)
                TestIntfPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class TestIntfPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include TestIntfPrx_mixin
        end

        T_TestIntfPrx.defineProxy(TestIntfPrx, nil, [])

        TestIntfPrx_mixin::OP_opASeq = Ice::__defineOperation('opASeq', Ice::OperationMode::Normal, nil, [[::Test::T_ASeq, false, 0]], [[::Test::T_ASeq, false, 0]], [::Test::T_ASeq, false, 0], [])
        TestIntfPrx_mixin::OP_opAArray = Ice::__defineOperation('opAArray', Ice::OperationMode::Normal, nil, [[::Test::T_AArray, false, 0]], [[::Test::T_AArray, false, 0]], [::Test::T_AArray, false, 0], [])
        TestIntfPrx_mixin::OP_opAList = Ice::__defineOperation('opAList', Ice::OperationMode::Normal, nil, [[::Test::T_AList, false, 0]], [[::Test::T_AList, false, 0]], [::Test::T_AList, false, 0], [])
        TestIntfPrx_mixin::OP_opBoolSeq = Ice::__defineOperation('opBoolSeq', Ice::OperationMode::Normal, nil, [[::Test::T_BoolSeq, false, 0]], [[::Test::T_BoolSeq, false, 0]], [::Test::T_BoolSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opByteSeq = Ice::__defineOperation('opByteSeq', Ice::OperationMode::Normal, nil, [[::Test::T_ByteSeq, false, 0]], [[::Test::T_ByteSeq, false, 0]], [::Test::T_ByteSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opShortSeq = Ice::__defineOperation('opShortSeq', Ice::OperationMode::Normal, nil, [[::Test::T_ShortSeq, false, 0]], [[::Test::T_ShortSeq, false, 0]], [::Test::T_ShortSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opIntSeq = Ice::__defineOperation('opIntSeq', Ice::OperationMode::Normal, nil, [[::Test::T_IntSeq, false, 0]], [[::Test::T_IntSeq, false, 0]], [::Test::T_IntSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opLongSeq = Ice::__defineOperation('opLongSeq', Ice::OperationMode::Normal, nil, [[::Test::T_LongSeq, false, 0]], [[::Test::T_LongSeq, false, 0]], [::Test::T_LongSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opFloatSeq = Ice::__defineOperation('opFloatSeq', Ice::OperationMode::Normal, nil, [[::Test::T_FloatSeq, false, 0]], [[::Test::T_FloatSeq, false, 0]], [::Test::T_FloatSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opDoubleSeq = Ice::__defineOperation('opDoubleSeq', Ice::OperationMode::Normal, nil, [[::Test::T_DoubleSeq, false, 0]], [[::Test::T_DoubleSeq, false, 0]], [::Test::T_DoubleSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opStringSeq = Ice::__defineOperation('opStringSeq', Ice::OperationMode::Normal, nil, [[::Test::T_StringSeq, false, 0]], [[::Test::T_StringSeq, false, 0]], [::Test::T_StringSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opESeq = Ice::__defineOperation('opESeq', Ice::OperationMode::Normal, nil, [[::Test::T_ESeq, false, 0]], [[::Test::T_ESeq, false, 0]], [::Test::T_ESeq, false, 0], [])
        TestIntfPrx_mixin::OP_opSSeq = Ice::__defineOperation('opSSeq', Ice::OperationMode::Normal, nil, [[::Test::T_SSeq, false, 0]], [[::Test::T_SSeq, false, 0]], [::Test::T_SSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opDSeq = Ice::__defineOperation('opDSeq', Ice::OperationMode::Normal, nil, [[::Test::T_DSeq, false, 0]], [[::Test::T_DSeq, false, 0]], [::Test::T_DSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opStringSeqSeq = Ice::__defineOperation('opStringSeqSeq', Ice::OperationMode::Normal, nil, [[::Test::T_StringSeqSeq, false, 0]], [[::Test::T_StringSeqSeq, false, 0]], [::Test::T_StringSeqSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opByteBufferSeq = Ice::__defineOperation('opByteBufferSeq', Ice::OperationMode::Normal, nil, [[::Test::T_ByteBuffer, false, 0]], [[::Test::T_ByteBuffer, false, 0]], [::Test::T_ByteBuffer, false, 0], [])
        TestIntfPrx_mixin::OP_opShortBufferSeq = Ice::__defineOperation('opShortBufferSeq', Ice::OperationMode::Normal, nil, [[::Test::T_ShortBuffer, false, 0]], [[::Test::T_ShortBuffer, false, 0]], [::Test::T_ShortBuffer, false, 0], [])
        TestIntfPrx_mixin::OP_opIntBufferSeq = Ice::__defineOperation('opIntBufferSeq', Ice::OperationMode::Normal, nil, [[::Test::T_IntBuffer, false, 0]], [[::Test::T_IntBuffer, false, 0]], [::Test::T_IntBuffer, false, 0], [])
        TestIntfPrx_mixin::OP_opLongBufferSeq = Ice::__defineOperation('opLongBufferSeq', Ice::OperationMode::Normal, nil, [[::Test::T_LongBuffer, false, 0]], [[::Test::T_LongBuffer, false, 0]], [::Test::T_LongBuffer, false, 0], [])
        TestIntfPrx_mixin::OP_opFloatBufferSeq = Ice::__defineOperation('opFloatBufferSeq', Ice::OperationMode::Normal, nil, [[::Test::T_FloatBuffer, false, 0]], [[::Test::T_FloatBuffer, false, 0]], [::Test::T_FloatBuffer, false, 0], [])
        TestIntfPrx_mixin::OP_opDoubleBufferSeq = Ice::__defineOperation('opDoubleBufferSeq', Ice::OperationMode::Normal, nil, [[::Test::T_DoubleBuffer, false, 0]], [[::Test::T_DoubleBuffer, false, 0]], [::Test::T_DoubleBuffer, false, 0], [])
        TestIntfPrx_mixin::OP_opOptASeq = Ice::__defineOperation('opOptASeq', Ice::OperationMode::Normal, nil, [[::Test::T_ASeq, true, 2]], [[::Test::T_ASeq, true, 3]], [::Test::T_ASeq, true, 1], [])
        TestIntfPrx_mixin::OP_opOptAArray = Ice::__defineOperation('opOptAArray', Ice::OperationMode::Normal, nil, [[::Test::T_AArray, true, 2]], [[::Test::T_AArray, true, 3]], [::Test::T_AArray, true, 1], [])
        TestIntfPrx_mixin::OP_opOptAList = Ice::__defineOperation('opOptAList', Ice::OperationMode::Normal, nil, [[::Test::T_AList, true, 2]], [[::Test::T_AList, true, 3]], [::Test::T_AList, true, 1], [])
        TestIntfPrx_mixin::OP_opOptBoolSeq = Ice::__defineOperation('opOptBoolSeq', Ice::OperationMode::Normal, nil, [[::Test::T_BoolSeq, true, 2]], [[::Test::T_BoolSeq, true, 3]], [::Test::T_BoolSeq, true, 1], [])
        TestIntfPrx_mixin::OP_opOptByteSeq = Ice::__defineOperation('opOptByteSeq', Ice::OperationMode::Normal, nil, [[::Test::T_ByteSeq, true, 2]], [[::Test::T_ByteSeq, true, 3]], [::Test::T_ByteSeq, true, 1], [])
        TestIntfPrx_mixin::OP_opOptShortSeq = Ice::__defineOperation('opOptShortSeq', Ice::OperationMode::Normal, nil, [[::Test::T_ShortSeq, true, 2]], [[::Test::T_ShortSeq, true, 3]], [::Test::T_ShortSeq, true, 1], [])
        TestIntfPrx_mixin::OP_opOptIntSeq = Ice::__defineOperation('opOptIntSeq', Ice::OperationMode::Normal, nil, [[::Test::T_IntSeq, true, 2]], [[::Test::T_IntSeq, true, 3]], [::Test::T_IntSeq, true, 1], [])
        TestIntfPrx_mixin::OP_opOptLongSeq = Ice::__defineOperation('opOptLongSeq', Ice::OperationMode::Normal, nil, [[::Test::T_LongSeq, true, 2]], [[::Test::T_LongSeq, true, 3]], [::Test::T_LongSeq, true, 1], [])
        TestIntfPrx_mixin::OP_opOptFloatSeq = Ice::__defineOperation('opOptFloatSeq', Ice::OperationMode::Normal, nil, [[::Test::T_FloatSeq, true, 2]], [[::Test::T_FloatSeq, true, 3]], [::Test::T_FloatSeq, true, 1], [])
        TestIntfPrx_mixin::OP_opOptDoubleSeq = Ice::__defineOperation('opOptDoubleSeq', Ice::OperationMode::Normal, nil, [[::Test::T_DoubleSeq, true, 2]], [[::Test::T_DoubleSeq, true, 3]], [::Test::T_DoubleSeq, true, 1], [])
        TestIntfPrx_mixin::OP_opOptStringSeq = Ice::__defineOperation('opOptStringSeq', Ice::OperationMode::Normal, nil, [[::Test::T_StringSeq, true, 2]], [[::Test::T_StringSeq, true, 3]], [::Test::T_StringSeq, true, 1], [])
        TestIntfPrx_mixin::OP_opOptESeq = Ice::__defineOperation('opOptESeq', Ice::OperationMode::Normal, nil, [[::Test::T_ESeq, true, 2]], [[::Test::T_ESeq, true, 3]], [::Test::T_ESeq, true, 1], [])
        TestIntfPrx_mixin::OP_opOptSSeq = Ice::__defineOperation('opOptSSeq', Ice::OperationMode::Normal, nil, [[::Test::T_SSeq, true, 2]], [[::Test::T_SSeq, true, 3]], [::Test::T_SSeq, true, 1], [])
        TestIntfPrx_mixin::OP_opOptDSeq = Ice::__defineOperation('opOptDSeq', Ice::OperationMode::Normal, nil, [[::Test::T_DSeq, true, 2]], [[::Test::T_DSeq, true, 3]], [::Test::T_DSeq, true, 1], [])
        TestIntfPrx_mixin::OP_opOptStringSeqSeq = Ice::__defineOperation('opOptStringSeqSeq', Ice::OperationMode::Normal, nil, [[::Test::T_StringSeqSeq, true, 2]], [[::Test::T_StringSeqSeq, true, 3]], [::Test::T_StringSeqSeq, true, 1], [])
        TestIntfPrx_mixin::OP_opOptByteBufferSeq = Ice::__defineOperation('opOptByteBufferSeq', Ice::OperationMode::Normal, nil, [[::Test::T_ByteBuffer, true, 2]], [[::Test::T_ByteBuffer, true, 3]], [::Test::T_ByteBuffer, true, 1], [])
        TestIntfPrx_mixin::OP_opOptShortBufferSeq = Ice::__defineOperation('opOptShortBufferSeq', Ice::OperationMode::Normal, nil, [[::Test::T_ShortBuffer, true, 2]], [[::Test::T_ShortBuffer, true, 3]], [::Test::T_ShortBuffer, true, 1], [])
        TestIntfPrx_mixin::OP_opOptIntBufferSeq = Ice::__defineOperation('opOptIntBufferSeq', Ice::OperationMode::Normal, nil, [[::Test::T_IntBuffer, true, 2]], [[::Test::T_IntBuffer, true, 3]], [::Test::T_IntBuffer, true, 1], [])
        TestIntfPrx_mixin::OP_opOptLongBufferSeq = Ice::__defineOperation('opOptLongBufferSeq', Ice::OperationMode::Normal, nil, [[::Test::T_LongBuffer, true, 2]], [[::Test::T_LongBuffer, true, 3]], [::Test::T_LongBuffer, true, 1], [])
        TestIntfPrx_mixin::OP_opOptFloatBufferSeq = Ice::__defineOperation('opOptFloatBufferSeq', Ice::OperationMode::Normal, nil, [[::Test::T_FloatBuffer, true, 2]], [[::Test::T_FloatBuffer, true, 3]], [::Test::T_FloatBuffer, true, 1], [])
        TestIntfPrx_mixin::OP_opOptDoubleBufferSeq = Ice::__defineOperation('opOptDoubleBufferSeq', Ice::OperationMode::Normal, nil, [[::Test::T_DoubleBuffer, true, 2]], [[::Test::T_DoubleBuffer, true, 3]], [::Test::T_DoubleBuffer, true, 1], [])
        TestIntfPrx_mixin::OP_shutdown = Ice::__defineOperation('shutdown', Ice::OperationMode::Normal, nil, [], [], nil, [])
    end
end
