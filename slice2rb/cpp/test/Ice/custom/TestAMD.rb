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

    if not defined?(::Test::T_BoolSeq)
        T_BoolSeq = ::Ice::__defineSequence('::Test::BoolSeq', ::Ice::T_bool)
    end

    if not defined?(::Test::T_BoolList)
        T_BoolList = ::Ice::__defineSequence('::Test::BoolList', ::Ice::T_bool)
    end

    if not defined?(::Test::T_BoolListList)
        T_BoolListList = ::Ice::__defineSequence('::Test::BoolListList', ::Test::T_BoolList)
    end

    if not defined?(::Test::T_BoolListSeq)
        T_BoolListSeq = ::Ice::__defineSequence('::Test::BoolListSeq', ::Test::T_BoolList)
    end

    if not defined?(::Test::T_BoolSeqList)
        T_BoolSeqList = ::Ice::__defineSequence('::Test::BoolSeqList', ::Test::T_BoolSeq)
    end

    if not defined?(::Test::T_ByteSeq)
        T_ByteSeq = ::Ice::__defineSequence('::Test::ByteSeq', ::Ice::T_byte)
    end

    if not defined?(::Test::T_ByteList)
        T_ByteList = ::Ice::__defineSequence('::Test::ByteList', ::Ice::T_byte)
    end

    if not defined?(::Test::T_ByteListList)
        T_ByteListList = ::Ice::__defineSequence('::Test::ByteListList', ::Test::T_ByteList)
    end

    if not defined?(::Test::T_ByteListSeq)
        T_ByteListSeq = ::Ice::__defineSequence('::Test::ByteListSeq', ::Test::T_ByteList)
    end

    if not defined?(::Test::T_ByteSeqList)
        T_ByteSeqList = ::Ice::__defineSequence('::Test::ByteSeqList', ::Test::T_ByteSeq)
    end

    if not defined?(::Test::T_StringSeq)
        T_StringSeq = ::Ice::__defineSequence('::Test::StringSeq', ::Ice::T_string)
    end

    if not defined?(::Test::T_StringList)
        T_StringList = ::Ice::__defineSequence('::Test::StringList', ::Ice::T_string)
    end

    if not defined?(::Test::T_StringListList)
        T_StringListList = ::Ice::__defineSequence('::Test::StringListList', ::Test::T_StringList)
    end

    if not defined?(::Test::T_StringListSeq)
        T_StringListSeq = ::Ice::__defineSequence('::Test::StringListSeq', ::Test::T_StringList)
    end

    if not defined?(::Test::T_StringSeqList)
        T_StringSeqList = ::Ice::__defineSequence('::Test::StringSeqList', ::Test::T_StringSeq)
    end

    if not defined?(::Test::Fixed)
        class Fixed
            include ::Ice::Inspect_mixin
            def initialize(s=0)
                @s = s
            end

            def hash
                _h = 0
                _h = 5 * _h + @s.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::Fixed or
                    @s != other.s
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :s
        end

        T_Fixed = ::Ice::__defineStruct('::Test::Fixed', Fixed, [["s", ::Ice::T_short]])
    end

    if not defined?(::Test::T_FixedSeq)
        T_FixedSeq = ::Ice::__defineSequence('::Test::FixedSeq', ::Test::T_Fixed)
    end

    if not defined?(::Test::T_FixedList)
        T_FixedList = ::Ice::__defineSequence('::Test::FixedList', ::Test::T_Fixed)
    end

    if not defined?(::Test::T_FixedListList)
        T_FixedListList = ::Ice::__defineSequence('::Test::FixedListList', ::Test::T_FixedList)
    end

    if not defined?(::Test::T_FixedListSeq)
        T_FixedListSeq = ::Ice::__defineSequence('::Test::FixedListSeq', ::Test::T_FixedList)
    end

    if not defined?(::Test::T_FixedSeqList)
        T_FixedSeqList = ::Ice::__defineSequence('::Test::FixedSeqList', ::Test::T_FixedSeq)
    end

    if not defined?(::Test::Variable)
        class Variable
            include ::Ice::Inspect_mixin
            def initialize(s='', bl=nil, ss=nil)
                @s = s
                @bl = bl
                @ss = ss
            end

            def hash
                _h = 0
                _h = 5 * _h + @s.hash
                _h = 5 * _h + @bl.hash
                _h = 5 * _h + @ss.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::Variable or
                    @s != other.s or
                    @bl != other.bl or
                    @ss != other.ss
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :s, :bl, :ss
        end

        T_Variable = ::Ice::__defineStruct('::Test::Variable', Variable, [
            ["s", ::Ice::T_string],
            ["bl", ::Test::T_BoolList],
            ["ss", ::Test::T_StringSeq]
        ])
    end

    if not defined?(::Test::T_VariableSeq)
        T_VariableSeq = ::Ice::__defineSequence('::Test::VariableSeq', ::Test::T_Variable)
    end

    if not defined?(::Test::T_VariableList)
        T_VariableList = ::Ice::__defineSequence('::Test::VariableList', ::Test::T_Variable)
    end

    if not defined?(::Test::T_VariableListList)
        T_VariableListList = ::Ice::__defineSequence('::Test::VariableListList', ::Test::T_VariableList)
    end

    if not defined?(::Test::T_VariableListSeq)
        T_VariableListSeq = ::Ice::__defineSequence('::Test::VariableListSeq', ::Test::T_VariableList)
    end

    if not defined?(::Test::T_VariableSeqList)
        T_VariableSeqList = ::Ice::__defineSequence('::Test::VariableSeqList', ::Test::T_VariableSeq)
    end

    if not defined?(::Test::T_StringStringDict)
        T_StringStringDict = ::Ice::__defineDictionary('::Test::StringStringDict', ::Ice::T_string, ::Ice::T_string)
    end

    if not defined?(::Test::T_StringStringDictSeq)
        T_StringStringDictSeq = ::Ice::__defineSequence('::Test::StringStringDictSeq', ::Test::T_StringStringDict)
    end

    if not defined?(::Test::T_StringStringDictList)
        T_StringStringDictList = ::Ice::__defineSequence('::Test::StringStringDictList', ::Test::T_StringStringDict)
    end

    if not defined?(::Test::T_StringStringDictListList)
        T_StringStringDictListList = ::Ice::__defineSequence('::Test::StringStringDictListList', ::Test::T_StringStringDictList)
    end

    if not defined?(::Test::T_StringStringDictListSeq)
        T_StringStringDictListSeq = ::Ice::__defineSequence('::Test::StringStringDictListSeq', ::Test::T_StringStringDictList)
    end

    if not defined?(::Test::T_StringStringDictSeqList)
        T_StringStringDictSeqList = ::Ice::__defineSequence('::Test::StringStringDictSeqList', ::Test::T_StringStringDictSeq)
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

        T_E = ::Ice::__defineEnum('::Test::E', E, E::_enumerators)
    end

    if not defined?(::Test::T_ESeq)
        T_ESeq = ::Ice::__defineSequence('::Test::ESeq', ::Test::T_E)
    end

    if not defined?(::Test::T_EList)
        T_EList = ::Ice::__defineSequence('::Test::EList', ::Test::T_E)
    end

    if not defined?(::Test::T_EListList)
        T_EListList = ::Ice::__defineSequence('::Test::EListList', ::Test::T_EList)
    end

    if not defined?(::Test::T_EListSeq)
        T_EListSeq = ::Ice::__defineSequence('::Test::EListSeq', ::Test::T_EList)
    end

    if not defined?(::Test::T_ESeqList)
        T_ESeqList = ::Ice::__defineSequence('::Test::ESeqList', ::Test::T_ESeq)
    end

    if not defined?(::Test::C_Mixin)

        module ::Test::C_Mixin
        end
        class C < ::Ice::Value
        end

        if not defined?(::Test::T_C)
            T_C = ::Ice::__declareClass('::Test::C')
        end

        T_C.defineClass(C, -1, false, false, nil, [])
    end

    if not defined?(::Test::T_CSeq)
        T_CSeq = ::Ice::__defineSequence('::Test::CSeq', ::Test::T_C)
    end

    if not defined?(::Test::T_CList)
        T_CList = ::Ice::__defineSequence('::Test::CList', ::Test::T_C)
    end

    if not defined?(::Test::T_CListList)
        T_CListList = ::Ice::__defineSequence('::Test::CListList', ::Test::T_CList)
    end

    if not defined?(::Test::T_CListSeq)
        T_CListSeq = ::Ice::__defineSequence('::Test::CListSeq', ::Test::T_CList)
    end

    if not defined?(::Test::T_CSeqList)
        T_CSeqList = ::Ice::__defineSequence('::Test::CSeqList', ::Test::T_CSeq)
    end

    if not defined?(::Test::D_Mixin)

        module ::Test::D_Mixin
        end
        module DPrx_mixin
        end

        class DPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include DPrx_mixin
        end

        if not defined?(::Test::T_DPrx)
            T_D = ::Ice::__declareClass('::Test::D')
            T_DPrx = ::Ice::__declareProxy('::Test::D')
        end

        T_D.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_DPrx.defineProxy(DPrx, nil, [])
    end

    if not defined?(::Test::T_DPrxSeq)
        T_DPrxSeq = ::Ice::__defineSequence('::Test::DPrxSeq', ::Test::T_DPrx)
    end

    if not defined?(::Test::T_DPrxList)
        T_DPrxList = ::Ice::__defineSequence('::Test::DPrxList', ::Test::T_DPrx)
    end

    if not defined?(::Test::T_DPrxListList)
        T_DPrxListList = ::Ice::__defineSequence('::Test::DPrxListList', ::Test::T_DPrxList)
    end

    if not defined?(::Test::T_DPrxListSeq)
        T_DPrxListSeq = ::Ice::__defineSequence('::Test::DPrxListSeq', ::Test::T_DPrxList)
    end

    if not defined?(::Test::T_DPrxSeqList)
        T_DPrxSeqList = ::Ice::__defineSequence('::Test::DPrxSeqList', ::Test::T_DPrxSeq)
    end

    if not defined?(::Test::T_DoubleSeq)
        T_DoubleSeq = ::Ice::__defineSequence('::Test::DoubleSeq', ::Ice::T_double)
    end

    if not defined?(::Test::ClassOtherStruct)
        class ClassOtherStruct
            include ::Ice::Inspect_mixin
            def initialize(x=0)
                @x = x
            end

            def hash
                _h = 0
                _h = 5 * _h + @x.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::ClassOtherStruct or
                    @x != other.x
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :x
        end

        T_ClassOtherStruct = ::Ice::__defineStruct('::Test::ClassOtherStruct', ClassOtherStruct, [["x", ::Ice::T_int]])
    end

    if not defined?(::Test::T_ClassOtherStructSeq)
        T_ClassOtherStructSeq = ::Ice::__defineSequence('::Test::ClassOtherStructSeq', ::Test::T_ClassOtherStruct)
    end

    if not defined?(::Test::ClassStruct)
        class ClassStruct
            include ::Ice::Inspect_mixin
            def initialize(otherSeq=nil, other=::Test::ClassOtherStruct.new, y=0)
                @otherSeq = otherSeq
                @other = other
                @y = y
            end

            def hash
                _h = 0
                _h = 5 * _h + @otherSeq.hash
                _h = 5 * _h + @other.hash
                _h = 5 * _h + @y.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::ClassStruct or
                    @otherSeq != other.otherSeq or
                    @other != other.other or
                    @y != other.y
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :otherSeq, :other, :y
        end

        T_ClassStruct = ::Ice::__defineStruct('::Test::ClassStruct', ClassStruct, [
            ["otherSeq", ::Test::T_ClassOtherStructSeq],
            ["other", ::Test::T_ClassOtherStruct],
            ["y", ::Ice::T_int]
        ])
    end

    if not defined?(::Test::T_ClassStructSeq)
        T_ClassStructSeq = ::Ice::__defineSequence('::Test::ClassStructSeq', ::Test::T_ClassStruct)
    end

    if not defined?(::Test::T_IntStringDict)
        T_IntStringDict = ::Ice::__defineDictionary('::Test::IntStringDict', ::Ice::T_int, ::Ice::T_string)
    end

    if not defined?(::Test::T_LongLongDict)
        T_LongLongDict = ::Ice::__defineDictionary('::Test::LongLongDict', ::Ice::T_long, ::Ice::T_long)
    end

    if not defined?(::Test::T_StringIntDict)
        T_StringIntDict = ::Ice::__defineDictionary('::Test::StringIntDict', ::Ice::T_string, ::Ice::T_int)
    end

    if not defined?(::Test::DictClass_Mixin)

        module ::Test::DictClass_Mixin
        end
        class DictClass < ::Ice::Value

            def initialize(isdict=nil)
                @isdict = isdict
            end

            attr_accessor :isdict
        end

        if not defined?(::Test::T_DictClass)
            T_DictClass = ::Ice::__declareClass('::Test::DictClass')
        end

        T_DictClass.defineClass(DictClass, -1, false, false, nil, [['isdict', ::Test::T_IntStringDict, false, 0]])
    end

    if not defined?(::Test::T_BoolBuffer)
        T_BoolBuffer = ::Ice::__defineSequence('::Test::BoolBuffer', ::Ice::T_bool)
    end

    if not defined?(::Test::T_ShortBuffer)
        T_ShortBuffer = ::Ice::__defineSequence('::Test::ShortBuffer', ::Ice::T_short)
    end

    if not defined?(::Test::T_IntBuffer)
        T_IntBuffer = ::Ice::__defineSequence('::Test::IntBuffer', ::Ice::T_int)
    end

    if not defined?(::Test::T_LongBuffer)
        T_LongBuffer = ::Ice::__defineSequence('::Test::LongBuffer', ::Ice::T_long)
    end

    if not defined?(::Test::T_FloatBuffer)
        T_FloatBuffer = ::Ice::__defineSequence('::Test::FloatBuffer', ::Ice::T_float)
    end

    if not defined?(::Test::T_DoubleBuffer)
        T_DoubleBuffer = ::Ice::__defineSequence('::Test::DoubleBuffer', ::Ice::T_double)
    end

    if not defined?(::Test::T_ByteBuffer)
        T_ByteBuffer = ::Ice::__defineSequence('::Test::ByteBuffer', ::Ice::T_byte)
    end

    if not defined?(::Test::BufferStruct)
        class BufferStruct
            include ::Ice::Inspect_mixin
            def initialize(byteBuf=nil, boolBuf=nil, shortBuf=nil, intBuf=nil, longBuf=nil, floatBuf=nil, doubleBuf=nil)
                @byteBuf = byteBuf
                @boolBuf = boolBuf
                @shortBuf = shortBuf
                @intBuf = intBuf
                @longBuf = longBuf
                @floatBuf = floatBuf
                @doubleBuf = doubleBuf
            end

            def hash
                _h = 0
                _h = 5 * _h + @byteBuf.hash
                _h = 5 * _h + @boolBuf.hash
                _h = 5 * _h + @shortBuf.hash
                _h = 5 * _h + @intBuf.hash
                _h = 5 * _h + @longBuf.hash
                _h = 5 * _h + @floatBuf.hash
                _h = 5 * _h + @doubleBuf.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::BufferStruct or
                    @byteBuf != other.byteBuf or
                    @boolBuf != other.boolBuf or
                    @shortBuf != other.shortBuf or
                    @intBuf != other.intBuf or
                    @longBuf != other.longBuf or
                    @floatBuf != other.floatBuf or
                    @doubleBuf != other.doubleBuf
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :byteBuf, :boolBuf, :shortBuf, :intBuf, :longBuf, :floatBuf, :doubleBuf
        end

        T_BufferStruct = ::Ice::__defineStruct('::Test::BufferStruct', BufferStruct, [
            ["byteBuf", ::Test::T_ByteBuffer],
            ["boolBuf", ::Test::T_BoolBuffer],
            ["shortBuf", ::Test::T_ShortBuffer],
            ["intBuf", ::Test::T_IntBuffer],
            ["longBuf", ::Test::T_LongBuffer],
            ["floatBuf", ::Test::T_FloatBuffer],
            ["doubleBuf", ::Test::T_DoubleBuffer]
        ])
    end

    if not defined?(::Test::TestIntf_Mixin)

        module ::Test::TestIntf_Mixin
        end
        module TestIntfPrx_mixin

            def opDoubleArray(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opDoubleArray.invoke(self, [inSeq], context)
            end

            def opBoolArray(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opBoolArray.invoke(self, [inSeq], context)
            end

            def opByteArray(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opByteArray.invoke(self, [inSeq], context)
            end

            def opVariableArray(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opVariableArray.invoke(self, [inSeq], context)
            end

            def opBoolRange(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opBoolRange.invoke(self, [inSeq], context)
            end

            def opByteRange(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opByteRange.invoke(self, [inSeq], context)
            end

            def opVariableRange(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opVariableRange.invoke(self, [inSeq], context)
            end

            def opByteRangeType(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opByteRangeType.invoke(self, [inSeq], context)
            end

            def opVariableRangeType(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opVariableRangeType.invoke(self, [inSeq], context)
            end

            def opBoolSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opBoolSeq.invoke(self, [inSeq], context)
            end

            def opBoolList(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opBoolList.invoke(self, [inSeq], context)
            end

            def opByteSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opByteSeq.invoke(self, [inSeq], context)
            end

            def opByteList(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opByteList.invoke(self, [inSeq], context)
            end

            def opMyByteSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opMyByteSeq.invoke(self, [inSeq], context)
            end

            def opString(inString, context=nil)
                TestIntfPrx_mixin::OP_opString.invoke(self, [inString], context)
            end

            def opStringSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opStringSeq.invoke(self, [inSeq], context)
            end

            def opStringList(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opStringList.invoke(self, [inSeq], context)
            end

            def opFixedSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opFixedSeq.invoke(self, [inSeq], context)
            end

            def opFixedList(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opFixedList.invoke(self, [inSeq], context)
            end

            def opVariableSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opVariableSeq.invoke(self, [inSeq], context)
            end

            def opVariableList(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opVariableList.invoke(self, [inSeq], context)
            end

            def opStringStringDictSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opStringStringDictSeq.invoke(self, [inSeq], context)
            end

            def opStringStringDictList(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opStringStringDictList.invoke(self, [inSeq], context)
            end

            def opESeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opESeq.invoke(self, [inSeq], context)
            end

            def opEList(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opEList.invoke(self, [inSeq], context)
            end

            def opDPrxSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opDPrxSeq.invoke(self, [inSeq], context)
            end

            def opDPrxList(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opDPrxList.invoke(self, [inSeq], context)
            end

            def opCSeq(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opCSeq.invoke(self, [inSeq], context)
            end

            def opCList(inSeq, context=nil)
                TestIntfPrx_mixin::OP_opCList.invoke(self, [inSeq], context)
            end

            def opClassStruct(inS, inSeq, context=nil)
                TestIntfPrx_mixin::OP_opClassStruct.invoke(self, [inS, inSeq], context)
            end

            def opOutArrayByteSeq(org, context=nil)
                TestIntfPrx_mixin::OP_opOutArrayByteSeq.invoke(self, [org], context)
            end

            def opOutRangeByteSeq(org, context=nil)
                TestIntfPrx_mixin::OP_opOutRangeByteSeq.invoke(self, [org], context)
            end

            def opIntStringDict(idict, context=nil)
                TestIntfPrx_mixin::OP_opIntStringDict.invoke(self, [idict], context)
            end

            def opVarDict(idict, context=nil)
                TestIntfPrx_mixin::OP_opVarDict.invoke(self, [idict], context)
            end

            def opCustomIntStringDict(idict, context=nil)
                TestIntfPrx_mixin::OP_opCustomIntStringDict.invoke(self, [idict], context)
            end

            def opShortBuffer(inS, context=nil)
                TestIntfPrx_mixin::OP_opShortBuffer.invoke(self, [inS], context)
            end

            def opBoolBuffer(inS, context=nil)
                TestIntfPrx_mixin::OP_opBoolBuffer.invoke(self, [inS], context)
            end

            def opBufferStruct(s, context=nil)
                TestIntfPrx_mixin::OP_opBufferStruct.invoke(self, [s], context)
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

        TestIntfPrx_mixin::OP_opDoubleArray = ::Ice::__defineOperation('opDoubleArray', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_DoubleSeq, false, 0]], [[::Test::T_DoubleSeq, false, 0]], [::Test::T_DoubleSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opBoolArray = ::Ice::__defineOperation('opBoolArray', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_BoolSeq, false, 0]], [[::Test::T_BoolSeq, false, 0]], [::Test::T_BoolSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opByteArray = ::Ice::__defineOperation('opByteArray', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_ByteList, false, 0]], [[::Test::T_ByteList, false, 0]], [::Test::T_ByteList, false, 0], [])
        TestIntfPrx_mixin::OP_opVariableArray = ::Ice::__defineOperation('opVariableArray', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_VariableList, false, 0]], [[::Test::T_VariableList, false, 0]], [::Test::T_VariableList, false, 0], [])
        TestIntfPrx_mixin::OP_opBoolRange = ::Ice::__defineOperation('opBoolRange', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_BoolSeq, false, 0]], [[::Test::T_BoolSeq, false, 0]], [::Test::T_BoolSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opByteRange = ::Ice::__defineOperation('opByteRange', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_ByteList, false, 0]], [[::Test::T_ByteList, false, 0]], [::Test::T_ByteList, false, 0], [])
        TestIntfPrx_mixin::OP_opVariableRange = ::Ice::__defineOperation('opVariableRange', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_VariableList, false, 0]], [[::Test::T_VariableList, false, 0]], [::Test::T_VariableList, false, 0], [])
        TestIntfPrx_mixin::OP_opByteRangeType = ::Ice::__defineOperation('opByteRangeType', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_ByteList, false, 0]], [[::Test::T_ByteList, false, 0]], [::Test::T_ByteList, false, 0], [])
        TestIntfPrx_mixin::OP_opVariableRangeType = ::Ice::__defineOperation('opVariableRangeType', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_VariableList, false, 0]], [[::Test::T_VariableList, false, 0]], [::Test::T_VariableList, false, 0], [])
        TestIntfPrx_mixin::OP_opBoolSeq = ::Ice::__defineOperation('opBoolSeq', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_BoolSeq, false, 0]], [[::Test::T_BoolSeq, false, 0]], [::Test::T_BoolSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opBoolList = ::Ice::__defineOperation('opBoolList', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_BoolList, false, 0]], [[::Test::T_BoolList, false, 0]], [::Test::T_BoolList, false, 0], [])
        TestIntfPrx_mixin::OP_opByteSeq = ::Ice::__defineOperation('opByteSeq', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_ByteSeq, false, 0]], [[::Test::T_ByteSeq, false, 0]], [::Test::T_ByteSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opByteList = ::Ice::__defineOperation('opByteList', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_ByteList, false, 0]], [[::Test::T_ByteList, false, 0]], [::Test::T_ByteList, false, 0], [])
        TestIntfPrx_mixin::OP_opMyByteSeq = ::Ice::__defineOperation('opMyByteSeq', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_ByteSeq, false, 0]], [[::Test::T_ByteSeq, false, 0]], [::Test::T_ByteSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opString = ::Ice::__defineOperation('opString', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Ice::T_string, false, 0]], [[::Ice::T_string, false, 0]], [::Ice::T_string, false, 0], [])
        TestIntfPrx_mixin::OP_opStringSeq = ::Ice::__defineOperation('opStringSeq', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_StringSeq, false, 0]], [[::Test::T_StringSeq, false, 0]], [::Test::T_StringSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opStringList = ::Ice::__defineOperation('opStringList', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_StringList, false, 0]], [[::Test::T_StringList, false, 0]], [::Test::T_StringList, false, 0], [])
        TestIntfPrx_mixin::OP_opFixedSeq = ::Ice::__defineOperation('opFixedSeq', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_FixedSeq, false, 0]], [[::Test::T_FixedSeq, false, 0]], [::Test::T_FixedSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opFixedList = ::Ice::__defineOperation('opFixedList', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_FixedList, false, 0]], [[::Test::T_FixedList, false, 0]], [::Test::T_FixedList, false, 0], [])
        TestIntfPrx_mixin::OP_opVariableSeq = ::Ice::__defineOperation('opVariableSeq', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_VariableSeq, false, 0]], [[::Test::T_VariableSeq, false, 0]], [::Test::T_VariableSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opVariableList = ::Ice::__defineOperation('opVariableList', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_VariableList, false, 0]], [[::Test::T_VariableList, false, 0]], [::Test::T_VariableList, false, 0], [])
        TestIntfPrx_mixin::OP_opStringStringDictSeq = ::Ice::__defineOperation('opStringStringDictSeq', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_StringStringDictSeq, false, 0]], [[::Test::T_StringStringDictSeq, false, 0]], [::Test::T_StringStringDictSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opStringStringDictList = ::Ice::__defineOperation('opStringStringDictList', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_StringStringDictList, false, 0]], [[::Test::T_StringStringDictList, false, 0]], [::Test::T_StringStringDictList, false, 0], [])
        TestIntfPrx_mixin::OP_opESeq = ::Ice::__defineOperation('opESeq', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_ESeq, false, 0]], [[::Test::T_ESeq, false, 0]], [::Test::T_ESeq, false, 0], [])
        TestIntfPrx_mixin::OP_opEList = ::Ice::__defineOperation('opEList', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_EList, false, 0]], [[::Test::T_EList, false, 0]], [::Test::T_EList, false, 0], [])
        TestIntfPrx_mixin::OP_opDPrxSeq = ::Ice::__defineOperation('opDPrxSeq', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_DPrxSeq, false, 0]], [[::Test::T_DPrxSeq, false, 0]], [::Test::T_DPrxSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opDPrxList = ::Ice::__defineOperation('opDPrxList', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_DPrxList, false, 0]], [[::Test::T_DPrxList, false, 0]], [::Test::T_DPrxList, false, 0], [])
        TestIntfPrx_mixin::OP_opCSeq = ::Ice::__defineOperation('opCSeq', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_CSeq, false, 0]], [[::Test::T_CSeq, false, 0]], [::Test::T_CSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opCList = ::Ice::__defineOperation('opCList', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_CList, false, 0]], [[::Test::T_CList, false, 0]], [::Test::T_CList, false, 0], [])
        TestIntfPrx_mixin::OP_opClassStruct = ::Ice::__defineOperation('opClassStruct', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_ClassStruct, false, 0], [::Test::T_ClassStructSeq, false, 0]], [[::Test::T_ClassStruct, false, 0], [::Test::T_ClassStructSeq, false, 0]], [::Test::T_ClassStruct, false, 0], [])
        TestIntfPrx_mixin::OP_opOutArrayByteSeq = ::Ice::__defineOperation('opOutArrayByteSeq', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_ByteSeq, false, 0]], [[::Test::T_ByteSeq, false, 0]], nil, [])
        TestIntfPrx_mixin::OP_opOutRangeByteSeq = ::Ice::__defineOperation('opOutRangeByteSeq', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_ByteSeq, false, 0]], [[::Test::T_ByteSeq, false, 0]], nil, [])
        TestIntfPrx_mixin::OP_opIntStringDict = ::Ice::__defineOperation('opIntStringDict', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_IntStringDict, false, 0]], [[::Test::T_IntStringDict, false, 0]], [::Test::T_IntStringDict, false, 0], [])
        TestIntfPrx_mixin::OP_opVarDict = ::Ice::__defineOperation('opVarDict', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_StringIntDict, false, 0]], [[::Test::T_StringIntDict, false, 0]], [::Test::T_LongLongDict, false, 0], [])
        TestIntfPrx_mixin::OP_opCustomIntStringDict = ::Ice::__defineOperation('opCustomIntStringDict', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_IntStringDict, false, 0]], [[::Test::T_IntStringDict, false, 0]], [::Test::T_IntStringDict, false, 0], [])
        TestIntfPrx_mixin::OP_opShortBuffer = ::Ice::__defineOperation('opShortBuffer', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_ShortBuffer, false, 0]], [[::Test::T_ShortBuffer, false, 0]], [::Test::T_ShortBuffer, false, 0], [])
        TestIntfPrx_mixin::OP_opBoolBuffer = ::Ice::__defineOperation('opBoolBuffer', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_BoolSeq, false, 0]], [[::Test::T_BoolSeq, false, 0]], [::Test::T_BoolSeq, false, 0], [])
        TestIntfPrx_mixin::OP_opBufferStruct = ::Ice::__defineOperation('opBufferStruct', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [[::Test::T_BufferStruct, false, 0]], [], [::Test::T_BufferStruct, false, 0], [])
        TestIntfPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, true, nil, [], [], nil, [])
    end
end
