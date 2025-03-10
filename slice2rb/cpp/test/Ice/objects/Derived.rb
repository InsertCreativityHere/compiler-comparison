# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'Derived.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

require 'Ice'
require_relative 'Test.rb'
require_relative 'Forward.rb'

module ::Test
    if not defined?(::Test::T_Derived)
        T_Derived = Ice::__declareClass('::Test::Derived')
    end

    if not defined?(::Test::Derived)
        class Derived < ::Test::Base

            def initialize(theS=::Test::S.new, str='', b='')
                super(theS, str)
                @b = b
            end

            attr_accessor :b
        end

        T_Derived.defineClass(Derived, -1, false, ::Test::T_Base, [['b', Ice::T_string, false, 0]])
    end
end
