# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'Test.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

require 'Ice'

module ::Test
    if not defined?(::Test::UserError)
        class UserError < Ice::UserException
            def to_s
                '::Test::UserError'
            end

            attr_accessor :message
        end

        T_UserError = Ice::__defineException('::Test::UserError', UserError, nil, [["message", Ice::T_string, false, 0]])
    end

    if not defined?(::Test::T_MyInterfacePrx)
        T_MyInterfacePrx = Ice::__declareProxy('::Test::MyInterface')
    end

    if not defined?(::Test::MyInterfacePrx)
        module MyInterfacePrx_mixin
            def op(throwIt, context=nil)
                MyInterfacePrx_mixin::OP_op.invoke(self, [throwIt], context)
            end
        end

        class MyInterfacePrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include MyInterfacePrx_mixin
        end

        T_MyInterfacePrx.defineProxy(MyInterfacePrx, nil, [])

        MyInterfacePrx_mixin::OP_op = Ice::__defineOperation('op', Ice::OperationMode::Normal, nil, [[Ice::T_bool, false, 0]], [], nil, [::Test::T_UserError])
    end
end
