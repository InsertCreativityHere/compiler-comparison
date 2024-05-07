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

    if not defined?(::Test::BadEncodingException)
        class BadEncodingException < Ice::UserException
            def initialize
            end

            def to_s
                '::Test::BadEncodingException'
            end
        end

        T_BadEncodingException = ::Ice::__defineException('::Test::BadEncodingException', BadEncodingException, nil, [])
    end

    if not defined?(::Test::MyObject_Mixin)

        module ::Test::MyObject_Mixin
        end
        module MyObjectPrx_mixin

            def widen(msg, context=nil)
                MyObjectPrx_mixin::OP_widen.invoke(self, [msg], context)
            end

            def narrow(wmsg, context=nil)
                MyObjectPrx_mixin::OP_narrow.invoke(self, [wmsg], context)
            end

            def shutdown(context=nil)
                MyObjectPrx_mixin::OP_shutdown.invoke(self, [], context)
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

        T_MyObjectPrx.defineProxy(MyObjectPrx, nil, [])

        MyObjectPrx_mixin::OP_widen = ::Ice::__defineOperation('widen', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0]], [], [::Ice::T_string, false, 0], [::Test::T_BadEncodingException])
        MyObjectPrx_mixin::OP_narrow = ::Ice::__defineOperation('narrow', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0]], [], [::Ice::T_string, false, 0], [])
        MyObjectPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end
