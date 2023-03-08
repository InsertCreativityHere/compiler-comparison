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

    module MA

        if not defined?(::Test::MA::IA_Mixin)

            module ::Test::MA::IA_Mixin
            end
            module IAPrx_mixin

                def iaop(p, context=nil)
                    IAPrx_mixin::OP_iaop.invoke(self, [p], context)
                end
            end

            class IAPrx < ::Ice::ObjectPrx
                include ::Ice::Proxy_mixin
                include IAPrx_mixin
            end

            if not defined?(::Test::MA::T_IAPrx)
                T_IA = ::Ice::__declareClass('::Test::MA::IA')
                T_IAPrx = ::Ice::__declareProxy('::Test::MA::IA')
            end

            T_IA.defineClass(::Ice::Value, -1, false, true, nil, [])

            T_IAPrx.defineProxy(IAPrx, nil, [])

            IAPrx_mixin::OP_iaop = ::Ice::__defineOperation('iaop', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::MA::T_IAPrx, false, 0]], [], [::Test::MA::T_IAPrx, false, 0], [])
        end

        if not defined?(::Test::MA::CA_Mixin)

            module ::Test::MA::CA_Mixin
            end
            class CA < ::Ice::Value
            end
            module CAPrx_mixin

                def caop(p, context=nil)
                    CAPrx_mixin::OP_caop.invoke(self, [p], context)
                end
            end

            class CAPrx < ::Ice::ObjectPrx
                include ::Ice::Proxy_mixin
                include CAPrx_mixin
            end

            if not defined?(::Test::MA::T_CA)
                T_CA = ::Ice::__declareClass('::Test::MA::CA')
                T_CAPrx = ::Ice::__declareProxy('::Test::MA::CA')
            end

            T_CA.defineClass(CA, -1, false, false, nil, [])

            T_CAPrx.defineProxy(CAPrx, nil, [])

            CAPrx_mixin::OP_caop = ::Ice::__defineOperation('caop', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::MA::T_CAPrx, false, 0]], [], [::Test::MA::T_CAPrx, false, 0], [])
        end
    end

    module MB

        if not defined?(::Test::MB::IB1_Mixin)

            module ::Test::MB::IB1_Mixin
            end
            module IB1Prx_mixin
                include ::Test::MA::IAPrx_mixin

                def ib1op(p, context=nil)
                    IB1Prx_mixin::OP_ib1op.invoke(self, [p], context)
                end
            end

            class IB1Prx < ::Ice::ObjectPrx
                include ::Ice::Proxy_mixin
                include IB1Prx_mixin
            end

            if not defined?(::Test::MB::T_IB1Prx)
                T_IB1 = ::Ice::__declareClass('::Test::MB::IB1')
                T_IB1Prx = ::Ice::__declareProxy('::Test::MB::IB1')
            end

            T_IB1.defineClass(::Ice::Value, -1, false, true, nil, [])

            T_IB1Prx.defineProxy(IB1Prx, nil, [::Test::MA::T_IAPrx])

            IB1Prx_mixin::OP_ib1op = ::Ice::__defineOperation('ib1op', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::MB::T_IB1Prx, false, 0]], [], [::Test::MB::T_IB1Prx, false, 0], [])
        end

        if not defined?(::Test::MB::IB2_Mixin)

            module ::Test::MB::IB2_Mixin
            end
            module IB2Prx_mixin
                include ::Test::MA::IAPrx_mixin

                def ib2op(p, context=nil)
                    IB2Prx_mixin::OP_ib2op.invoke(self, [p], context)
                end
            end

            class IB2Prx < ::Ice::ObjectPrx
                include ::Ice::Proxy_mixin
                include IB2Prx_mixin
            end

            if not defined?(::Test::MB::T_IB2Prx)
                T_IB2 = ::Ice::__declareClass('::Test::MB::IB2')
                T_IB2Prx = ::Ice::__declareProxy('::Test::MB::IB2')
            end

            T_IB2.defineClass(::Ice::Value, -1, false, true, nil, [])

            T_IB2Prx.defineProxy(IB2Prx, nil, [::Test::MA::T_IAPrx])

            IB2Prx_mixin::OP_ib2op = ::Ice::__defineOperation('ib2op', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::MB::T_IB2Prx, false, 0]], [], [::Test::MB::T_IB2Prx, false, 0], [])
        end

        if not defined?(::Test::MB::CB_Mixin)

            module ::Test::MB::CB_Mixin
            end
            class CB < ::Test::MA::CA
            end
            module CBPrx_mixin
                include ::Test::MA::CAPrx_mixin

                def cbop(p, context=nil)
                    CBPrx_mixin::OP_cbop.invoke(self, [p], context)
                end
            end

            class CBPrx < ::Ice::ObjectPrx
                include ::Ice::Proxy_mixin
                include CBPrx_mixin
            end

            if not defined?(::Test::MB::T_CB)
                T_CB = ::Ice::__declareClass('::Test::MB::CB')
                T_CBPrx = ::Ice::__declareProxy('::Test::MB::CB')
            end

            T_CB.defineClass(CB, -1, false, false, ::Test::MA::T_CA, [])

            T_CBPrx.defineProxy(CBPrx, ::Test::MA::T_CAPrx, [])

            CBPrx_mixin::OP_cbop = ::Ice::__defineOperation('cbop', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::MB::T_CBPrx, false, 0]], [], [::Test::MB::T_CBPrx, false, 0], [])
        end
    end

    module MA

        if not defined?(::Test::MA::IC_Mixin)

            module ::Test::MA::IC_Mixin
            end
            module ICPrx_mixin
                include ::Test::MB::IB1Prx_mixin
                include ::Test::MB::IB2Prx_mixin

                def icop(p, context=nil)
                    ICPrx_mixin::OP_icop.invoke(self, [p], context)
                end
            end

            class ICPrx < ::Ice::ObjectPrx
                include ::Ice::Proxy_mixin
                include ICPrx_mixin
            end

            if not defined?(::Test::MA::T_ICPrx)
                T_IC = ::Ice::__declareClass('::Test::MA::IC')
                T_ICPrx = ::Ice::__declareProxy('::Test::MA::IC')
            end

            T_IC.defineClass(::Ice::Value, -1, false, true, nil, [])

            T_ICPrx.defineProxy(ICPrx, nil, [::Test::MB::T_IB1Prx, ::Test::MB::T_IB2Prx])

            ICPrx_mixin::OP_icop = ::Ice::__defineOperation('icop', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::MA::T_ICPrx, false, 0]], [], [::Test::MA::T_ICPrx, false, 0], [])
        end

        if not defined?(::Test::MA::CC_Mixin)

            module ::Test::MA::CC_Mixin
            end
            class CC < ::Test::MB::CB
            end
            module CCPrx_mixin
                include ::Test::MB::CBPrx_mixin

                def ccop(p, context=nil)
                    CCPrx_mixin::OP_ccop.invoke(self, [p], context)
                end
            end

            class CCPrx < ::Ice::ObjectPrx
                include ::Ice::Proxy_mixin
                include CCPrx_mixin
            end

            if not defined?(::Test::MA::T_CC)
                T_CC = ::Ice::__declareClass('::Test::MA::CC')
                T_CCPrx = ::Ice::__declareProxy('::Test::MA::CC')
            end

            T_CC.defineClass(CC, -1, false, false, ::Test::MB::T_CB, [])

            T_CCPrx.defineProxy(CCPrx, ::Test::MB::T_CBPrx, [])

            CCPrx_mixin::OP_ccop = ::Ice::__defineOperation('ccop', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::MA::T_CCPrx, false, 0]], [], [::Test::MA::T_CCPrx, false, 0], [])
        end

        if not defined?(::Test::MA::CD_Mixin)

            module ::Test::MA::CD_Mixin
            end
            class CD < ::Test::MA::CC
            end
            module CDPrx_mixin
                include ::Test::MA::CCPrx_mixin
                include ::Test::MB::IB1Prx_mixin
                include ::Test::MB::IB2Prx_mixin

                def cdop(p, context=nil)
                    CDPrx_mixin::OP_cdop.invoke(self, [p], context)
                end
            end

            class CDPrx < ::Ice::ObjectPrx
                include ::Ice::Proxy_mixin
                include CDPrx_mixin
            end

            if not defined?(::Test::MA::T_CD)
                T_CD = ::Ice::__declareClass('::Test::MA::CD')
                T_CDPrx = ::Ice::__declareProxy('::Test::MA::CD')
            end

            T_CD.defineClass(CD, -1, false, false, ::Test::MA::T_CC, [])

            T_CDPrx.defineProxy(CDPrx, ::Test::MA::T_CCPrx, [::Test::MB::T_IB1Prx, ::Test::MB::T_IB2Prx])

            CDPrx_mixin::OP_cdop = ::Ice::__defineOperation('cdop', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Test::MA::T_CDPrx, false, 0]], [], [::Test::MA::T_CDPrx, false, 0], [])
        end
    end

    if not defined?(::Test::Initial_Mixin)

        module ::Test::Initial_Mixin
        end
        module InitialPrx_mixin

            def shutdown(context=nil)
                InitialPrx_mixin::OP_shutdown.invoke(self, [], context)
            end

            def caop(context=nil)
                InitialPrx_mixin::OP_caop.invoke(self, [], context)
            end

            def cbop(context=nil)
                InitialPrx_mixin::OP_cbop.invoke(self, [], context)
            end

            def ccop(context=nil)
                InitialPrx_mixin::OP_ccop.invoke(self, [], context)
            end

            def cdop(context=nil)
                InitialPrx_mixin::OP_cdop.invoke(self, [], context)
            end

            def iaop(context=nil)
                InitialPrx_mixin::OP_iaop.invoke(self, [], context)
            end

            def ib1op(context=nil)
                InitialPrx_mixin::OP_ib1op.invoke(self, [], context)
            end

            def ib2op(context=nil)
                InitialPrx_mixin::OP_ib2op.invoke(self, [], context)
            end

            def icop(context=nil)
                InitialPrx_mixin::OP_icop.invoke(self, [], context)
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

        InitialPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        InitialPrx_mixin::OP_caop = ::Ice::__defineOperation('caop', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::MA::T_CAPrx, false, 0], [])
        InitialPrx_mixin::OP_cbop = ::Ice::__defineOperation('cbop', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::MB::T_CBPrx, false, 0], [])
        InitialPrx_mixin::OP_ccop = ::Ice::__defineOperation('ccop', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::MA::T_CCPrx, false, 0], [])
        InitialPrx_mixin::OP_cdop = ::Ice::__defineOperation('cdop', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::MA::T_CDPrx, false, 0], [])
        InitialPrx_mixin::OP_iaop = ::Ice::__defineOperation('iaop', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::MA::T_IAPrx, false, 0], [])
        InitialPrx_mixin::OP_ib1op = ::Ice::__defineOperation('ib1op', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::MB::T_IB1Prx, false, 0], [])
        InitialPrx_mixin::OP_ib2op = ::Ice::__defineOperation('ib2op', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::MB::T_IB2Prx, false, 0], [])
        InitialPrx_mixin::OP_icop = ::Ice::__defineOperation('icop', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Test::MA::T_ICPrx, false, 0], [])
    end

    module MC

        if not defined?(::Test::MC::A_Mixin)

            module ::Test::MC::A_Mixin
            end
            class A < ::Ice::Value

                def initialize(aA=0)
                    @aA = aA
                end

                attr_accessor :aA
            end

            if not defined?(::Test::MC::T_A)
                T_A = ::Ice::__declareClass('::Test::MC::A')
            end

            T_A.defineClass(A, -1, false, false, nil, [['aA', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::MC::B_Mixin)

            module ::Test::MC::B_Mixin
            end
            class B < ::Test::MC::A

                def initialize(aA=0, bB=0)
                    super(aA)
                    @bB = bB
                end

                attr_accessor :bB
            end

            if not defined?(::Test::MC::T_B)
                T_B = ::Ice::__declareClass('::Test::MC::B')
            end

            T_B.defineClass(B, -1, false, false, ::Test::MC::T_A, [['bB', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::MC::C_Mixin)

            module ::Test::MC::C_Mixin
            end
            class C < ::Test::MC::B

                def initialize(aA=0, bB=0, cC=0)
                    super(aA, bB)
                    @cC = cC
                end

                attr_accessor :cC
            end

            if not defined?(::Test::MC::T_C)
                T_C = ::Ice::__declareClass('::Test::MC::C')
            end

            T_C.defineClass(C, -1, false, false, ::Test::MC::T_B, [['cC', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::MC::D_Mixin)

            module ::Test::MC::D_Mixin
            end
            class D < ::Test::MC::C

                def initialize(aA=0, bB=0, cC=0, dD=0)
                    super(aA, bB, cC)
                    @dD = dD
                end

                attr_accessor :dD
            end

            if not defined?(::Test::MC::T_D)
                T_D = ::Ice::__declareClass('::Test::MC::D')
            end

            T_D.defineClass(D, -1, false, false, ::Test::MC::T_C, [['dD', ::Ice::T_int, false, 0]])
        end
    end

    module MD

        if not defined?(::Test::MD::A_Mixin)

            module ::Test::MD::A_Mixin
            end
            class A < ::Ice::Value

                def initialize(aA=0)
                    @aA = aA
                end

                attr_accessor :aA
            end

            if not defined?(::Test::MD::T_A)
                T_A = ::Ice::__declareClass('::Test::MD::A')
            end

            T_A.defineClass(A, -1, false, false, nil, [['aA', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::MD::B_Mixin)

            module ::Test::MD::B_Mixin
            end
            class B < ::Test::MD::A

                def initialize(aA=0, bB=0)
                    super(aA)
                    @bB = bB
                end

                attr_accessor :bB
            end

            if not defined?(::Test::MD::T_B)
                T_B = ::Ice::__declareClass('::Test::MD::B')
            end

            T_B.defineClass(B, -1, false, false, ::Test::MD::T_A, [['bB', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::MD::C_Mixin)

            module ::Test::MD::C_Mixin
            end
            class C < ::Test::MD::B

                def initialize(aA=0, bB=0, cC=0)
                    super(aA, bB)
                    @cC = cC
                end

                attr_accessor :cC
            end

            if not defined?(::Test::MD::T_C)
                T_C = ::Ice::__declareClass('::Test::MD::C')
            end

            T_C.defineClass(C, -1, false, false, ::Test::MD::T_B, [['cC', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::MD::D_Mixin)

            module ::Test::MD::D_Mixin
            end
            class D < ::Test::MD::C

                def initialize(aA=0, bB=0, cC=0, dD=0)
                    super(aA, bB, cC)
                    @dD = dD
                end

                attr_accessor :dD
            end

            if not defined?(::Test::MD::T_D)
                T_D = ::Ice::__declareClass('::Test::MD::D')
            end

            T_D.defineClass(D, -1, false, false, ::Test::MD::T_C, [['dD', ::Ice::T_int, false, 0]])
        end
    end

    module ME

        if not defined?(::Test::ME::A_Mixin)

            module ::Test::ME::A_Mixin
            end
            class A < ::Ice::Value

                def initialize(aA=0)
                    @aA = aA
                end

                attr_accessor :aA
            end

            if not defined?(::Test::ME::T_A)
                T_A = ::Ice::__declareClass('::Test::ME::A')
            end

            T_A.defineClass(A, -1, false, false, nil, [['aA', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::ME::B_Mixin)

            module ::Test::ME::B_Mixin
            end
            class B < ::Test::ME::A

                def initialize(aA=0, bB=0)
                    super(aA)
                    @bB = bB
                end

                attr_accessor :bB
            end

            if not defined?(::Test::ME::T_B)
                T_B = ::Ice::__declareClass('::Test::ME::B')
            end

            T_B.defineClass(B, -1, false, false, ::Test::ME::T_A, [['bB', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::ME::C_Mixin)

            module ::Test::ME::C_Mixin
            end
            class C < ::Test::ME::B

                def initialize(aA=0, bB=0, cC=0)
                    super(aA, bB)
                    @cC = cC
                end

                attr_accessor :cC
            end

            if not defined?(::Test::ME::T_C)
                T_C = ::Ice::__declareClass('::Test::ME::C')
            end

            T_C.defineClass(C, -1, false, false, ::Test::ME::T_B, [['cC', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::ME::D_Mixin)

            module ::Test::ME::D_Mixin
            end
            class D < ::Test::ME::C

                def initialize(aA=0, bB=0, cC=0, dD=0)
                    super(aA, bB, cC)
                    @dD = dD
                end

                attr_accessor :dD
            end

            if not defined?(::Test::ME::T_D)
                T_D = ::Ice::__declareClass('::Test::ME::D')
            end

            T_D.defineClass(D, -1, false, false, ::Test::ME::T_C, [['dD', ::Ice::T_int, false, 0]])
        end
    end

    module MF

        if not defined?(::Test::MF::A_Mixin)

            module ::Test::MF::A_Mixin
            end
            class A < ::Ice::Value

                def initialize(aA=0)
                    @aA = aA
                end

                attr_accessor :aA
            end

            if not defined?(::Test::MF::T_A)
                T_A = ::Ice::__declareClass('::Test::MF::A')
            end

            T_A.defineClass(A, -1, false, false, nil, [['aA', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::MF::B_Mixin)

            module ::Test::MF::B_Mixin
            end
            class B < ::Test::MF::A

                def initialize(aA=0, bB=0)
                    super(aA)
                    @bB = bB
                end

                attr_accessor :bB
            end

            if not defined?(::Test::MF::T_B)
                T_B = ::Ice::__declareClass('::Test::MF::B')
            end

            T_B.defineClass(B, -1, false, false, ::Test::MF::T_A, [['bB', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::MF::C_Mixin)

            module ::Test::MF::C_Mixin
            end
            class C < ::Test::MF::B

                def initialize(aA=0, bB=0, cC=0)
                    super(aA, bB)
                    @cC = cC
                end

                attr_accessor :cC
            end

            if not defined?(::Test::MF::T_C)
                T_C = ::Ice::__declareClass('::Test::MF::C')
            end

            T_C.defineClass(C, -1, false, false, ::Test::MF::T_B, [['cC', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::MF::D_Mixin)

            module ::Test::MF::D_Mixin
            end
            class D < ::Test::MF::C

                def initialize(aA=0, bB=0, cC=0, dD=0)
                    super(aA, bB, cC)
                    @dD = dD
                end

                attr_accessor :dD
            end

            if not defined?(::Test::MF::T_D)
                T_D = ::Ice::__declareClass('::Test::MF::D')
            end

            T_D.defineClass(D, -1, false, false, ::Test::MF::T_C, [['dD', ::Ice::T_int, false, 0]])
        end
    end

    module MG

        if not defined?(::Test::MG::A_Mixin)

            module ::Test::MG::A_Mixin
            end
            class A < ::Ice::Value

                def initialize(aA=0)
                    @aA = aA
                end

                attr_accessor :aA
            end

            if not defined?(::Test::MG::T_A)
                T_A = ::Ice::__declareClass('::Test::MG::A')
            end

            T_A.defineClass(A, -1, false, false, nil, [['aA', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::MG::B_Mixin)

            module ::Test::MG::B_Mixin
            end
            class B < ::Test::MG::A

                def initialize(aA=0, bB=0)
                    super(aA)
                    @bB = bB
                end

                attr_accessor :bB
            end

            if not defined?(::Test::MG::T_B)
                T_B = ::Ice::__declareClass('::Test::MG::B')
            end

            T_B.defineClass(B, -1, false, false, ::Test::MG::T_A, [['bB', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::MG::C_Mixin)

            module ::Test::MG::C_Mixin
            end
            class C < ::Test::MG::B

                def initialize(aA=0, bB=0, cC=0)
                    super(aA, bB)
                    @cC = cC
                end

                attr_accessor :cC
            end

            if not defined?(::Test::MG::T_C)
                T_C = ::Ice::__declareClass('::Test::MG::C')
            end

            T_C.defineClass(C, -1, false, false, ::Test::MG::T_B, [['cC', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::MG::D_Mixin)

            module ::Test::MG::D_Mixin
            end
            class D < ::Test::MG::C

                def initialize(aA=0, bB=0, cC=0, dD=0)
                    super(aA, bB, cC)
                    @dD = dD
                end

                attr_accessor :dD
            end

            if not defined?(::Test::MG::T_D)
                T_D = ::Ice::__declareClass('::Test::MG::D')
            end

            T_D.defineClass(D, -1, false, false, ::Test::MG::T_C, [['dD', ::Ice::T_int, false, 0]])
        end
    end

    module MH

        if not defined?(::Test::MH::A_Mixin)

            module ::Test::MH::A_Mixin
            end
            class A < ::Ice::Value

                def initialize(aA=0)
                    @aA = aA
                end

                attr_accessor :aA
            end

            if not defined?(::Test::MH::T_A)
                T_A = ::Ice::__declareClass('::Test::MH::A')
            end

            T_A.defineClass(A, -1, false, false, nil, [['aA', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::MH::B_Mixin)

            module ::Test::MH::B_Mixin
            end
            class B < ::Test::MH::A

                def initialize(aA=0, bB=0)
                    super(aA)
                    @bB = bB
                end

                attr_accessor :bB
            end

            if not defined?(::Test::MH::T_B)
                T_B = ::Ice::__declareClass('::Test::MH::B')
            end

            T_B.defineClass(B, -1, false, false, ::Test::MH::T_A, [['bB', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::MH::C_Mixin)

            module ::Test::MH::C_Mixin
            end
            class C < ::Test::MH::B

                def initialize(aA=0, bB=0, cC=0)
                    super(aA, bB)
                    @cC = cC
                end

                attr_accessor :cC
            end

            if not defined?(::Test::MH::T_C)
                T_C = ::Ice::__declareClass('::Test::MH::C')
            end

            T_C.defineClass(C, -1, false, false, ::Test::MH::T_B, [['cC', ::Ice::T_int, false, 0]])
        end

        if not defined?(::Test::MH::D_Mixin)

            module ::Test::MH::D_Mixin
            end
            class D < ::Test::MH::C

                def initialize(aA=0, bB=0, cC=0, dD=0)
                    super(aA, bB, cC)
                    @dD = dD
                end

                attr_accessor :dD
            end

            if not defined?(::Test::MH::T_D)
                T_D = ::Ice::__declareClass('::Test::MH::D')
            end

            T_D.defineClass(D, -1, false, false, ::Test::MH::T_C, [['dD', ::Ice::T_int, false, 0]])
        end
    end

    if not defined?(::Test::Echo_Mixin)

        module ::Test::Echo_Mixin
        end
        module EchoPrx_mixin

            def setConnection(context=nil)
                EchoPrx_mixin::OP_setConnection.invoke(self, [], context)
            end

            def startBatch(context=nil)
                EchoPrx_mixin::OP_startBatch.invoke(self, [], context)
            end

            def flushBatch(context=nil)
                EchoPrx_mixin::OP_flushBatch.invoke(self, [], context)
            end

            def shutdown(context=nil)
                EchoPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class EchoPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include EchoPrx_mixin
        end

        if not defined?(::Test::T_EchoPrx)
            T_Echo = ::Ice::__declareClass('::Test::Echo')
            T_EchoPrx = ::Ice::__declareProxy('::Test::Echo')
        end

        T_Echo.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_EchoPrx.defineProxy(EchoPrx, nil, [])

        EchoPrx_mixin::OP_setConnection = ::Ice::__defineOperation('setConnection', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        EchoPrx_mixin::OP_startBatch = ::Ice::__defineOperation('startBatch', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        EchoPrx_mixin::OP_flushBatch = ::Ice::__defineOperation('flushBatch', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        EchoPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end
