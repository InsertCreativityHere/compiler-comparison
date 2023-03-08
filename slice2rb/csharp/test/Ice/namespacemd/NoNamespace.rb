# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `NoNamespace.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'

module ::NoNamespace

    if not defined?(::NoNamespace::C1_Mixin)

        module ::NoNamespace::C1_Mixin
        end
        class C1 < ::Ice::Value

            def initialize(i=0)
                @i = i
            end

            attr_accessor :i
        end

        if not defined?(::NoNamespace::T_C1)
            T_C1 = ::Ice::__declareClass('::NoNamespace::C1')
        end

        T_C1.defineClass(C1, -1, false, false, nil, [['i', ::Ice::T_int, false, 0]])
    end

    if not defined?(::NoNamespace::C2_Mixin)

        module ::NoNamespace::C2_Mixin
        end
        class C2 < ::NoNamespace::C1

            def initialize(i=0, l=0)
                super(i)
                @l = l
            end

            attr_accessor :l
        end

        if not defined?(::NoNamespace::T_C2)
            T_C2 = ::Ice::__declareClass('::NoNamespace::C2')
        end

        T_C2.defineClass(C2, -1, false, false, ::NoNamespace::T_C1, [['l', ::Ice::T_long, false, 0]])
    end

    if not defined?(::NoNamespace::E1)
        class E1 < Ice::UserException
            def initialize(i=0)
                @i = i
            end

            def to_s
                '::NoNamespace::E1'
            end

            attr_accessor :i
        end

        T_E1 = ::Ice::__defineException('::NoNamespace::E1', E1, false, nil, [["i", ::Ice::T_int, false, 0]])
    end

    if not defined?(::NoNamespace::E2)
        class E2 < ::NoNamespace::E1
            def initialize(i=0, l=0)
                super(i)
                @l = l
            end

            def to_s
                '::NoNamespace::E2'
            end

            attr_accessor :l
        end

        T_E2 = ::Ice::__defineException('::NoNamespace::E2', E2, false, ::NoNamespace::T_E1, [["l", ::Ice::T_long, false, 0]])
    end

    if not defined?(::NoNamespace::Notify)
        class Notify < Ice::UserException
            def initialize(i=0)
                @i = i
            end

            def to_s
                '::NoNamespace::notify'
            end

            attr_accessor :i
        end

        T_Notify = ::Ice::__defineException('::NoNamespace::notify', Notify, false, nil, [["i", ::Ice::T_int, false, 0]])
    end
end
