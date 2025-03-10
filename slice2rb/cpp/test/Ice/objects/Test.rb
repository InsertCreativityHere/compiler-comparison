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
    if not defined?(::Test::S)
        class S
            include Ice::Inspect_mixin
            def initialize(str='')
                @str = str
            end

            def hash
                _h = 0
                _h = 5 * _h + @str.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::S or
                    @str != other.str
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :str
        end

        T_S = Ice::__defineStruct('::Test::S', S, [["str", Ice::T_string]])
    end

    if not defined?(::Test::T_Base)
        T_Base = Ice::__declareClass('::Test::Base')
    end

    if not defined?(::Test::Base)
        class Base < Ice::Value

            def initialize(theS=::Test::S.new, str='')
                @theS = theS
                @str = str
            end

            attr_accessor :theS, :str
        end

        T_Base.defineClass(Base, -1, false, nil, [
            ['theS', ::Test::T_S, false, 0],
            ['str', Ice::T_string, false, 0]
        ])
    end

    if not defined?(::Test::BaseEx)
        class BaseEx < Ice::UserException
            def to_s
                '::Test::BaseEx'
            end

            attr_accessor :reason
        end

        T_BaseEx = Ice::__defineException('::Test::BaseEx', BaseEx, nil, [["reason", Ice::T_string, false, 0]])
    end

    if not defined?(::Test::T_B)
        T_B = Ice::__declareClass('::Test::B')
    end

    if not defined?(::Test::T_C)
        T_C = Ice::__declareClass('::Test::C')
    end

    if not defined?(::Test::T_A)
        T_A = Ice::__declareClass('::Test::A')
    end

    if not defined?(::Test::A)
        class A < Ice::Value

            def initialize(theB=nil, theC=nil, preMarshalInvoked=false, postUnmarshalInvoked=false)
                @theB = theB
                @theC = theC
                @preMarshalInvoked = preMarshalInvoked
                @postUnmarshalInvoked = postUnmarshalInvoked
            end

            attr_accessor :theB, :theC, :preMarshalInvoked, :postUnmarshalInvoked
        end

        T_A.defineClass(A, -1, false, nil, [
            ['theB', ::Test::T_B, false, 0],
            ['theC', ::Test::T_C, false, 0],
            ['preMarshalInvoked', Ice::T_bool, false, 0],
            ['postUnmarshalInvoked', Ice::T_bool, false, 0]
        ])
    end

    if not defined?(::Test::B)
        class B < ::Test::A

            def initialize(theB=nil, theC=nil, preMarshalInvoked=false, postUnmarshalInvoked=false, theA=nil)
                super(theB, theC, preMarshalInvoked, postUnmarshalInvoked)
                @theA = theA
            end

            attr_accessor :theA
        end

        T_B.defineClass(B, -1, false, ::Test::T_A, [['theA', ::Test::T_A, false, 0]])
    end

    if not defined?(::Test::C)
        class C < Ice::Value

            def initialize(theB=nil, preMarshalInvoked=false, postUnmarshalInvoked=false)
                @theB = theB
                @preMarshalInvoked = preMarshalInvoked
                @postUnmarshalInvoked = postUnmarshalInvoked
            end

            attr_accessor :theB, :preMarshalInvoked, :postUnmarshalInvoked
        end

        T_C.defineClass(C, -1, false, nil, [
            ['theB', ::Test::T_B, false, 0],
            ['preMarshalInvoked', Ice::T_bool, false, 0],
            ['postUnmarshalInvoked', Ice::T_bool, false, 0]
        ])
    end

    if not defined?(::Test::T_D)
        T_D = Ice::__declareClass('::Test::D')
    end

    if not defined?(::Test::D)
        class D < Ice::Value

            def initialize(theA=nil, theB=nil, theC=nil, preMarshalInvoked=false, postUnmarshalInvoked=false)
                @theA = theA
                @theB = theB
                @theC = theC
                @preMarshalInvoked = preMarshalInvoked
                @postUnmarshalInvoked = postUnmarshalInvoked
            end

            attr_accessor :theA, :theB, :theC, :preMarshalInvoked, :postUnmarshalInvoked
        end

        T_D.defineClass(D, -1, false, nil, [
            ['theA', ::Test::T_A, false, 0],
            ['theB', ::Test::T_B, false, 0],
            ['theC', ::Test::T_C, false, 0],
            ['preMarshalInvoked', Ice::T_bool, false, 0],
            ['postUnmarshalInvoked', Ice::T_bool, false, 0]
        ])
    end

    if not defined?(::Test::T_G)
        T_G = Ice::__declareClass('::Test::G')
    end

    if not defined?(::Test::G)
        class G < ::Test::Base

            def initialize(theS=::Test::S.new, str='')
                super(theS, str)
            end
        end

        T_G.defineClass(G, -1, false, ::Test::T_Base, [])
    end

    if not defined?(::Test::T_IPrx)
        T_IPrx = Ice::__declareProxy('::Test::I')
    end

    if not defined?(::Test::IPrx)
        module IPrx_mixin
        end

        class IPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include IPrx_mixin
        end

        T_IPrx.defineProxy(IPrx, nil, [])
    end

    if not defined?(::Test::T_JPrx)
        T_JPrx = Ice::__declareProxy('::Test::J')
    end

    if not defined?(::Test::JPrx)
        module JPrx_mixin
            include ::Test::IPrx_mixin
        end

        class JPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include JPrx_mixin
        end

        T_JPrx.defineProxy(JPrx, nil, [::Test::T_IPrx])
    end

    if not defined?(::Test::T_BaseSeq)
        T_BaseSeq = Ice::__defineSequence('::Test::BaseSeq', ::Test::T_Base)
    end

    if not defined?(::Test::T_CompactExt)
        T_CompactExt = Ice::__declareClass('::Test::CompactExt')
    end

    if not defined?(::Test::CompactIdEnum)
        class CompactIdEnum
            include Comparable

            def initialize(name, value)
                @name = name
                @value = value
            end

            def CompactIdEnum.from_int(val)
                @@_enumerators[val]
            end

            def to_s
                @name
            end

            def to_i
                @value
            end

            def <=>(other)
                other.is_a?(CompactIdEnum) or raise ArgumentError, "value must be a CompactIdEnum"
                @value <=> other.to_i
            end

            def hash
                @value.hash
            end

            def CompactIdEnum.each(&block)
                @@_enumerators.each_value(&block)
            end

            First = CompactIdEnum.new("First", 1)
            Second = CompactIdEnum.new("Second", 2)

            @@_enumerators = {1=>First, 2=>Second}

            def CompactIdEnum._enumerators
                @@_enumerators
            end

            private_class_method :new
        end

        T_CompactIdEnum = Ice::__defineEnum('::Test::CompactIdEnum', CompactIdEnum, CompactIdEnum::_enumerators)
    end

    if not defined?(::Test::T_Compact)
        T_Compact = Ice::__declareClass('::Test::Compact')
    end

    if not defined?(::Test::Compact)
        class Compact < Ice::Value
        end

        T_Compact.defineClass(Compact, 1, false, nil, [])
    end

    if not defined?(::Test::T_CompactScoped)
        T_CompactScoped = Ice::__declareClass('::Test::CompactScoped')
    end

    if not defined?(::Test::CompactScoped)
        class CompactScoped < Ice::Value
        end

        T_CompactScoped.defineClass(CompactScoped, 2, false, nil, [])
    end

    CompactExtId = 789

    if not defined?(::Test::CompactExt)
        class CompactExt < ::Test::Compact
        end

        T_CompactExt.defineClass(CompactExt, 789, false, ::Test::T_Compact, [])
    end

    module Inner

        if not defined?(::Test::Inner::T_A)
            T_A = Ice::__declareClass('::Test::Inner::A')
        end

        if not defined?(::Test::Inner::A)
            class A < Ice::Value

                def initialize(theA=nil)
                    @theA = theA
                end

                attr_accessor :theA
            end

            T_A.defineClass(A, -1, false, nil, [['theA', ::Test::T_A, false, 0]])
        end

        if not defined?(::Test::Inner::Ex)
            class Ex < Ice::UserException
                def to_s
                    '::Test::Inner::Ex'
                end

                attr_accessor :reason
            end

            T_Ex = Ice::__defineException('::Test::Inner::Ex', Ex, nil, [["reason", Ice::T_string, false, 0]])
        end

        module Sub

            if not defined?(::Test::Inner::Sub::T_A)
                T_A = Ice::__declareClass('::Test::Inner::Sub::A')
            end

            if not defined?(::Test::Inner::Sub::A)
                class A < Ice::Value

                    def initialize(theA=nil)
                        @theA = theA
                    end

                    attr_accessor :theA
                end

                T_A.defineClass(A, -1, false, nil, [['theA', ::Test::Inner::T_A, false, 0]])
            end

            if not defined?(::Test::Inner::Sub::Ex)
                class Ex < Ice::UserException
                    def to_s
                        '::Test::Inner::Sub::Ex'
                    end

                    attr_accessor :reason
                end

                T_Ex = Ice::__defineException('::Test::Inner::Sub::Ex', Ex, nil, [["reason", Ice::T_string, false, 0]])
            end
        end
    end

    if not defined?(::Test::T_A1)
        T_A1 = Ice::__declareClass('::Test::A1')
    end

    if not defined?(::Test::A1)
        class A1 < Ice::Value

            def initialize(name='')
                @name = name
            end

            attr_accessor :name
        end

        T_A1.defineClass(A1, -1, false, nil, [['name', Ice::T_string, false, 0]])
    end

    if not defined?(::Test::T_B1)
        T_B1 = Ice::__declareClass('::Test::B1')
    end

    if not defined?(::Test::B1)
        class B1 < Ice::Value

            def initialize(a1=nil, a2=nil)
                @a1 = a1
                @a2 = a2
            end

            attr_accessor :a1, :a2
        end

        T_B1.defineClass(B1, -1, false, nil, [
            ['a1', ::Test::T_A1, false, 0],
            ['a2', ::Test::T_A1, false, 0]
        ])
    end

    if not defined?(::Test::T_D1)
        T_D1 = Ice::__declareClass('::Test::D1')
    end

    if not defined?(::Test::D1)
        class D1 < ::Test::B1

            def initialize(a1=nil, a2=nil, a3=nil, a4=nil)
                super(a1, a2)
                @a3 = a3
                @a4 = a4
            end

            attr_accessor :a3, :a4
        end

        T_D1.defineClass(D1, -1, false, ::Test::T_B1, [
            ['a3', ::Test::T_A1, false, 0],
            ['a4', ::Test::T_A1, false, 0]
        ])
    end

    if not defined?(::Test::EBase)
        class EBase < Ice::UserException
            def to_s
                '::Test::EBase'
            end

            attr_accessor :a1, :a2
        end

        T_EBase = Ice::__defineException('::Test::EBase', EBase, nil, [
            ["a1", ::Test::T_A1, false, 0],
            ["a2", ::Test::T_A1, false, 0]
        ])
    end

    if not defined?(::Test::EDerived)
        class EDerived < ::Test::EBase
            def to_s
                '::Test::EDerived'
            end

            attr_accessor :a3, :a4
        end

        T_EDerived = Ice::__defineException('::Test::EDerived', EDerived, ::Test::T_EBase, [
            ["a3", ::Test::T_A1, false, 0],
            ["a4", ::Test::T_A1, false, 0]
        ])
    end

    if not defined?(::Test::T_Recursive)
        T_Recursive = Ice::__declareClass('::Test::Recursive')
    end

    if not defined?(::Test::Recursive)
        class Recursive < Ice::Value

            def initialize(v=nil)
                @v = v
            end

            attr_accessor :v
        end

        T_Recursive.defineClass(Recursive, -1, false, nil, [['v', ::Test::T_Recursive, false, 0]])
    end

    if not defined?(::Test::T_K)
        T_K = Ice::__declareClass('::Test::K')
    end

    if not defined?(::Test::K)
        class K < Ice::Value

            def initialize(value=nil)
                @value = value
            end

            attr_accessor :value
        end

        T_K.defineClass(K, -1, false, nil, [['value', Ice::T_Value, false, 0]])
    end

    if not defined?(::Test::T_L)
        T_L = Ice::__declareClass('::Test::L')
    end

    if not defined?(::Test::L)
        class L < Ice::Value

            def initialize(data='')
                @data = data
            end

            attr_accessor :data
        end

        T_L.defineClass(L, -1, false, nil, [['data', Ice::T_string, false, 0]])
    end

    if not defined?(::Test::T_ValueSeq)
        T_ValueSeq = Ice::__defineSequence('::Test::ValueSeq', Ice::T_Value)
    end

    if not defined?(::Test::T_ValueMap)
        T_ValueMap = Ice::__defineDictionary('::Test::ValueMap', Ice::T_string, Ice::T_Value)
    end

    if not defined?(::Test::StructKey)
        class StructKey
            include Ice::Inspect_mixin
            def initialize(i=0, s='')
                @i = i
                @s = s
            end

            def hash
                _h = 0
                _h = 5 * _h + @i.hash
                _h = 5 * _h + @s.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::StructKey or
                    @i != other.i or
                    @s != other.s
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :i, :s
        end

        T_StructKey = Ice::__defineStruct('::Test::StructKey', StructKey, [
            ["i", Ice::T_int],
            ["s", Ice::T_string]
        ])
    end

    if not defined?(::Test::T_LMap)
        T_LMap = Ice::__defineDictionary('::Test::LMap', ::Test::T_StructKey, ::Test::T_L)
    end

    if not defined?(::Test::T_M)
        T_M = Ice::__declareClass('::Test::M')
    end

    if not defined?(::Test::M)
        class M < Ice::Value

            def initialize(v=nil)
                @v = v
            end

            attr_accessor :v
        end

        T_M.defineClass(M, -1, false, nil, [['v', ::Test::T_LMap, false, 0]])
    end

    if not defined?(::Test::T_F1)
        T_F1 = Ice::__declareClass('::Test::F1')
    end

    if not defined?(::Test::T_F2Prx)
        T_F2Prx = Ice::__declareProxy('::Test::F2')
    end

    if not defined?(::Test::T_F3)
        T_F3 = Ice::__declareClass('::Test::F3')
    end

    if not defined?(::Test::F3)
        class F3 < Ice::Value

            def initialize(f1=nil, f2=nil)
                @f1 = f1
                @f2 = f2
            end

            attr_accessor :f1, :f2
        end

        T_F3.defineClass(F3, -1, false, nil, [
            ['f1', ::Test::T_F1, false, 0],
            ['f2', ::Test::T_F2Prx, false, 0]
        ])
    end

    if not defined?(::Test::T_InitialPrx)
        T_InitialPrx = Ice::__declareProxy('::Test::Initial')
    end

    if not defined?(::Test::InitialPrx)
        module InitialPrx_mixin
            def shutdown(context=nil)
                InitialPrx_mixin::OP_shutdown.invoke(self, [], context)
            end

            def getB1(context=nil)
                InitialPrx_mixin::OP_getB1.invoke(self, [], context)
            end

            def getB2(context=nil)
                InitialPrx_mixin::OP_getB2.invoke(self, [], context)
            end

            def getC(context=nil)
                InitialPrx_mixin::OP_getC.invoke(self, [], context)
            end

            def getD(context=nil)
                InitialPrx_mixin::OP_getD.invoke(self, [], context)
            end

            def setRecursive(p, context=nil)
                InitialPrx_mixin::OP_setRecursive.invoke(self, [p], context)
            end

            def setCycle(r, context=nil)
                InitialPrx_mixin::OP_setCycle.invoke(self, [r], context)
            end

            def acceptsClassCycles(context=nil)
                InitialPrx_mixin::OP_acceptsClassCycles.invoke(self, [], context)
            end

            def getMB(context=nil)
                InitialPrx_mixin::OP_getMB.invoke(self, [], context)
            end

            def getAMDMB(context=nil)
                InitialPrx_mixin::OP_getAMDMB.invoke(self, [], context)
            end

            def getAll(context=nil)
                InitialPrx_mixin::OP_getAll.invoke(self, [], context)
            end

            def getK(context=nil)
                InitialPrx_mixin::OP_getK.invoke(self, [], context)
            end

            def opValue(v1, context=nil)
                InitialPrx_mixin::OP_opValue.invoke(self, [v1], context)
            end

            def opValueSeq(v1, context=nil)
                InitialPrx_mixin::OP_opValueSeq.invoke(self, [v1], context)
            end

            def opValueMap(v1, context=nil)
                InitialPrx_mixin::OP_opValueMap.invoke(self, [v1], context)
            end

            def getD1(d1, context=nil)
                InitialPrx_mixin::OP_getD1.invoke(self, [d1], context)
            end

            def throwEDerived(context=nil)
                InitialPrx_mixin::OP_throwEDerived.invoke(self, [], context)
            end

            def setG(theG, context=nil)
                InitialPrx_mixin::OP_setG.invoke(self, [theG], context)
            end

            def opBaseSeq(inSeq, context=nil)
                InitialPrx_mixin::OP_opBaseSeq.invoke(self, [inSeq], context)
            end

            def getCompact(context=nil)
                InitialPrx_mixin::OP_getCompact.invoke(self, [], context)
            end

            def getInnerA(context=nil)
                InitialPrx_mixin::OP_getInnerA.invoke(self, [], context)
            end

            def getInnerSubA(context=nil)
                InitialPrx_mixin::OP_getInnerSubA.invoke(self, [], context)
            end

            def throwInnerEx(context=nil)
                InitialPrx_mixin::OP_throwInnerEx.invoke(self, [], context)
            end

            def throwInnerSubEx(context=nil)
                InitialPrx_mixin::OP_throwInnerSubEx.invoke(self, [], context)
            end

            def opM(v1, context=nil)
                InitialPrx_mixin::OP_opM.invoke(self, [v1], context)
            end

            def opF1(f11, context=nil)
                InitialPrx_mixin::OP_opF1.invoke(self, [f11], context)
            end

            def opF2(f21, context=nil)
                InitialPrx_mixin::OP_opF2.invoke(self, [f21], context)
            end

            def hasF3(context=nil)
                InitialPrx_mixin::OP_hasF3.invoke(self, [], context)
            end

            def opF3(f31, context=nil)
                InitialPrx_mixin::OP_opF3.invoke(self, [f31], context)
            end
        end

        class InitialPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include InitialPrx_mixin
        end

        T_InitialPrx.defineProxy(InitialPrx, nil, [])

        InitialPrx_mixin::OP_shutdown = Ice::__defineOperation('shutdown', Ice::OperationMode::Normal, nil, [], [], nil, [])
        InitialPrx_mixin::OP_getB1 = Ice::__defineOperation('getB1', Ice::OperationMode::Normal, nil, [], [], [::Test::T_B, false, 0], [])
        InitialPrx_mixin::OP_getB2 = Ice::__defineOperation('getB2', Ice::OperationMode::Normal, nil, [], [], [::Test::T_B, false, 0], [])
        InitialPrx_mixin::OP_getC = Ice::__defineOperation('getC', Ice::OperationMode::Normal, nil, [], [], [::Test::T_C, false, 0], [])
        InitialPrx_mixin::OP_getD = Ice::__defineOperation('getD', Ice::OperationMode::Normal, nil, [], [], [::Test::T_D, false, 0], [])
        InitialPrx_mixin::OP_setRecursive = Ice::__defineOperation('setRecursive', Ice::OperationMode::Normal, nil, [[::Test::T_Recursive, false, 0]], [], nil, [])
        InitialPrx_mixin::OP_setCycle = Ice::__defineOperation('setCycle', Ice::OperationMode::Normal, nil, [[::Test::T_Recursive, false, 0]], [], nil, [])
        InitialPrx_mixin::OP_acceptsClassCycles = Ice::__defineOperation('acceptsClassCycles', Ice::OperationMode::Normal, nil, [], [], [Ice::T_bool, false, 0], [])
        InitialPrx_mixin::OP_getMB = Ice::__defineOperation('getMB', Ice::OperationMode::Normal, nil, [], [], [::Test::T_B, false, 0], [])
        InitialPrx_mixin::OP_getAMDMB = Ice::__defineOperation('getAMDMB', Ice::OperationMode::Normal, nil, [], [], [::Test::T_B, false, 0], [])
        InitialPrx_mixin::OP_getAll = Ice::__defineOperation('getAll', Ice::OperationMode::Normal, nil, [], [[::Test::T_B, false, 0], [::Test::T_B, false, 0], [::Test::T_C, false, 0], [::Test::T_D, false, 0]], nil, [])
        InitialPrx_mixin::OP_getK = Ice::__defineOperation('getK', Ice::OperationMode::Normal, nil, [], [], [::Test::T_K, false, 0], [])
        InitialPrx_mixin::OP_opValue = Ice::__defineOperation('opValue', Ice::OperationMode::Normal, nil, [[Ice::T_Value, false, 0]], [[Ice::T_Value, false, 0]], [Ice::T_Value, false, 0], [])
        InitialPrx_mixin::OP_opValueSeq = Ice::__defineOperation('opValueSeq', Ice::OperationMode::Normal, nil, [[::Test::T_ValueSeq, false, 0]], [[::Test::T_ValueSeq, false, 0]], [::Test::T_ValueSeq, false, 0], [])
        InitialPrx_mixin::OP_opValueMap = Ice::__defineOperation('opValueMap', Ice::OperationMode::Normal, nil, [[::Test::T_ValueMap, false, 0]], [[::Test::T_ValueMap, false, 0]], [::Test::T_ValueMap, false, 0], [])
        InitialPrx_mixin::OP_getD1 = Ice::__defineOperation('getD1', Ice::OperationMode::Normal, nil, [[::Test::T_D1, false, 0]], [], [::Test::T_D1, false, 0], [])
        InitialPrx_mixin::OP_throwEDerived = Ice::__defineOperation('throwEDerived', Ice::OperationMode::Normal, nil, [], [], nil, [::Test::T_EDerived])
        InitialPrx_mixin::OP_setG = Ice::__defineOperation('setG', Ice::OperationMode::Normal, nil, [[::Test::T_G, false, 0]], [], nil, [])
        InitialPrx_mixin::OP_opBaseSeq = Ice::__defineOperation('opBaseSeq', Ice::OperationMode::Normal, nil, [[::Test::T_BaseSeq, false, 0]], [[::Test::T_BaseSeq, false, 0]], [::Test::T_BaseSeq, false, 0], [])
        InitialPrx_mixin::OP_getCompact = Ice::__defineOperation('getCompact', Ice::OperationMode::Normal, nil, [], [], [::Test::T_Compact, false, 0], [])
        InitialPrx_mixin::OP_getInnerA = Ice::__defineOperation('getInnerA', Ice::OperationMode::Normal, nil, [], [], [::Test::Inner::T_A, false, 0], [])
        InitialPrx_mixin::OP_getInnerSubA = Ice::__defineOperation('getInnerSubA', Ice::OperationMode::Normal, nil, [], [], [::Test::Inner::Sub::T_A, false, 0], [])
        InitialPrx_mixin::OP_throwInnerEx = Ice::__defineOperation('throwInnerEx', Ice::OperationMode::Normal, nil, [], [], nil, [::Test::Inner::T_Ex])
        InitialPrx_mixin::OP_throwInnerSubEx = Ice::__defineOperation('throwInnerSubEx', Ice::OperationMode::Normal, nil, [], [], nil, [::Test::Inner::Sub::T_Ex])
        InitialPrx_mixin::OP_opM = Ice::__defineOperation('opM', Ice::OperationMode::Normal, nil, [[::Test::T_M, false, 0]], [[::Test::T_M, false, 0]], [::Test::T_M, false, 0], [])
        InitialPrx_mixin::OP_opF1 = Ice::__defineOperation('opF1', Ice::OperationMode::Normal, nil, [[::Test::T_F1, false, 0]], [[::Test::T_F1, false, 0]], [::Test::T_F1, false, 0], [])
        InitialPrx_mixin::OP_opF2 = Ice::__defineOperation('opF2', Ice::OperationMode::Normal, nil, [[::Test::T_F2Prx, false, 0]], [[::Test::T_F2Prx, false, 0]], [::Test::T_F2Prx, false, 0], [])
        InitialPrx_mixin::OP_hasF3 = Ice::__defineOperation('hasF3', Ice::OperationMode::Normal, nil, [], [], [Ice::T_bool, false, 0], [])
        InitialPrx_mixin::OP_opF3 = Ice::__defineOperation('opF3', Ice::OperationMode::Normal, nil, [[::Test::T_F3, false, 0]], [[::Test::T_F3, false, 0]], [::Test::T_F3, false, 0], [])
    end

    if not defined?(::Test::T_TestIntfPrx)
        T_TestIntfPrx = Ice::__declareProxy('::Test::TestIntf')
    end

    if not defined?(::Test::TestIntfPrx)
        module TestIntfPrx_mixin
            def opDerived(context=nil)
                TestIntfPrx_mixin::OP_opDerived.invoke(self, [], context)
            end

            def throwDerived(context=nil)
                TestIntfPrx_mixin::OP_throwDerived.invoke(self, [], context)
            end
        end

        class TestIntfPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include TestIntfPrx_mixin
        end

        T_TestIntfPrx.defineProxy(TestIntfPrx, nil, [])

        TestIntfPrx_mixin::OP_opDerived = Ice::__defineOperation('opDerived', Ice::OperationMode::Normal, nil, [], [], [::Test::T_Base, false, 0], [])
        TestIntfPrx_mixin::OP_throwDerived = Ice::__defineOperation('throwDerived', Ice::OperationMode::Normal, nil, [], [], nil, [::Test::T_BaseEx])
    end

    if not defined?(::Test::T_Empty)
        T_Empty = Ice::__declareClass('::Test::Empty')
    end

    if not defined?(::Test::Empty)
        class Empty < Ice::Value
        end

        T_Empty.defineClass(Empty, -1, false, nil, [])
    end

    if not defined?(::Test::T_AlsoEmpty)
        T_AlsoEmpty = Ice::__declareClass('::Test::AlsoEmpty')
    end

    if not defined?(::Test::AlsoEmpty)
        class AlsoEmpty < Ice::Value
        end

        T_AlsoEmpty.defineClass(AlsoEmpty, -1, false, nil, [])
    end

    if not defined?(::Test::T_UnexpectedObjectExceptionTestPrx)
        T_UnexpectedObjectExceptionTestPrx = Ice::__declareProxy('::Test::UnexpectedObjectExceptionTest')
    end

    if not defined?(::Test::UnexpectedObjectExceptionTestPrx)
        module UnexpectedObjectExceptionTestPrx_mixin
            def op(context=nil)
                UnexpectedObjectExceptionTestPrx_mixin::OP_op.invoke(self, [], context)
            end
        end

        class UnexpectedObjectExceptionTestPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include UnexpectedObjectExceptionTestPrx_mixin
        end

        T_UnexpectedObjectExceptionTestPrx.defineProxy(UnexpectedObjectExceptionTestPrx, nil, [])

        UnexpectedObjectExceptionTestPrx_mixin::OP_op = Ice::__defineOperation('op', Ice::OperationMode::Normal, nil, [], [], [::Test::T_Empty, false, 0], [])
    end

    if not defined?(::Test::T_COneMember)
        T_COneMember = Ice::__declareClass('::Test::COneMember')
    end

    if not defined?(::Test::COneMember)
        class COneMember < Ice::Value

            def initialize(e=nil)
                @e = e
            end

            attr_accessor :e
        end

        T_COneMember.defineClass(COneMember, -1, false, nil, [['e', ::Test::T_Empty, false, 0]])
    end

    if not defined?(::Test::T_CTwoMembers)
        T_CTwoMembers = Ice::__declareClass('::Test::CTwoMembers')
    end

    if not defined?(::Test::CTwoMembers)
        class CTwoMembers < Ice::Value

            def initialize(e1=nil, e2=nil)
                @e1 = e1
                @e2 = e2
            end

            attr_accessor :e1, :e2
        end

        T_CTwoMembers.defineClass(CTwoMembers, -1, false, nil, [
            ['e1', ::Test::T_Empty, false, 0],
            ['e2', ::Test::T_Empty, false, 0]
        ])
    end

    if not defined?(::Test::EOneMember)
        class EOneMember < Ice::UserException
            def to_s
                '::Test::EOneMember'
            end

            attr_accessor :e
        end

        T_EOneMember = Ice::__defineException('::Test::EOneMember', EOneMember, nil, [["e", ::Test::T_Empty, false, 0]])
    end

    if not defined?(::Test::ETwoMembers)
        class ETwoMembers < Ice::UserException
            def to_s
                '::Test::ETwoMembers'
            end

            attr_accessor :e1, :e2
        end

        T_ETwoMembers = Ice::__defineException('::Test::ETwoMembers', ETwoMembers, nil, [
            ["e1", ::Test::T_Empty, false, 0],
            ["e2", ::Test::T_Empty, false, 0]
        ])
    end

    if not defined?(::Test::SOneMember)
        class SOneMember
            include Ice::Inspect_mixin
            def initialize(e=nil)
                @e = e
            end

            def hash
                _h = 0
                _h = 5 * _h + @e.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::SOneMember or
                    @e != other.e
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :e
        end

        T_SOneMember = Ice::__defineStruct('::Test::SOneMember', SOneMember, [["e", ::Test::T_Empty]])
    end

    if not defined?(::Test::STwoMembers)
        class STwoMembers
            include Ice::Inspect_mixin
            def initialize(e1=nil, e2=nil)
                @e1 = e1
                @e2 = e2
            end

            def hash
                _h = 0
                _h = 5 * _h + @e1.hash
                _h = 5 * _h + @e2.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::STwoMembers or
                    @e1 != other.e1 or
                    @e2 != other.e2
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :e1, :e2
        end

        T_STwoMembers = Ice::__defineStruct('::Test::STwoMembers', STwoMembers, [
            ["e1", ::Test::T_Empty],
            ["e2", ::Test::T_Empty]
        ])
    end

    if not defined?(::Test::T_DOneMember)
        T_DOneMember = Ice::__defineDictionary('::Test::DOneMember', Ice::T_int, ::Test::T_COneMember)
    end

    if not defined?(::Test::T_DTwoMembers)
        T_DTwoMembers = Ice::__defineDictionary('::Test::DTwoMembers', Ice::T_int, ::Test::T_CTwoMembers)
    end
end
