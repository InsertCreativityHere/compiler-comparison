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
    if not defined?(::Test::T_StringSeq)
        T_StringSeq = Ice::__defineSequence('::Test::StringSeq', Ice::T_string)
    end

    if not defined?(::Test::T_StringDict)
        T_StringDict = Ice::__defineDictionary('::Test::StringDict', Ice::T_string, Ice::T_string)
    end

    if not defined?(::Test::T_C)
        T_C = Ice::__declareClass('::Test::C')
    end

    if not defined?(::Test::C)
        class C < Ice::Value

            def initialize(i=0)
                @i = i
            end

            attr_accessor :i
        end

        T_C.defineClass(C, -1, false, nil, [['i', Ice::T_int, false, 0]])
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
            def initialize(bo=false, by=0, sh=0, i=0, l=0, f=0.0, d=0.0, str='', ss=nil, sd=nil, s=::Test::S1.new, cls=nil, prx=nil)
                @bo = bo
                @by = by
                @sh = sh
                @i = i
                @l = l
                @f = f
                @d = d
                @str = str
                @ss = ss
                @sd = sd
                @s = s
                @cls = cls
                @prx = prx
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
                _h = 5 * _h + @ss.hash
                _h = 5 * _h + @sd.hash
                _h = 5 * _h + @s.hash
                _h = 5 * _h + @cls.hash
                _h = 5 * _h + @prx.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::S2 or
                    @bo != other.bo or
                    @by != other.by or
                    @sh != other.sh or
                    @i != other.i or
                    @l != other.l or
                    @f != other.f or
                    @d != other.d or
                    @str != other.str or
                    @ss != other.ss or
                    @sd != other.sd or
                    @s != other.s or
                    @cls != other.cls or
                    @prx != other.prx
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :bo, :by, :sh, :i, :l, :f, :d, :str, :ss, :sd, :s, :cls, :prx
        end

        T_S2 = Ice::__defineStruct('::Test::S2', S2, [
            ["bo", Ice::T_bool],
            ["by", Ice::T_byte],
            ["sh", Ice::T_short],
            ["i", Ice::T_int],
            ["l", Ice::T_long],
            ["f", Ice::T_float],
            ["d", Ice::T_double],
            ["str", Ice::T_string],
            ["ss", ::Test::T_StringSeq],
            ["sd", ::Test::T_StringDict],
            ["s", ::Test::T_S1],
            ["cls", ::Test::T_C],
            ["prx", Ice::T_ObjectPrx]
        ])
    end
end
