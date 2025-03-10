# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'OperationMode.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

require 'Ice'

module ::Ice
    if not defined?(::Ice::OperationMode)
        class OperationMode
            include Comparable

            def initialize(name, value)
                @name = name
                @value = value
            end

            def OperationMode.from_int(val)
                @@_enumerators[val]
            end

            def to_s
                @name
            end

            def to_i
                @value
            end

            def <=>(other)
                other.is_a?(OperationMode) or raise ArgumentError, "value must be a OperationMode"
                @value <=> other.to_i
            end

            def hash
                @value.hash
            end

            def OperationMode.each(&block)
                @@_enumerators.each_value(&block)
            end

            Normal = OperationMode.new("Normal", 0)
            Nonmutating = OperationMode.new("Nonmutating", 1)
            Idempotent = OperationMode.new("Idempotent", 2)

            @@_enumerators = {0=>Normal, 1=>Nonmutating, 2=>Idempotent}

            def OperationMode._enumerators
                @@_enumerators
            end

            private_class_method :new
        end

        T_OperationMode = Ice::__defineEnum('::Ice::OperationMode', OperationMode, OperationMode::_enumerators)
    end
end
