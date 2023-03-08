# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `InterceptorTest.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'

module ::Test

    if not defined?(::Test::InvalidInputException)
        class InvalidInputException < Ice::UserException
            def initialize(reason='')
                @reason = reason
            end

            def to_s
                '::Test::InvalidInputException'
            end

            attr_accessor :reason
        end

        T_InvalidInputException = ::Ice::__defineException('::Test::InvalidInputException', InvalidInputException, false, nil, [["reason", ::Ice::T_string, false, 0]])
    end

    if not defined?(::Test::RetryException)
        class RetryException < Ice::LocalException
            def initialize
            end

            def to_s
                '::Test::RetryException'
            end
        end

        T_RetryException = ::Ice::__defineException('::Test::RetryException', RetryException, false, nil, [])
    end

    if not defined?(::Test::MyObject_Mixin)

        module ::Test::MyObject_Mixin
        end
        module MyObjectPrx_mixin

            def add(x, y, context=nil)
                MyObjectPrx_mixin::OP_add.invoke(self, [x, y], context)
            end

            def addWithRetry(x, y, context=nil)
                MyObjectPrx_mixin::OP_addWithRetry.invoke(self, [x, y], context)
            end

            def badAdd(x, y, context=nil)
                MyObjectPrx_mixin::OP_badAdd.invoke(self, [x, y], context)
            end

            def notExistAdd(x, y, context=nil)
                MyObjectPrx_mixin::OP_notExistAdd.invoke(self, [x, y], context)
            end

            def badSystemAdd(x, y, context=nil)
                MyObjectPrx_mixin::OP_badSystemAdd.invoke(self, [x, y], context)
            end
        end

        class MyObjectPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include MyObjectPrx_mixin
        end

        if not defined?(::Test::T_MyObjectPrx)
            T_MyObject = ::Ice::__declareClass('::Test::MyObject')
            T_MyObjectPrx = ::Ice::__declareProxy('::Test::MyObject')
        end

        T_MyObject.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_MyObjectPrx.defineProxy(MyObjectPrx, nil, [])

        MyObjectPrx_mixin::OP_add = ::Ice::__defineOperation('add', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [], [::Ice::T_int, false, 0], [])
        MyObjectPrx_mixin::OP_addWithRetry = ::Ice::__defineOperation('addWithRetry', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [], [::Ice::T_int, false, 0], [])
        MyObjectPrx_mixin::OP_badAdd = ::Ice::__defineOperation('badAdd', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [], [::Ice::T_int, false, 0], [::Test::T_InvalidInputException])
        MyObjectPrx_mixin::OP_notExistAdd = ::Ice::__defineOperation('notExistAdd', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [], [::Ice::T_int, false, 0], [])
        MyObjectPrx_mixin::OP_badSystemAdd = ::Ice::__defineOperation('badSystemAdd', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [], [::Ice::T_int, false, 0], [])
    end
end
