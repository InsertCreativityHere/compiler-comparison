# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `File1.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'

module ::Test

    if not defined?(::Test::Interface1_Mixin)

        module ::Test::Interface1_Mixin
        end
        module Interface1Prx_mixin

            def _method(context=nil)
                Interface1Prx_mixin::OP_method.invoke(self, [], context)
            end
        end

        class Interface1Prx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include Interface1Prx_mixin
        end

        if not defined?(::Test::T_Interface1Prx)
            T_Interface1 = ::Ice::__declareClass('::Test::Interface1')
            T_Interface1Prx = ::Ice::__declareProxy('::Test::Interface1')
        end

        T_Interface1Prx.defineProxy(Interface1Prx, nil, [])

        Interface1Prx_mixin::OP_method = ::Ice::__defineOperation('method', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end

module ::Test2

    if not defined?(::Test2::Class1_Mixin)

        module ::Test2::Class1_Mixin
        end
        class Class1 < ::Ice::Value
        end

        if not defined?(::Test2::T_Class1)
            T_Class1 = ::Ice::__declareClass('::Test2::Class1')
        end

        T_Class1.defineClass(Class1, -1, false, nil, [])
    end
end
