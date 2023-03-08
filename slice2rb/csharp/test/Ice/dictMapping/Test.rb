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

    if not defined?(::Test::T_NV)
        T_NV = ::Ice::__defineDictionary('::Test::NV', ::Ice::T_int, ::Ice::T_int)
    end

    if not defined?(::Test::T_NR)
        T_NR = ::Ice::__defineDictionary('::Test::NR', ::Ice::T_string, ::Ice::T_string)
    end

    if not defined?(::Test::T_NDV)
        T_NDV = ::Ice::__defineDictionary('::Test::NDV', ::Ice::T_string, ::Test::T_NV)
    end

    if not defined?(::Test::T_NDR)
        T_NDR = ::Ice::__defineDictionary('::Test::NDR', ::Ice::T_string, ::Test::T_NR)
    end

    if not defined?(::Test::T_IntSeq)
        T_IntSeq = ::Ice::__defineSequence('::Test::IntSeq', ::Ice::T_int)
    end

    if not defined?(::Test::TEstNv)
        class TEstNv
            include ::Ice::Inspect_mixin
            def initialize(d=nil, s=nil)
                @d = d
                @s = s
            end

            def hash
                _h = 0
                _h = 5 * _h + @d.hash
                _h = 5 * _h + @s.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::TEstNv or
                    @d != other.d or
                    @s != other.s
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :d, :s
        end

        T_TEstNv = ::Ice::__defineStruct('::Test::TEstNv', TEstNv, [
            ["d", ::Test::T_NV],
            ["s", ::Test::T_IntSeq]
        ])
    end

    if not defined?(::Test::T_AIS)
        T_AIS = ::Ice::__defineSequence('::Test::AIS', ::Ice::T_int)
    end

    if not defined?(::Test::T_GIS)
        T_GIS = ::Ice::__defineSequence('::Test::GIS', ::Ice::T_int)
    end

    if not defined?(::Test::T_ASS)
        T_ASS = ::Ice::__defineSequence('::Test::ASS', ::Ice::T_string)
    end

    if not defined?(::Test::T_GSS)
        T_GSS = ::Ice::__defineSequence('::Test::GSS', ::Ice::T_string)
    end

    if not defined?(::Test::T_NDAIS)
        T_NDAIS = ::Ice::__defineDictionary('::Test::NDAIS', ::Ice::T_string, ::Test::T_AIS)
    end

    if not defined?(::Test::T_NDGIS)
        T_NDGIS = ::Ice::__defineDictionary('::Test::NDGIS', ::Ice::T_string, ::Test::T_GIS)
    end

    if not defined?(::Test::T_NDASS)
        T_NDASS = ::Ice::__defineDictionary('::Test::NDASS', ::Ice::T_string, ::Test::T_ASS)
    end

    if not defined?(::Test::T_NDGSS)
        T_NDGSS = ::Ice::__defineDictionary('::Test::NDGSS', ::Ice::T_string, ::Test::T_GSS)
    end

    if not defined?(::Test::MyClass_Mixin)

        module ::Test::MyClass_Mixin
        end
        module MyClassPrx_mixin

            def shutdown(context=nil)
                MyClassPrx_mixin::OP_shutdown.invoke(self, [], context)
            end

            def opNV(i, context=nil)
                MyClassPrx_mixin::OP_opNV.invoke(self, [i], context)
            end

            def opNR(i, context=nil)
                MyClassPrx_mixin::OP_opNR.invoke(self, [i], context)
            end

            def opNDV(i, context=nil)
                MyClassPrx_mixin::OP_opNDV.invoke(self, [i], context)
            end

            def opNDR(i, context=nil)
                MyClassPrx_mixin::OP_opNDR.invoke(self, [i], context)
            end

            def opNDAIS(i, context=nil)
                MyClassPrx_mixin::OP_opNDAIS.invoke(self, [i], context)
            end

            def opNDGIS(i, context=nil)
                MyClassPrx_mixin::OP_opNDGIS.invoke(self, [i], context)
            end

            def opNDASS(i, context=nil)
                MyClassPrx_mixin::OP_opNDASS.invoke(self, [i], context)
            end

            def opNDGSS(i, context=nil)
                MyClassPrx_mixin::OP_opNDGSS.invoke(self, [i], context)
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

        T_MyClass.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_MyClassPrx.defineProxy(MyClassPrx, nil, [])

        MyClassPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        MyClassPrx_mixin::OP_opNV = ::Ice::__defineOperation('opNV', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::T_NV, false, 0]], [[::Test::T_NV, false, 0]], [::Test::T_NV, false, 0], [])
        MyClassPrx_mixin::OP_opNR = ::Ice::__defineOperation('opNR', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::T_NR, false, 0]], [[::Test::T_NR, false, 0]], [::Test::T_NR, false, 0], [])
        MyClassPrx_mixin::OP_opNDV = ::Ice::__defineOperation('opNDV', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::T_NDV, false, 0]], [[::Test::T_NDV, false, 0]], [::Test::T_NDV, false, 0], [])
        MyClassPrx_mixin::OP_opNDR = ::Ice::__defineOperation('opNDR', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::T_NDR, false, 0]], [[::Test::T_NDR, false, 0]], [::Test::T_NDR, false, 0], [])
        MyClassPrx_mixin::OP_opNDAIS = ::Ice::__defineOperation('opNDAIS', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::T_NDAIS, false, 0]], [[::Test::T_NDAIS, false, 0]], [::Test::T_NDAIS, false, 0], [])
        MyClassPrx_mixin::OP_opNDGIS = ::Ice::__defineOperation('opNDGIS', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::T_NDGIS, false, 0]], [[::Test::T_NDGIS, false, 0]], [::Test::T_NDGIS, false, 0], [])
        MyClassPrx_mixin::OP_opNDASS = ::Ice::__defineOperation('opNDASS', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::T_NDASS, false, 0]], [[::Test::T_NDASS, false, 0]], [::Test::T_NDASS, false, 0], [])
        MyClassPrx_mixin::OP_opNDGSS = ::Ice::__defineOperation('opNDGSS', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::T_NDGSS, false, 0]], [[::Test::T_NDGSS, false, 0]], [::Test::T_NDGSS, false, 0], [])
    end
end
