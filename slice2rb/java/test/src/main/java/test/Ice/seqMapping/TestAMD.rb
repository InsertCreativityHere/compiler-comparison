# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `TestAMD.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'

module ::Test

    if not defined?(::Test::T_SerialSmall)
        T_SerialSmall = ::Ice::__defineSequence('::Test::SerialSmall', ::Ice::T_byte)
    end

    if not defined?(::Test::T_SerialLarge)
        T_SerialLarge = ::Ice::__defineSequence('::Test::SerialLarge', ::Ice::T_byte)
    end

    if not defined?(::Test::T_SerialStruct)
        T_SerialStruct = ::Ice::__defineSequence('::Test::SerialStruct', ::Ice::T_byte)
    end

    if not defined?(::Test::MyClass_Mixin)

        module ::Test::MyClass_Mixin
        end
        module MyClassPrx_mixin

            def shutdown(context=nil)
                MyClassPrx_mixin::OP_shutdown.invoke(self, [], context)
            end

            def opSerialSmallJava(i, context=nil)
                MyClassPrx_mixin::OP_opSerialSmallJava.invoke(self, [i], context)
            end

            def opSerialLargeJava(i, context=nil)
                MyClassPrx_mixin::OP_opSerialLargeJava.invoke(self, [i], context)
            end

            def opSerialStructJava(i, context=nil)
                MyClassPrx_mixin::OP_opSerialStructJava.invoke(self, [i], context)
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

        MyClassPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, true, nil, [], [], nil, [])
        MyClassPrx_mixin::OP_opSerialSmallJava = ::Ice::__defineOperation('opSerialSmallJava', ::Ice::OperationMode::Normal, true, nil, [[::Test::T_SerialSmall, false, 0]], [[::Test::T_SerialSmall, false, 0]], [::Test::T_SerialSmall, false, 0], [])
        MyClassPrx_mixin::OP_opSerialLargeJava = ::Ice::__defineOperation('opSerialLargeJava', ::Ice::OperationMode::Normal, true, nil, [[::Test::T_SerialLarge, false, 0]], [[::Test::T_SerialLarge, false, 0]], [::Test::T_SerialLarge, false, 0], [])
        MyClassPrx_mixin::OP_opSerialStructJava = ::Ice::__defineOperation('opSerialStructJava', ::Ice::OperationMode::Normal, true, nil, [[::Test::T_SerialStruct, false, 0]], [[::Test::T_SerialStruct, false, 0]], [::Test::T_SerialStruct, false, 0], [])
    end

    if not defined?(::Test::T_SLS)
        T_SLS = ::Ice::__defineSequence('::Test::SLS', ::Test::T_SerialLarge)
    end

    if not defined?(::Test::T_SLSS)
        T_SLSS = ::Ice::__defineSequence('::Test::SLSS', ::Test::T_SLS)
    end

    if not defined?(::Test::T_SLD)
        T_SLD = ::Ice::__defineDictionary('::Test::SLD', ::Ice::T_int, ::Test::T_SerialLarge)
    end

    if not defined?(::Test::T_SLSD)
        T_SLSD = ::Ice::__defineDictionary('::Test::SLSD', ::Ice::T_int, ::Test::T_SLS)
    end

    if not defined?(::Test::Foo)
        class Foo
            include ::Ice::Inspect_mixin
            def initialize(sLmem=nil, sLSmem=nil)
                @SLmem = sLmem
                @SLSmem = sLSmem
            end

            def hash
                _h = 0
                _h = 5 * _h + @SLmem.hash
                _h = 5 * _h + @SLSmem.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::Foo or
                    @SLmem != other.SLmem or
                    @SLSmem != other.SLSmem
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :SLmem, :SLSmem
        end

        T_Foo = ::Ice::__defineStruct('::Test::Foo', Foo, [
            ["SLmem", ::Test::T_SerialLarge],
            ["SLSmem", ::Test::T_SLS]
        ])
    end

    if not defined?(::Test::Bar)
        class Bar < Ice::UserException
            def to_s
                '::Test::Bar'
            end

            attr_accessor :SLmem, :SLSmem
        end

        T_Bar = ::Ice::__defineException('::Test::Bar', Bar, nil, [
            ["SLmem", ::Test::T_SerialLarge, false, 0],
            ["SLSmem", ::Test::T_SLS, false, 0]
        ])
    end

    if not defined?(::Test::Baz_Mixin)

        module ::Test::Baz_Mixin
        end
        class Baz < ::Ice::Value

            def initialize(sLmem=nil, sLSmem=nil)
                @SLmem = sLmem
                @SLSmem = sLSmem
            end

            attr_accessor :SLmem, :SLSmem
        end

        if not defined?(::Test::T_Baz)
            T_Baz = ::Ice::__declareClass('::Test::Baz')
        end

        T_Baz.defineClass(Baz, -1, false, nil, [
            ['SLmem', ::Test::T_SerialLarge, false, 0],
            ['SLSmem', ::Test::T_SLS, false, 0]
        ])
    end
end
