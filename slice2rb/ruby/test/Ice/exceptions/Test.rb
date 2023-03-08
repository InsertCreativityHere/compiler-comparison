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
require 'Ice/BuiltinSequences.rb'

module ::Test

    if not defined?(::Test::Empty_Mixin)

        module ::Test::Empty_Mixin
        end
        module EmptyPrx_mixin
        end

        class EmptyPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include EmptyPrx_mixin
        end

        if not defined?(::Test::T_EmptyPrx)
            T_Empty = ::Ice::__declareClass('::Test::Empty')
            T_EmptyPrx = ::Ice::__declareProxy('::Test::Empty')
        end

        T_Empty.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_EmptyPrx.defineProxy(EmptyPrx, nil, [])
    end

    if not defined?(::Test::T_Thrower)
        T_Thrower = ::Ice::__declareClass('::Test::Thrower')
        T_ThrowerPrx = ::Ice::__declareProxy('::Test::Thrower')
    end

    if not defined?(::Test::A)
        class A < Ice::UserException
            def initialize(aMem=0)
                @aMem = aMem
            end

            def to_s
                '::Test::A'
            end

            attr_accessor :aMem
        end

        T_A = ::Ice::__defineException('::Test::A', A, false, nil, [["aMem", ::Ice::T_int, false, 0]])
    end

    if not defined?(::Test::B)
        class B < ::Test::A
            def initialize(aMem=0, bMem=0)
                super(aMem)
                @bMem = bMem
            end

            def to_s
                '::Test::B'
            end

            attr_accessor :bMem
        end

        T_B = ::Ice::__defineException('::Test::B', B, false, ::Test::T_A, [["bMem", ::Ice::T_int, false, 0]])
    end

    if not defined?(::Test::C)
        class C < ::Test::B
            def initialize(aMem=0, bMem=0, cMem=0)
                super(aMem, bMem)
                @cMem = cMem
            end

            def to_s
                '::Test::C'
            end

            attr_accessor :cMem
        end

        T_C = ::Ice::__defineException('::Test::C', C, false, ::Test::T_B, [["cMem", ::Ice::T_int, false, 0]])
    end

    if not defined?(::Test::D)
        class D < Ice::UserException
            def initialize(dMem=0)
                @dMem = dMem
            end

            def to_s
                '::Test::D'
            end

            attr_accessor :dMem
        end

        T_D = ::Ice::__defineException('::Test::D', D, false, nil, [["dMem", ::Ice::T_int, false, 0]])
    end

    module Mod

        if not defined?(::Test::Mod::A)
            class A < ::Test::A
                def initialize(aMem=0, a2Mem=0)
                    super(aMem)
                    @a2Mem = a2Mem
                end

                def to_s
                    '::Test::Mod::A'
                end

                attr_accessor :a2Mem
            end

            T_A = ::Ice::__defineException('::Test::Mod::A', A, false, ::Test::T_A, [["a2Mem", ::Ice::T_int, false, 0]])
        end
    end

    if not defined?(::Test::Thrower_Mixin)

        module ::Test::Thrower_Mixin
        end
        module ThrowerPrx_mixin

            def shutdown(context=nil)
                ThrowerPrx_mixin::OP_shutdown.invoke(self, [], context)
            end

            def supportsUndeclaredExceptions(context=nil)
                ThrowerPrx_mixin::OP_supportsUndeclaredExceptions.invoke(self, [], context)
            end

            def supportsAssertException(context=nil)
                ThrowerPrx_mixin::OP_supportsAssertException.invoke(self, [], context)
            end

            def throwAasA(a, context=nil)
                ThrowerPrx_mixin::OP_throwAasA.invoke(self, [a], context)
            end

            def throwAorDasAorD(a, context=nil)
                ThrowerPrx_mixin::OP_throwAorDasAorD.invoke(self, [a], context)
            end

            def throwBasA(a, b, context=nil)
                ThrowerPrx_mixin::OP_throwBasA.invoke(self, [a, b], context)
            end

            def throwCasA(a, b, c, context=nil)
                ThrowerPrx_mixin::OP_throwCasA.invoke(self, [a, b, c], context)
            end

            def throwBasB(a, b, context=nil)
                ThrowerPrx_mixin::OP_throwBasB.invoke(self, [a, b], context)
            end

            def throwCasB(a, b, c, context=nil)
                ThrowerPrx_mixin::OP_throwCasB.invoke(self, [a, b, c], context)
            end

            def throwCasC(a, b, c, context=nil)
                ThrowerPrx_mixin::OP_throwCasC.invoke(self, [a, b, c], context)
            end

            def throwModA(a, a2, context=nil)
                ThrowerPrx_mixin::OP_throwModA.invoke(self, [a, a2], context)
            end

            def throwUndeclaredA(a, context=nil)
                ThrowerPrx_mixin::OP_throwUndeclaredA.invoke(self, [a], context)
            end

            def throwUndeclaredB(a, b, context=nil)
                ThrowerPrx_mixin::OP_throwUndeclaredB.invoke(self, [a, b], context)
            end

            def throwUndeclaredC(a, b, c, context=nil)
                ThrowerPrx_mixin::OP_throwUndeclaredC.invoke(self, [a, b, c], context)
            end

            def throwLocalException(context=nil)
                ThrowerPrx_mixin::OP_throwLocalException.invoke(self, [], context)
            end

            def throwNonIceException(context=nil)
                ThrowerPrx_mixin::OP_throwNonIceException.invoke(self, [], context)
            end

            def throwAssertException(context=nil)
                ThrowerPrx_mixin::OP_throwAssertException.invoke(self, [], context)
            end

            def throwMemoryLimitException(seq, context=nil)
                ThrowerPrx_mixin::OP_throwMemoryLimitException.invoke(self, [seq], context)
            end

            def throwLocalExceptionIdempotent(context=nil)
                ThrowerPrx_mixin::OP_throwLocalExceptionIdempotent.invoke(self, [], context)
            end
        end

        class ThrowerPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include ThrowerPrx_mixin
        end

        if not defined?(::Test::T_ThrowerPrx)
            T_Thrower = ::Ice::__declareClass('::Test::Thrower')
            T_ThrowerPrx = ::Ice::__declareProxy('::Test::Thrower')
        end

        T_Thrower.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_ThrowerPrx.defineProxy(ThrowerPrx, nil, [])

        ThrowerPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        ThrowerPrx_mixin::OP_supportsUndeclaredExceptions = ::Ice::__defineOperation('supportsUndeclaredExceptions', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Ice::T_bool, false, 0], [])
        ThrowerPrx_mixin::OP_supportsAssertException = ::Ice::__defineOperation('supportsAssertException', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], [::Ice::T_bool, false, 0], [])
        ThrowerPrx_mixin::OP_throwAasA = ::Ice::__defineOperation('throwAasA', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0]], [], nil, [::Test::T_A])
        ThrowerPrx_mixin::OP_throwAorDasAorD = ::Ice::__defineOperation('throwAorDasAorD', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0]], [], nil, [::Test::T_A, ::Test::T_D])
        ThrowerPrx_mixin::OP_throwBasA = ::Ice::__defineOperation('throwBasA', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [], nil, [::Test::T_A])
        ThrowerPrx_mixin::OP_throwCasA = ::Ice::__defineOperation('throwCasA', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [], nil, [::Test::T_A])
        ThrowerPrx_mixin::OP_throwBasB = ::Ice::__defineOperation('throwBasB', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [], nil, [::Test::T_B])
        ThrowerPrx_mixin::OP_throwCasB = ::Ice::__defineOperation('throwCasB', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [], nil, [::Test::T_B])
        ThrowerPrx_mixin::OP_throwCasC = ::Ice::__defineOperation('throwCasC', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [], nil, [::Test::T_C])
        ThrowerPrx_mixin::OP_throwModA = ::Ice::__defineOperation('throwModA', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [], nil, [::Test::Mod::T_A])
        ThrowerPrx_mixin::OP_throwUndeclaredA = ::Ice::__defineOperation('throwUndeclaredA', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0]], [], nil, [])
        ThrowerPrx_mixin::OP_throwUndeclaredB = ::Ice::__defineOperation('throwUndeclaredB', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [], nil, [])
        ThrowerPrx_mixin::OP_throwUndeclaredC = ::Ice::__defineOperation('throwUndeclaredC', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [], nil, [])
        ThrowerPrx_mixin::OP_throwLocalException = ::Ice::__defineOperation('throwLocalException', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        ThrowerPrx_mixin::OP_throwNonIceException = ::Ice::__defineOperation('throwNonIceException', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        ThrowerPrx_mixin::OP_throwAssertException = ::Ice::__defineOperation('throwAssertException', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        ThrowerPrx_mixin::OP_throwMemoryLimitException = ::Ice::__defineOperation('throwMemoryLimitException', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_ByteSeq, false, 0]], [], [::Ice::T_ByteSeq, false, 0], [])
        ThrowerPrx_mixin::OP_throwLocalExceptionIdempotent = ::Ice::__defineOperation('throwLocalExceptionIdempotent', ::Ice::OperationMode::Idempotent, ::Ice::OperationMode::Idempotent, false, nil, [], [], nil, [])
    end

    if not defined?(::Test::WrongOperation_Mixin)

        module ::Test::WrongOperation_Mixin
        end
        module WrongOperationPrx_mixin

            def noSuchOperation(context=nil)
                WrongOperationPrx_mixin::OP_noSuchOperation.invoke(self, [], context)
            end
        end

        class WrongOperationPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include WrongOperationPrx_mixin
        end

        if not defined?(::Test::T_WrongOperationPrx)
            T_WrongOperation = ::Ice::__declareClass('::Test::WrongOperation')
            T_WrongOperationPrx = ::Ice::__declareProxy('::Test::WrongOperation')
        end

        T_WrongOperation.defineClass(::Ice::Value, -1, false, true, nil, [])

        T_WrongOperationPrx.defineProxy(WrongOperationPrx, nil, [])

        WrongOperationPrx_mixin::OP_noSuchOperation = ::Ice::__defineOperation('noSuchOperation', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end
end
