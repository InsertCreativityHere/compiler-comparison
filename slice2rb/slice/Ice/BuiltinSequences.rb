# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'BuiltinSequences.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

require 'Ice'

module ::Ice
    if not defined?(::Ice::T_BoolSeq)
        T_BoolSeq = Ice::__defineSequence('::Ice::BoolSeq', Ice::T_bool)
    end

    if not defined?(::Ice::T_ByteSeq)
        T_ByteSeq = Ice::__defineSequence('::Ice::ByteSeq', Ice::T_byte)
    end

    if not defined?(::Ice::T_ShortSeq)
        T_ShortSeq = Ice::__defineSequence('::Ice::ShortSeq', Ice::T_short)
    end

    if not defined?(::Ice::T_IntSeq)
        T_IntSeq = Ice::__defineSequence('::Ice::IntSeq', Ice::T_int)
    end

    if not defined?(::Ice::T_LongSeq)
        T_LongSeq = Ice::__defineSequence('::Ice::LongSeq', Ice::T_long)
    end

    if not defined?(::Ice::T_FloatSeq)
        T_FloatSeq = Ice::__defineSequence('::Ice::FloatSeq', Ice::T_float)
    end

    if not defined?(::Ice::T_DoubleSeq)
        T_DoubleSeq = Ice::__defineSequence('::Ice::DoubleSeq', Ice::T_double)
    end

    if not defined?(::Ice::T_StringSeq)
        T_StringSeq = Ice::__defineSequence('::Ice::StringSeq', Ice::T_string)
    end

    if not defined?(::Ice::T_ObjectSeq)
        T_ObjectSeq = Ice::__defineSequence('::Ice::ObjectSeq', Ice::T_Value)
    end

    if not defined?(::Ice::T_ObjectProxySeq)
        T_ObjectProxySeq = Ice::__defineSequence('::Ice::ObjectProxySeq', Ice::T_ObjectPrx)
    end
end
