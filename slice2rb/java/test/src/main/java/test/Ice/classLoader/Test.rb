# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `Test.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'

module ::Test

    if not defined?(::Test::ConcreteClass_Mixin)

        module ::Test::ConcreteClass_Mixin
        end
        class ConcreteClass < ::Ice::Value

            def initialize(i=0)
                @i = i
            end

            attr_accessor :i
        end

        if not defined?(::Test::T_ConcreteClass)
            T_ConcreteClass = ::Ice::__declareClass('::Test::ConcreteClass')
        end

        T_ConcreteClass.defineClass(ConcreteClass, -1, false, false, nil, [['i', ::Ice::T_int, false, 0]])
    end

    if not defined?(::Test::E)
        class E < Ice::UserException
            def initialize
            end

            def to_s
                '::Test::E'
            end
        end

        T_E = ::Ice::__defineException('::Test::E', E, false, nil, [])
    end

    if not defined?(::Test::Initial_Mixin)

        module ::Test::Initial_Mixin
        end
        module InitialPrx_mixin

            def getConcreteClass(context=nil)
                InitialPrx_mixin::OP_getConcreteClass.invoke(self, [], context)
            end

            def throwException(context=nil)
                InitialPrx_mixin::OP_throwException.invoke(self, [], context)
            end

            def shutdown(context=nil)
                InitialPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class InitialPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include InitialPrx_mixin
        end

        if not defined?(::Test::T_InitialPrx)
            T_Initial = ::Ice::__declareClass('::Test::Initial')
            T_InitialPrx = ::Ice::__declareProxy('::Test::Initial')
        end

        T_Initial.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_InitialPrx.defineProxy(InitialPrx, nil, [])

        InitialPrx_mixin::OP_getConcreteClass = ::Ice::__defineOperation('getConcreteClass', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::T_ConcreteClass, false, 0], [])
        InitialPrx_mixin::OP_throwException = ::Ice::__defineOperation('throwException', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [::Test::T_E])
        InitialPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end
