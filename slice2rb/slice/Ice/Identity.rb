# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `Identity.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'

module ::Ice

    if not defined?(::Ice::Identity)
        class Identity
            include ::Ice::Inspect_mixin
            def initialize(name='', category='')
                @name = name
                @category = category
            end

            def hash
                _h = 0
                _h = 5 * _h + @name.hash
                _h = 5 * _h + @category.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Ice::Identity or
                    @name != other.name or
                    @category != other.category
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :name, :category
        end

        T_Identity = ::Ice::__defineStruct('::Ice::Identity', Identity, [
            ["name", ::Ice::T_string],
            ["category", ::Ice::T_string]
        ])
    end

    if not defined?(::Ice::T_ObjectDict)
        T_ObjectDict = ::Ice::__defineDictionary('::Ice::ObjectDict', ::Ice::T_Identity, ::Ice::T_Value)
    end

    if not defined?(::Ice::T_IdentitySeq)
        T_IdentitySeq = ::Ice::__defineSequence('::Ice::IdentitySeq', ::Ice::T_Identity)
    end
end
