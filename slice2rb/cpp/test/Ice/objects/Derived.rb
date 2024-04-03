# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `Derived.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'
require_relative 'Test.rb'
require_relative 'Forward.rb'

module ::Test

    if not defined?(::Test::Derived_Mixin)

        module ::Test::Derived_Mixin
        end
        class Derived < ::Test::Base

            def initialize(theS=::Test::S.new, str='', b='')
                super(theS, str)
                @b = b
            end

            attr_accessor :b
        end

        if not defined?(::Test::T_Derived)
            T_Derived = ::Ice::__declareClass('::Test::Derived')
        end

        T_Derived.defineClass(Derived, -1, false, ::Test::T_Base, [['b', ::Ice::T_string, false, 0]])
    end
end
