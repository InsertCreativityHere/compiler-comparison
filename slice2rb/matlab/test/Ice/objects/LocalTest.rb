# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'LocalTest.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

require 'Ice'

module ::LocalTest
    if not defined?(::LocalTest::T_C1)
        T_C1 = Ice::__declareClass('::LocalTest::C1')
    end

    if not defined?(::LocalTest::C1)
        class C1 < Ice::Value

            def initialize(i=0)
                @i = i
            end

            attr_accessor :i
        end

        T_C1.defineClass(C1, -1, false, nil, [['i', Ice::T_int, false, 0]])
    end

    if not defined?(::LocalTest::S1)
        class S1
            include Ice::Inspect_mixin
            def initialize(c1=nil)
                @c1 = c1
            end

            def hash
                _h = 0
                _h = 5 * _h + @c1.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::LocalTest::S1 or
                    @c1 != other.c1
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :c1
        end

        T_S1 = Ice::__defineStruct('::LocalTest::S1', S1, [["c1", ::LocalTest::T_C1]])
    end

    if not defined?(::LocalTest::T_C1Seq)
        T_C1Seq = Ice::__defineSequence('::LocalTest::C1Seq', ::LocalTest::T_C1)
    end

    if not defined?(::LocalTest::T_S1Seq)
        T_S1Seq = Ice::__defineSequence('::LocalTest::S1Seq', ::LocalTest::T_S1)
    end

    if not defined?(::LocalTest::T_C1Dict)
        T_C1Dict = Ice::__defineDictionary('::LocalTest::C1Dict', Ice::T_int, ::LocalTest::T_C1)
    end

    if not defined?(::LocalTest::T_S1Dict)
        T_S1Dict = Ice::__defineDictionary('::LocalTest::S1Dict', Ice::T_int, ::LocalTest::T_S1)
    end

    if not defined?(::LocalTest::T_C1SeqSeq)
        T_C1SeqSeq = Ice::__defineSequence('::LocalTest::C1SeqSeq', ::LocalTest::T_C1Seq)
    end

    if not defined?(::LocalTest::T_S1SeqSeq)
        T_S1SeqSeq = Ice::__defineSequence('::LocalTest::S1SeqSeq', ::LocalTest::T_S1Seq)
    end

    if not defined?(::LocalTest::S2)
        class S2
            include Ice::Inspect_mixin
            def initialize(s1=::LocalTest::S1.new)
                @s1 = s1
            end

            def hash
                _h = 0
                _h = 5 * _h + @s1.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::LocalTest::S2 or
                    @s1 != other.s1
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :s1
        end

        T_S2 = Ice::__defineStruct('::LocalTest::S2', S2, [["s1", ::LocalTest::T_S1]])
    end

    if not defined?(::LocalTest::S3)
        class S3
            include Ice::Inspect_mixin
            def initialize(c1seq=nil)
                @c1seq = c1seq
            end

            def hash
                _h = 0
                _h = 5 * _h + @c1seq.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::LocalTest::S3 or
                    @c1seq != other.c1seq
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :c1seq
        end

        T_S3 = Ice::__defineStruct('::LocalTest::S3', S3, [["c1seq", ::LocalTest::T_C1Seq]])
    end

    if not defined?(::LocalTest::S4)
        class S4
            include Ice::Inspect_mixin
            def initialize(s1seq=nil)
                @s1seq = s1seq
            end

            def hash
                _h = 0
                _h = 5 * _h + @s1seq.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::LocalTest::S4 or
                    @s1seq != other.s1seq
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :s1seq
        end

        T_S4 = Ice::__defineStruct('::LocalTest::S4', S4, [["s1seq", ::LocalTest::T_S1Seq]])
    end

    if not defined?(::LocalTest::S5)
        class S5
            include Ice::Inspect_mixin
            def initialize(c1dict=nil)
                @c1dict = c1dict
            end

            def hash
                _h = 0
                _h = 5 * _h + @c1dict.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::LocalTest::S5 or
                    @c1dict != other.c1dict
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :c1dict
        end

        T_S5 = Ice::__defineStruct('::LocalTest::S5', S5, [["c1dict", ::LocalTest::T_C1Dict]])
    end

    if not defined?(::LocalTest::S6)
        class S6
            include Ice::Inspect_mixin
            def initialize(s1dict=nil)
                @s1dict = s1dict
            end

            def hash
                _h = 0
                _h = 5 * _h + @s1dict.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::LocalTest::S6 or
                    @s1dict != other.s1dict
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :s1dict
        end

        T_S6 = Ice::__defineStruct('::LocalTest::S6', S6, [["s1dict", ::LocalTest::T_S1Dict]])
    end

    if not defined?(::LocalTest::S7)
        class S7
            include Ice::Inspect_mixin
            def initialize(c1seqseq=nil)
                @c1seqseq = c1seqseq
            end

            def hash
                _h = 0
                _h = 5 * _h + @c1seqseq.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::LocalTest::S7 or
                    @c1seqseq != other.c1seqseq
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :c1seqseq
        end

        T_S7 = Ice::__defineStruct('::LocalTest::S7', S7, [["c1seqseq", ::LocalTest::T_C1SeqSeq]])
    end

    if not defined?(::LocalTest::S8)
        class S8
            include Ice::Inspect_mixin
            def initialize(s1seqseq=nil)
                @s1seqseq = s1seqseq
            end

            def hash
                _h = 0
                _h = 5 * _h + @s1seqseq.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::LocalTest::S8 or
                    @s1seqseq != other.s1seqseq
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :s1seqseq
        end

        T_S8 = Ice::__defineStruct('::LocalTest::S8', S8, [["s1seqseq", ::LocalTest::T_S1SeqSeq]])
    end

    if not defined?(::LocalTest::T_CB1)
        T_CB1 = Ice::__declareClass('::LocalTest::CB1')
    end

    if not defined?(::LocalTest::CB1)
        class CB1 < Ice::Value

            def initialize(s1=::LocalTest::S1.new)
                @s1 = s1
            end

            attr_accessor :s1
        end

        T_CB1.defineClass(CB1, -1, false, nil, [['s1', ::LocalTest::T_S1, false, 0]])
    end

    if not defined?(::LocalTest::T_CB2)
        T_CB2 = Ice::__declareClass('::LocalTest::CB2')
    end

    if not defined?(::LocalTest::CB2)
        class CB2 < Ice::Value

            def initialize(c1seq=nil)
                @c1seq = c1seq
            end

            attr_accessor :c1seq
        end

        T_CB2.defineClass(CB2, -1, false, nil, [['c1seq', ::LocalTest::T_C1Seq, false, 0]])
    end

    if not defined?(::LocalTest::T_CB3)
        T_CB3 = Ice::__declareClass('::LocalTest::CB3')
    end

    if not defined?(::LocalTest::CB3)
        class CB3 < Ice::Value

            def initialize(s1seq=nil)
                @s1seq = s1seq
            end

            attr_accessor :s1seq
        end

        T_CB3.defineClass(CB3, -1, false, nil, [['s1seq', ::LocalTest::T_S1Seq, false, 0]])
    end

    if not defined?(::LocalTest::T_CB4)
        T_CB4 = Ice::__declareClass('::LocalTest::CB4')
    end

    if not defined?(::LocalTest::CB4)
        class CB4 < Ice::Value

            def initialize(c1dict=nil)
                @c1dict = c1dict
            end

            attr_accessor :c1dict
        end

        T_CB4.defineClass(CB4, -1, false, nil, [['c1dict', ::LocalTest::T_C1Dict, false, 0]])
    end

    if not defined?(::LocalTest::T_CB5)
        T_CB5 = Ice::__declareClass('::LocalTest::CB5')
    end

    if not defined?(::LocalTest::CB5)
        class CB5 < Ice::Value

            def initialize(s1dict=nil)
                @s1dict = s1dict
            end

            attr_accessor :s1dict
        end

        T_CB5.defineClass(CB5, -1, false, nil, [['s1dict', ::LocalTest::T_S1Dict, false, 0]])
    end

    if not defined?(::LocalTest::T_CB6)
        T_CB6 = Ice::__declareClass('::LocalTest::CB6')
    end

    if not defined?(::LocalTest::CB6)
        class CB6 < Ice::Value

            def initialize(c1seqseq=nil)
                @c1seqseq = c1seqseq
            end

            attr_accessor :c1seqseq
        end

        T_CB6.defineClass(CB6, -1, false, nil, [['c1seqseq', ::LocalTest::T_C1SeqSeq, false, 0]])
    end

    if not defined?(::LocalTest::T_CB7)
        T_CB7 = Ice::__declareClass('::LocalTest::CB7')
    end

    if not defined?(::LocalTest::CB7)
        class CB7 < Ice::Value

            def initialize(s1seqseq=nil)
                @s1seqseq = s1seqseq
            end

            attr_accessor :s1seqseq
        end

        T_CB7.defineClass(CB7, -1, false, nil, [['s1seqseq', ::LocalTest::T_S1SeqSeq, false, 0]])
    end

    if not defined?(::LocalTest::T_CB8)
        T_CB8 = Ice::__declareClass('::LocalTest::CB8')
    end

    if not defined?(::LocalTest::CB8)
        class CB8 < Ice::Value

            def initialize(s1=::LocalTest::S1.new, c1seq=nil, s1dict=nil)
                @s1 = s1
                @c1seq = c1seq
                @s1dict = s1dict
            end

            attr_accessor :s1, :c1seq, :s1dict
        end

        T_CB8.defineClass(CB8, -1, false, nil, [
            ['s1', ::LocalTest::T_S1, false, 0],
            ['c1seq', ::LocalTest::T_C1Seq, false, 0],
            ['s1dict', ::LocalTest::T_S1Dict, false, 0]
        ])
    end

    if not defined?(::LocalTest::StructKey)
        class StructKey
            include Ice::Inspect_mixin
            def initialize(i=0, j=0)
                @i = i
                @j = j
            end

            def hash
                _h = 0
                _h = 5 * _h + @i.hash
                _h = 5 * _h + @j.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::LocalTest::StructKey or
                    @i != other.i or
                    @j != other.j
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :i, :j
        end

        T_StructKey = Ice::__defineStruct('::LocalTest::StructKey', StructKey, [
            ["i", Ice::T_int],
            ["j", Ice::T_int]
        ])
    end

    if not defined?(::LocalTest::T_StructDict1)
        T_StructDict1 = Ice::__defineDictionary('::LocalTest::StructDict1', ::LocalTest::T_StructKey, ::LocalTest::T_C1)
    end

    if not defined?(::LocalTest::T_StructDict2)
        T_StructDict2 = Ice::__defineDictionary('::LocalTest::StructDict2', ::LocalTest::T_StructKey, ::LocalTest::T_S1)
    end

    if not defined?(::LocalTest::T_C1DictDict)
        T_C1DictDict = Ice::__defineDictionary('::LocalTest::C1DictDict', Ice::T_int, ::LocalTest::T_C1Dict)
    end

    if not defined?(::LocalTest::T_S1DictDict)
        T_S1DictDict = Ice::__defineDictionary('::LocalTest::S1DictDict', Ice::T_int, ::LocalTest::T_S1Dict)
    end
end
