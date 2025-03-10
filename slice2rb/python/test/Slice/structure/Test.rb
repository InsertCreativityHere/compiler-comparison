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

module ::Test
    if not defined?(::Test::T_IntSeq)
        T_IntSeq = Ice::__defineSequence('::Test::IntSeq', Ice::T_int)
    end

    if not defined?(::Test::T_StringDict)
        T_StringDict = Ice::__defineDictionary('::Test::StringDict', Ice::T_string, Ice::T_string)
    end

    if not defined?(::Test::S1)
        class S1
            include Ice::Inspect_mixin
            def initialize(name='')
                @name = name
            end

            def hash
                _h = 0
                _h = 5 * _h + @name.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::S1 or
                    @name != other.name
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :name
        end

        T_S1 = Ice::__defineStruct('::Test::S1', S1, [["name", Ice::T_string]])
    end

    if not defined?(::Test::S2)
        class S2
            include Ice::Inspect_mixin
            def initialize(bo=false, by=0, sh=0, i=0, l=0, str='', seq=nil, s=::Test::S1.new)
                @bo = bo
                @by = by
                @sh = sh
                @i = i
                @l = l
                @str = str
                @seq = seq
                @s = s
            end

            def hash
                _h = 0
                _h = 5 * _h + @bo.hash
                _h = 5 * _h + @by.hash
                _h = 5 * _h + @sh.hash
                _h = 5 * _h + @i.hash
                _h = 5 * _h + @l.hash
                _h = 5 * _h + @str.hash
                _h = 5 * _h + @seq.hash
                _h = 5 * _h + @s.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::S2 or
                    @bo != other.bo or
                    @by != other.by or
                    @sh != other.sh or
                    @i != other.i or
                    @l != other.l or
                    @str != other.str or
                    @seq != other.seq or
                    @s != other.s
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :bo, :by, :sh, :i, :l, :str, :seq, :s
        end

        T_S2 = Ice::__defineStruct('::Test::S2', S2, [
            ["bo", Ice::T_bool],
            ["by", Ice::T_byte],
            ["sh", Ice::T_short],
            ["i", Ice::T_int],
            ["l", Ice::T_long],
            ["str", Ice::T_string],
            ["seq", ::Test::T_IntSeq],
            ["s", ::Test::T_S1]
        ])
    end

    if not defined?(::Test::T_C)
        T_C = Ice::__declareClass('::Test::C')
    end

    if not defined?(::Test::C)
        class C < Ice::Value

            def initialize(name='')
                @name = name
            end

            attr_accessor :name
        end

        T_C.defineClass(C, -1, false, nil, [['name', Ice::T_string, false, 0]])
    end

    if not defined?(::Test::S3)
        class S3
            include Ice::Inspect_mixin
            def initialize(obj=nil, sd=nil, prx=nil)
                @obj = obj
                @sd = sd
                @prx = prx
            end

            def hash
                _h = 0
                _h = 5 * _h + @obj.hash
                _h = 5 * _h + @sd.hash
                _h = 5 * _h + @prx.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::S3 or
                    @obj != other.obj or
                    @sd != other.sd or
                    @prx != other.prx
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :obj, :sd, :prx
        end

        T_S3 = Ice::__defineStruct('::Test::S3', S3, [
            ["obj", ::Test::T_C],
            ["sd", ::Test::T_StringDict],
            ["prx", Ice::T_ObjectPrx]
        ])
    end
end
