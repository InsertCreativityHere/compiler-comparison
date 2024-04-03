# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `ServerPrivateAMD.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'
require_relative 'TestAMD.rb'

module ::Test

    if not defined?(::Test::UnknownDerived)
        class UnknownDerived < ::Test::Base
            def initialize(b='', ud='')
                super(b)
                @ud = ud
            end

            def to_s
                '::Test::UnknownDerived'
            end

            attr_accessor :ud
        end

        T_UnknownDerived = ::Ice::__defineException('::Test::UnknownDerived', UnknownDerived, ::Test::T_Base, [["ud", ::Ice::T_string, false, 0]])
    end

    if not defined?(::Test::UnknownIntermediate)
        class UnknownIntermediate < ::Test::Base
            def initialize(b='', ui='')
                super(b)
                @ui = ui
            end

            def to_s
                '::Test::UnknownIntermediate'
            end

            attr_accessor :ui
        end

        T_UnknownIntermediate = ::Ice::__defineException('::Test::UnknownIntermediate', UnknownIntermediate, ::Test::T_Base, [["ui", ::Ice::T_string, false, 0]])
    end

    if not defined?(::Test::UnknownMostDerived1)
        class UnknownMostDerived1 < ::Test::KnownIntermediate
            def initialize(b='', ki='', umd1='')
                super(b, ki)
                @umd1 = umd1
            end

            def to_s
                '::Test::UnknownMostDerived1'
            end

            attr_accessor :umd1
        end

        T_UnknownMostDerived1 = ::Ice::__defineException('::Test::UnknownMostDerived1', UnknownMostDerived1, ::Test::T_KnownIntermediate, [["umd1", ::Ice::T_string, false, 0]])
    end

    if not defined?(::Test::UnknownMostDerived2)
        class UnknownMostDerived2 < ::Test::UnknownIntermediate
            def initialize(b='', ui='', umd2='')
                super(b, ui)
                @umd2 = umd2
            end

            def to_s
                '::Test::UnknownMostDerived2'
            end

            attr_accessor :umd2
        end

        T_UnknownMostDerived2 = ::Ice::__defineException('::Test::UnknownMostDerived2', UnknownMostDerived2, ::Test::T_UnknownIntermediate, [["umd2", ::Ice::T_string, false, 0]])
    end
end
