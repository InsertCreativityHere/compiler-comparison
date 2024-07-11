# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `NoPackage.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'

module ::Test1

    if not defined?(::Test1::C1_Mixin)

        module ::Test1::C1_Mixin
        end
        class C1 < ::Ice::Value

            def initialize(i=0)
                @i = i
            end

            attr_accessor :i
        end

        if not defined?(::Test1::T_C1)
            T_C1 = ::Ice::__declareClass('::Test1::C1')
        end

        T_C1.defineClass(C1, -1, false, nil, [['i', ::Ice::T_int, false, 0]])
    end

    if not defined?(::Test1::C2_Mixin)

        module ::Test1::C2_Mixin
        end
        class C2 < ::Test1::C1

            def initialize(i=0, l=0)
                super(i)
                @l = l
            end

            attr_accessor :l
        end

        if not defined?(::Test1::T_C2)
            T_C2 = ::Ice::__declareClass('::Test1::C2')
        end

        T_C2.defineClass(C2, -1, false, ::Test1::T_C1, [['l', ::Ice::T_long, false, 0]])
    end

    if not defined?(::Test1::E1)
        class E1 < Ice::UserException
            def to_s
                '::Test1::E1'
            end

            attr_accessor :i
        end

        T_E1 = ::Ice::__defineException('::Test1::E1', E1, nil, [["i", ::Ice::T_int, false, 0]])
    end

    if not defined?(::Test1::E2)
        class E2 < ::Test1::E1
            def to_s
                '::Test1::E2'
            end

            attr_accessor :l
        end

        T_E2 = ::Ice::__defineException('::Test1::E2', E2, ::Test1::T_E1, [["l", ::Ice::T_long, false, 0]])
    end

    if not defined?(::Test1::Notify)
        class Notify < Ice::UserException
            def to_s
                '::Test1::notify'
            end

            attr_accessor :i
        end

        T_Notify = ::Ice::__defineException('::Test1::notify', Notify, nil, [["i", ::Ice::T_int, false, 0]])
    end
end
