# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
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

    if not defined?(::Test::T_Context)
        T_Context = ::Ice::__defineDictionary('::Test::Context', ::Ice::T_string, ::Ice::T_string)
    end

    if not defined?(::Test::MyClass_Mixin)

        module ::Test::MyClass_Mixin
        end
        module MyClassPrx_mixin

            def shutdown(context=nil)
                MyClassPrx_mixin::OP_shutdown.invoke(self, [], context)
            end

            def getContext(context=nil)
                MyClassPrx_mixin::OP_getContext.invoke(self, [], context)
            end
        end

        class MyClassPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include MyClassPrx_mixin
        end

        if not defined?(::Test::T_MyClassPrx)
            T_MyClass = ::Ice::__declareClass('::Test::MyClass')
            T_MyClassPrx = ::Ice::__declareProxy('::Test::MyClass')
        end

        T_MyClassPrx.defineProxy(MyClassPrx, nil, [])

        MyClassPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        MyClassPrx_mixin::OP_getContext = ::Ice::__defineOperation('getContext', ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::T_Context, false, 0], [])
    end

    if not defined?(::Test::MyDerivedClass_Mixin)

        module ::Test::MyDerivedClass_Mixin
        end
        module MyDerivedClassPrx_mixin
            include ::Test::MyClassPrx_mixin

            def echo(obj, context=nil)
                MyDerivedClassPrx_mixin::OP_echo.invoke(self, [obj], context)
            end
        end

        class MyDerivedClassPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include MyDerivedClassPrx_mixin
        end

        if not defined?(::Test::T_MyDerivedClassPrx)
            T_MyDerivedClass = ::Ice::__declareClass('::Test::MyDerivedClass')
            T_MyDerivedClassPrx = ::Ice::__declareProxy('::Test::MyDerivedClass')
        end

        T_MyDerivedClassPrx.defineProxy(MyDerivedClassPrx, nil, [::Test::T_MyClassPrx])

        MyDerivedClassPrx_mixin::OP_echo = ::Ice::__defineOperation('echo', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_ObjectPrx, false, 0]], [], [::Ice::T_ObjectPrx, false, 0], [])
    end
end
