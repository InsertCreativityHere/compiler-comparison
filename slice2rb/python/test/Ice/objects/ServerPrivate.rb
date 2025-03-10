# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'ServerPrivate.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

require 'Ice'

module ::Test
    if not defined?(::Test::T_Empty)
        T_Empty = Ice::__declareClass('::Test::Empty')
    end

    if not defined?(::Test::Empty)
        class Empty < Ice::Value
        end

        T_Empty.defineClass(Empty, -1, false, nil, [])
    end

    if not defined?(::Test::T_AlsoEmpty)
        T_AlsoEmpty = Ice::__declareClass('::Test::AlsoEmpty')
    end

    if not defined?(::Test::AlsoEmpty)
        class AlsoEmpty < Ice::Value
        end

        T_AlsoEmpty.defineClass(AlsoEmpty, -1, false, nil, [])
    end

    if not defined?(::Test::T_UnexpectedObjectExceptionTestPrx)
        T_UnexpectedObjectExceptionTestPrx = Ice::__declareProxy('::Test::UnexpectedObjectExceptionTest')
    end

    if not defined?(::Test::UnexpectedObjectExceptionTestPrx)
        module UnexpectedObjectExceptionTestPrx_mixin
            def op(context=nil)
                UnexpectedObjectExceptionTestPrx_mixin::OP_op.invoke(self, [], context)
            end
        end

        class UnexpectedObjectExceptionTestPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include UnexpectedObjectExceptionTestPrx_mixin
        end

        T_UnexpectedObjectExceptionTestPrx.defineProxy(UnexpectedObjectExceptionTestPrx, nil, [])

        UnexpectedObjectExceptionTestPrx_mixin::OP_op = Ice::__defineOperation('op', Ice::OperationMode::Normal, nil, [], [], [::Test::T_AlsoEmpty, false, 0], [])
    end

    if not defined?(::Test::T_COneMember)
        T_COneMember = Ice::__declareClass('::Test::COneMember')
    end

    if not defined?(::Test::COneMember)
        class COneMember < Ice::Value

            def initialize(e=nil)
                @e = e
            end

            attr_accessor :e
        end

        T_COneMember.defineClass(COneMember, -1, false, nil, [['e', ::Test::T_Empty, false, 0]])
    end

    if not defined?(::Test::T_CTwoMembers)
        T_CTwoMembers = Ice::__declareClass('::Test::CTwoMembers')
    end

    if not defined?(::Test::CTwoMembers)
        class CTwoMembers < Ice::Value

            def initialize(e1=nil, e2=nil)
                @e1 = e1
                @e2 = e2
            end

            attr_accessor :e1, :e2
        end

        T_CTwoMembers.defineClass(CTwoMembers, -1, false, nil, [
            ['e1', ::Test::T_Empty, false, 0],
            ['e2', ::Test::T_Empty, false, 0]
        ])
    end

    if not defined?(::Test::EOneMember)
        class EOneMember < Ice::UserException
            def to_s
                '::Test::EOneMember'
            end

            attr_accessor :e
        end

        T_EOneMember = Ice::__defineException('::Test::EOneMember', EOneMember, nil, [["e", ::Test::T_Empty, false, 0]])
    end

    if not defined?(::Test::ETwoMembers)
        class ETwoMembers < Ice::UserException
            def to_s
                '::Test::ETwoMembers'
            end

            attr_accessor :e1, :e2
        end

        T_ETwoMembers = Ice::__defineException('::Test::ETwoMembers', ETwoMembers, nil, [
            ["e1", ::Test::T_Empty, false, 0],
            ["e2", ::Test::T_Empty, false, 0]
        ])
    end

    if not defined?(::Test::SOneMember)
        class SOneMember
            include Ice::Inspect_mixin
            def initialize(e=nil)
                @e = e
            end

            def hash
                _h = 0
                _h = 5 * _h + @e.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::SOneMember or
                    @e != other.e
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :e
        end

        T_SOneMember = Ice::__defineStruct('::Test::SOneMember', SOneMember, [["e", ::Test::T_Empty]])
    end

    if not defined?(::Test::STwoMembers)
        class STwoMembers
            include Ice::Inspect_mixin
            def initialize(e1=nil, e2=nil)
                @e1 = e1
                @e2 = e2
            end

            def hash
                _h = 0
                _h = 5 * _h + @e1.hash
                _h = 5 * _h + @e2.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::STwoMembers or
                    @e1 != other.e1 or
                    @e2 != other.e2
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :e1, :e2
        end

        T_STwoMembers = Ice::__defineStruct('::Test::STwoMembers', STwoMembers, [
            ["e1", ::Test::T_Empty],
            ["e2", ::Test::T_Empty]
        ])
    end

    if not defined?(::Test::T_DOneMember)
        T_DOneMember = Ice::__defineDictionary('::Test::DOneMember', Ice::T_int, ::Test::T_COneMember)
    end

    if not defined?(::Test::T_DTwoMembers)
        T_DTwoMembers = Ice::__defineDictionary('::Test::DTwoMembers', Ice::T_int, ::Test::T_CTwoMembers)
    end
end
