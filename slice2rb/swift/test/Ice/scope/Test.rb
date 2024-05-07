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

    if not defined?(::Test::S)
        class S
            include ::Ice::Inspect_mixin
            def initialize(v=0)
                @v = v
            end

            def hash
                _h = 0
                _h = 5 * _h + @v.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::S or
                    @v != other.v
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :v
        end

        T_S = ::Ice::__defineStruct('::Test::S', S, [["v", ::Ice::T_int]])
    end

    if not defined?(::Test::T_SMap)
        T_SMap = ::Ice::__defineDictionary('::Test::SMap', ::Ice::T_string, ::Test::T_S)
    end

    if not defined?(::Test::T_SSeq)
        T_SSeq = ::Ice::__defineSequence('::Test::SSeq', ::Test::T_S)
    end

    if not defined?(::Test::C_Mixin)

        module ::Test::C_Mixin
        end
        class C < ::Ice::Value

            def initialize(s=::Test::S.new)
                @s = s
            end

            attr_accessor :s
        end

        if not defined?(::Test::T_C)
            T_C = ::Ice::__declareClass('::Test::C')
        end

        T_C.defineClass(C, -1, false, nil, [['s', ::Test::T_S, false, 0]])
    end

    if not defined?(::Test::T_CMap)
        T_CMap = ::Ice::__defineDictionary('::Test::CMap', ::Ice::T_string, ::Test::T_C)
    end

    if not defined?(::Test::T_CSeq)
        T_CSeq = ::Ice::__defineSequence('::Test::CSeq', ::Test::T_C)
    end

    if not defined?(::Test::E1)
        class E1
            include Comparable

            def initialize(name, value)
                @name = name
                @value = value
            end

            def E1.from_int(val)
                @@_enumerators[val]
            end

            def to_s
                @name
            end

            def to_i
                @value
            end

            def <=>(other)
                other.is_a?(E1) or raise ArgumentError, "value must be a E1"
                @value <=> other.to_i
            end

            def hash
                @value.hash
            end

            def E1.each(&block)
                @@_enumerators.each_value(&block)
            end

            V1 = E1.new("v1", 0)
            V2 = E1.new("v2", 1)
            V3 = E1.new("v3", 2)

            @@_enumerators = {0=>V1, 1=>V2, 2=>V3}

            def E1._enumerators
                @@_enumerators
            end

            private_class_method :new
        end

        T_E1 = ::Ice::__defineEnum('::Test::E1', E1, E1::_enumerators)
    end

    if not defined?(::Test::S1)
        class S1
            include ::Ice::Inspect_mixin
            def initialize(s='')
                @s = s
            end

            def hash
                _h = 0
                _h = 5 * _h + @s.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::S1 or
                    @s != other.s
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :s
        end

        T_S1 = ::Ice::__defineStruct('::Test::S1', S1, [["s", ::Ice::T_string]])
    end

    if not defined?(::Test::T_S1Seq)
        T_S1Seq = ::Ice::__defineSequence('::Test::S1Seq', ::Test::T_S1)
    end

    if not defined?(::Test::T_S1Map)
        T_S1Map = ::Ice::__defineDictionary('::Test::S1Map', ::Ice::T_string, ::Test::T_S1)
    end

    if not defined?(::Test::C1_Mixin)

        module ::Test::C1_Mixin
        end
        class C1 < ::Ice::Value

            def initialize(s='')
                @s = s
            end

            attr_accessor :s
        end

        if not defined?(::Test::T_C1)
            T_C1 = ::Ice::__declareClass('::Test::C1')
        end

        T_C1.defineClass(C1, -1, false, nil, [['s', ::Ice::T_string, false, 0]])
    end

    if not defined?(::Test::S2)
        class S2
            include ::Ice::Inspect_mixin
            def initialize(e1=::Test::E1::V1, s1=::Test::S1.new, c1=nil, s1Seq=nil, s1Map=nil)
                @E1 = e1
                @S1 = s1
                @C1 = c1
                @S1Seq = s1Seq
                @S1Map = s1Map
            end

            def hash
                _h = 0
                _h = 5 * _h + @E1.hash
                _h = 5 * _h + @S1.hash
                _h = 5 * _h + @C1.hash
                _h = 5 * _h + @S1Seq.hash
                _h = 5 * _h + @S1Map.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::Test::S2 or
                    @E1 != other.E1 or
                    @S1 != other.S1 or
                    @C1 != other.C1 or
                    @S1Seq != other.S1Seq or
                    @S1Map != other.S1Map
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :E1, :S1, :C1, :S1Seq, :S1Map
        end

        T_S2 = ::Ice::__defineStruct('::Test::S2', S2, [
            ["E1", ::Test::T_E1],
            ["S1", ::Test::T_S1],
            ["C1", ::Test::T_C1],
            ["S1Seq", ::Test::T_S1Seq],
            ["S1Map", ::Test::T_S1Map]
        ])
    end

    if not defined?(::Test::C2_Mixin)

        module ::Test::C2_Mixin
        end
        class C2 < ::Ice::Value

            def initialize(e1=::Test::E1::V1, s1=::Test::S1.new, c1=nil, s1Seq=nil, s1Map=nil)
                @E1 = e1
                @S1 = s1
                @C1 = c1
                @S1Seq = s1Seq
                @S1Map = s1Map
            end

            attr_accessor :E1, :S1, :C1, :S1Seq, :S1Map
        end

        if not defined?(::Test::T_C2)
            T_C2 = ::Ice::__declareClass('::Test::C2')
        end

        T_C2.defineClass(C2, -1, false, nil, [
            ['E1', ::Test::T_E1, false, 0],
            ['S1', ::Test::T_S1, false, 0],
            ['C1', ::Test::T_C1, false, 0],
            ['S1Seq', ::Test::T_S1Seq, false, 0],
            ['S1Map', ::Test::T_S1Map, false, 0]
        ])
    end

    if not defined?(::Test::I_Mixin)

        module ::Test::I_Mixin
        end
        module IPrx_mixin

            def opS(s1, context=nil)
                IPrx_mixin::OP_opS.invoke(self, [s1], context)
            end

            def opSSeq(s1, context=nil)
                IPrx_mixin::OP_opSSeq.invoke(self, [s1], context)
            end

            def opSMap(s1, context=nil)
                IPrx_mixin::OP_opSMap.invoke(self, [s1], context)
            end

            def opC(c1, context=nil)
                IPrx_mixin::OP_opC.invoke(self, [c1], context)
            end

            def opCSeq(s1, context=nil)
                IPrx_mixin::OP_opCSeq.invoke(self, [s1], context)
            end

            def opCMap(c1, context=nil)
                IPrx_mixin::OP_opCMap.invoke(self, [c1], context)
            end

            def opE1(e1, context=nil)
                IPrx_mixin::OP_opE1.invoke(self, [e1], context)
            end

            def opS1(s1, context=nil)
                IPrx_mixin::OP_opS1.invoke(self, [s1], context)
            end

            def opC1(c1, context=nil)
                IPrx_mixin::OP_opC1.invoke(self, [c1], context)
            end

            def opS1Seq(s1Seq, context=nil)
                IPrx_mixin::OP_opS1Seq.invoke(self, [s1Seq], context)
            end

            def opS1Map(s1Map, context=nil)
                IPrx_mixin::OP_opS1Map.invoke(self, [s1Map], context)
            end

            def shutdown(context=nil)
                IPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class IPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include IPrx_mixin
        end

        if not defined?(::Test::T_IPrx)
            T_I = ::Ice::__declareClass('::Test::I')
            T_IPrx = ::Ice::__declareProxy('::Test::I')
        end

        T_IPrx.defineProxy(IPrx, nil, [])

        IPrx_mixin::OP_opS = ::Ice::__defineOperation('opS', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_S, false, 0]], [[::Test::T_S, false, 0]], [::Test::T_S, false, 0], [])
        IPrx_mixin::OP_opSSeq = ::Ice::__defineOperation('opSSeq', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_SSeq, false, 0]], [[::Test::T_SSeq, false, 0]], [::Test::T_SSeq, false, 0], [])
        IPrx_mixin::OP_opSMap = ::Ice::__defineOperation('opSMap', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_SMap, false, 0]], [[::Test::T_SMap, false, 0]], [::Test::T_SMap, false, 0], [])
        IPrx_mixin::OP_opC = ::Ice::__defineOperation('opC', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_C, false, 0]], [[::Test::T_C, false, 0]], [::Test::T_C, false, 0], [])
        IPrx_mixin::OP_opCSeq = ::Ice::__defineOperation('opCSeq', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_CSeq, false, 0]], [[::Test::T_CSeq, false, 0]], [::Test::T_CSeq, false, 0], [])
        IPrx_mixin::OP_opCMap = ::Ice::__defineOperation('opCMap', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_CMap, false, 0]], [[::Test::T_CMap, false, 0]], [::Test::T_CMap, false, 0], [])
        IPrx_mixin::OP_opE1 = ::Ice::__defineOperation('opE1', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_E1, false, 0]], [], [::Test::T_E1, false, 0], [])
        IPrx_mixin::OP_opS1 = ::Ice::__defineOperation('opS1', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_S1, false, 0]], [], [::Test::T_S1, false, 0], [])
        IPrx_mixin::OP_opC1 = ::Ice::__defineOperation('opC1', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_C1, false, 0]], [], [::Test::T_C1, false, 0], [])
        IPrx_mixin::OP_opS1Seq = ::Ice::__defineOperation('opS1Seq', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_S1Seq, false, 0]], [], [::Test::T_S1Seq, false, 0], [])
        IPrx_mixin::OP_opS1Map = ::Ice::__defineOperation('opS1Map', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_S1Map, false, 0]], [], [::Test::T_S1Map, false, 0], [])
        IPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end

    if not defined?(::Test::T_IMap)
        T_IMap = ::Ice::__defineDictionary('::Test::IMap', ::Ice::T_string, ::Test::T_IPrx)
    end

    if not defined?(::Test::T_ISeq)
        T_ISeq = ::Ice::__defineSequence('::Test::ISeq', ::Test::T_IPrx)
    end

    module Inner

        if not defined?(::Test::Inner::S)
            class S
                include ::Ice::Inspect_mixin
                def initialize(v=0)
                    @v = v
                end

                def hash
                    _h = 0
                    _h = 5 * _h + @v.hash
                    _h % 0x7fffffff
                end

                def ==(other)
                    return false if !other.is_a? ::Test::Inner::S or
                        @v != other.v
                    true
                end

                def eql?(other)
                    return other.class == self.class && other == self
                end

                attr_accessor :v
            end

            T_S = ::Ice::__defineStruct('::Test::Inner::S', S, [["v", ::Ice::T_int]])
        end

        module Inner2

            if not defined?(::Test::Inner::Inner2::S)
                class S
                    include ::Ice::Inspect_mixin
                    def initialize(v=0)
                        @v = v
                    end

                    def hash
                        _h = 0
                        _h = 5 * _h + @v.hash
                        _h % 0x7fffffff
                    end

                    def ==(other)
                        return false if !other.is_a? ::Test::Inner::Inner2::S or
                            @v != other.v
                        true
                    end

                    def eql?(other)
                        return other.class == self.class && other == self
                    end

                    attr_accessor :v
                end

                T_S = ::Ice::__defineStruct('::Test::Inner::Inner2::S', S, [["v", ::Ice::T_int]])
            end

            if not defined?(::Test::Inner::Inner2::T_SMap)
                T_SMap = ::Ice::__defineDictionary('::Test::Inner::Inner2::SMap', ::Ice::T_string, ::Test::Inner::Inner2::T_S)
            end

            if not defined?(::Test::Inner::Inner2::T_SSeq)
                T_SSeq = ::Ice::__defineSequence('::Test::Inner::Inner2::SSeq', ::Test::Inner::Inner2::T_S)
            end

            if not defined?(::Test::Inner::Inner2::C_Mixin)

                module ::Test::Inner::Inner2::C_Mixin
                end
                class C < ::Ice::Value

                    def initialize(s=::Test::Inner::Inner2::S.new)
                        @s = s
                    end

                    attr_accessor :s
                end

                if not defined?(::Test::Inner::Inner2::T_C)
                    T_C = ::Ice::__declareClass('::Test::Inner::Inner2::C')
                end

                T_C.defineClass(C, -1, false, nil, [['s', ::Test::Inner::Inner2::T_S, false, 0]])
            end

            if not defined?(::Test::Inner::Inner2::T_CMap)
                T_CMap = ::Ice::__defineDictionary('::Test::Inner::Inner2::CMap', ::Ice::T_string, ::Test::Inner::Inner2::T_C)
            end

            if not defined?(::Test::Inner::Inner2::T_CSeq)
                T_CSeq = ::Ice::__defineSequence('::Test::Inner::Inner2::CSeq', ::Test::Inner::Inner2::T_C)
            end

            if not defined?(::Test::Inner::Inner2::I_Mixin)

                module ::Test::Inner::Inner2::I_Mixin
                end
                module IPrx_mixin

                    def opS(s1, context=nil)
                        IPrx_mixin::OP_opS.invoke(self, [s1], context)
                    end

                    def opSSeq(s1, context=nil)
                        IPrx_mixin::OP_opSSeq.invoke(self, [s1], context)
                    end

                    def opSMap(s1, context=nil)
                        IPrx_mixin::OP_opSMap.invoke(self, [s1], context)
                    end

                    def opC(c1, context=nil)
                        IPrx_mixin::OP_opC.invoke(self, [c1], context)
                    end

                    def opCSeq(c1, context=nil)
                        IPrx_mixin::OP_opCSeq.invoke(self, [c1], context)
                    end

                    def opCMap(c1, context=nil)
                        IPrx_mixin::OP_opCMap.invoke(self, [c1], context)
                    end

                    def shutdown(context=nil)
                        IPrx_mixin::OP_shutdown.invoke(self, [], context)
                    end
                end

                class IPrx < ::Ice::ObjectPrx
                    include ::Ice::Proxy_mixin
                    include IPrx_mixin
                end

                if not defined?(::Test::Inner::Inner2::T_IPrx)
                    T_I = ::Ice::__declareClass('::Test::Inner::Inner2::I')
                    T_IPrx = ::Ice::__declareProxy('::Test::Inner::Inner2::I')
                end

                T_IPrx.defineProxy(IPrx, nil, [])

                IPrx_mixin::OP_opS = ::Ice::__defineOperation('opS', ::Ice::OperationMode::Normal, false, nil, [[::Test::Inner::Inner2::T_S, false, 0]], [[::Test::Inner::Inner2::T_S, false, 0]], [::Test::Inner::Inner2::T_S, false, 0], [])
                IPrx_mixin::OP_opSSeq = ::Ice::__defineOperation('opSSeq', ::Ice::OperationMode::Normal, false, nil, [[::Test::Inner::Inner2::T_SSeq, false, 0]], [[::Test::Inner::Inner2::T_SSeq, false, 0]], [::Test::Inner::Inner2::T_SSeq, false, 0], [])
                IPrx_mixin::OP_opSMap = ::Ice::__defineOperation('opSMap', ::Ice::OperationMode::Normal, false, nil, [[::Test::Inner::Inner2::T_SMap, false, 0]], [[::Test::Inner::Inner2::T_SMap, false, 0]], [::Test::Inner::Inner2::T_SMap, false, 0], [])
                IPrx_mixin::OP_opC = ::Ice::__defineOperation('opC', ::Ice::OperationMode::Normal, false, nil, [[::Test::Inner::Inner2::T_C, false, 0]], [[::Test::Inner::Inner2::T_C, false, 0]], [::Test::Inner::Inner2::T_C, false, 0], [])
                IPrx_mixin::OP_opCSeq = ::Ice::__defineOperation('opCSeq', ::Ice::OperationMode::Normal, false, nil, [[::Test::Inner::Inner2::T_CSeq, false, 0]], [[::Test::Inner::Inner2::T_CSeq, false, 0]], [::Test::Inner::Inner2::T_CSeq, false, 0], [])
                IPrx_mixin::OP_opCMap = ::Ice::__defineOperation('opCMap', ::Ice::OperationMode::Normal, false, nil, [[::Test::Inner::Inner2::T_CMap, false, 0]], [[::Test::Inner::Inner2::T_CMap, false, 0]], [::Test::Inner::Inner2::T_CMap, false, 0], [])
                IPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
            end

            if not defined?(::Test::Inner::Inner2::T_IMap)
                T_IMap = ::Ice::__defineDictionary('::Test::Inner::Inner2::IMap', ::Ice::T_string, ::Test::Inner::Inner2::T_IPrx)
            end

            if not defined?(::Test::Inner::Inner2::T_ISeq)
                T_ISeq = ::Ice::__defineSequence('::Test::Inner::Inner2::ISeq', ::Test::Inner::Inner2::T_IPrx)
            end
        end

        if not defined?(::Test::Inner::C_Mixin)

            module ::Test::Inner::C_Mixin
            end
            class C < ::Ice::Value

                def initialize(s=::Test::Inner::S.new)
                    @s = s
                end

                attr_accessor :s
            end

            if not defined?(::Test::Inner::T_C)
                T_C = ::Ice::__declareClass('::Test::Inner::C')
            end

            T_C.defineClass(C, -1, false, nil, [['s', ::Test::Inner::T_S, false, 0]])
        end

        if not defined?(::Test::Inner::T_SSeq)
            T_SSeq = ::Ice::__defineSequence('::Test::Inner::SSeq', ::Test::Inner::Inner2::T_S)
        end

        if not defined?(::Test::Inner::T_SMap)
            T_SMap = ::Ice::__defineDictionary('::Test::Inner::SMap', ::Ice::T_string, ::Test::Inner::Inner2::T_S)
        end

        if not defined?(::Test::Inner::T_CMap)
            T_CMap = ::Ice::__defineDictionary('::Test::Inner::CMap', ::Ice::T_string, ::Test::Inner::Inner2::T_C)
        end

        if not defined?(::Test::Inner::T_CSeq)
            T_CSeq = ::Ice::__defineSequence('::Test::Inner::CSeq', ::Test::Inner::Inner2::T_C)
        end

        if not defined?(::Test::Inner::I_Mixin)

            module ::Test::Inner::I_Mixin
            end
            module IPrx_mixin

                def opS(s1, context=nil)
                    IPrx_mixin::OP_opS.invoke(self, [s1], context)
                end

                def opSSeq(s1, context=nil)
                    IPrx_mixin::OP_opSSeq.invoke(self, [s1], context)
                end

                def opSMap(s1, context=nil)
                    IPrx_mixin::OP_opSMap.invoke(self, [s1], context)
                end

                def opC(c1, context=nil)
                    IPrx_mixin::OP_opC.invoke(self, [c1], context)
                end

                def opCSeq(c1, context=nil)
                    IPrx_mixin::OP_opCSeq.invoke(self, [c1], context)
                end

                def opCMap(c1, context=nil)
                    IPrx_mixin::OP_opCMap.invoke(self, [c1], context)
                end

                def shutdown(context=nil)
                    IPrx_mixin::OP_shutdown.invoke(self, [], context)
                end
            end

            class IPrx < ::Ice::ObjectPrx
                include ::Ice::Proxy_mixin
                include IPrx_mixin
            end

            if not defined?(::Test::Inner::T_IPrx)
                T_I = ::Ice::__declareClass('::Test::Inner::I')
                T_IPrx = ::Ice::__declareProxy('::Test::Inner::I')
            end

            T_IPrx.defineProxy(IPrx, nil, [])

            IPrx_mixin::OP_opS = ::Ice::__defineOperation('opS', ::Ice::OperationMode::Normal, false, nil, [[::Test::Inner::Inner2::T_S, false, 0]], [[::Test::Inner::Inner2::T_S, false, 0]], [::Test::Inner::Inner2::T_S, false, 0], [])
            IPrx_mixin::OP_opSSeq = ::Ice::__defineOperation('opSSeq', ::Ice::OperationMode::Normal, false, nil, [[::Test::Inner::Inner2::T_SSeq, false, 0]], [[::Test::Inner::Inner2::T_SSeq, false, 0]], [::Test::Inner::Inner2::T_SSeq, false, 0], [])
            IPrx_mixin::OP_opSMap = ::Ice::__defineOperation('opSMap', ::Ice::OperationMode::Normal, false, nil, [[::Test::Inner::Inner2::T_SMap, false, 0]], [[::Test::Inner::Inner2::T_SMap, false, 0]], [::Test::Inner::Inner2::T_SMap, false, 0], [])
            IPrx_mixin::OP_opC = ::Ice::__defineOperation('opC', ::Ice::OperationMode::Normal, false, nil, [[::Test::Inner::Inner2::T_C, false, 0]], [[::Test::Inner::Inner2::T_C, false, 0]], [::Test::Inner::Inner2::T_C, false, 0], [])
            IPrx_mixin::OP_opCSeq = ::Ice::__defineOperation('opCSeq', ::Ice::OperationMode::Normal, false, nil, [[::Test::Inner::Inner2::T_CSeq, false, 0]], [[::Test::Inner::Inner2::T_CSeq, false, 0]], [::Test::Inner::Inner2::T_CSeq, false, 0], [])
            IPrx_mixin::OP_opCMap = ::Ice::__defineOperation('opCMap', ::Ice::OperationMode::Normal, false, nil, [[::Test::Inner::Inner2::T_CMap, false, 0]], [[::Test::Inner::Inner2::T_CMap, false, 0]], [::Test::Inner::Inner2::T_CMap, false, 0], [])
            IPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        end

        if not defined?(::Test::Inner::T_IMap)
            T_IMap = ::Ice::__defineDictionary('::Test::Inner::IMap', ::Ice::T_string, ::Test::Inner::T_IPrx)
        end

        if not defined?(::Test::Inner::T_ISeq)
            T_ISeq = ::Ice::__defineSequence('::Test::Inner::ISeq', ::Test::Inner::T_IPrx)
        end
    end
end

module ::Inner

    module Test

        module Inner2

            if not defined?(::Inner::Test::Inner2::I_Mixin)

                module ::Inner::Test::Inner2::I_Mixin
                end
                module IPrx_mixin

                    def opS(s1, context=nil)
                        IPrx_mixin::OP_opS.invoke(self, [s1], context)
                    end

                    def opSSeq(s1, context=nil)
                        IPrx_mixin::OP_opSSeq.invoke(self, [s1], context)
                    end

                    def opSMap(s1, context=nil)
                        IPrx_mixin::OP_opSMap.invoke(self, [s1], context)
                    end

                    def opC(c1, context=nil)
                        IPrx_mixin::OP_opC.invoke(self, [c1], context)
                    end

                    def opCSeq(c1, context=nil)
                        IPrx_mixin::OP_opCSeq.invoke(self, [c1], context)
                    end

                    def opCMap(c1, context=nil)
                        IPrx_mixin::OP_opCMap.invoke(self, [c1], context)
                    end

                    def shutdown(context=nil)
                        IPrx_mixin::OP_shutdown.invoke(self, [], context)
                    end
                end

                class IPrx < ::Ice::ObjectPrx
                    include ::Ice::Proxy_mixin
                    include IPrx_mixin
                end

                if not defined?(::Inner::Test::Inner2::T_IPrx)
                    T_I = ::Ice::__declareClass('::Inner::Test::Inner2::I')
                    T_IPrx = ::Ice::__declareProxy('::Inner::Test::Inner2::I')
                end

                T_IPrx.defineProxy(IPrx, nil, [])

                IPrx_mixin::OP_opS = ::Ice::__defineOperation('opS', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_S, false, 0]], [[::Test::T_S, false, 0]], [::Test::T_S, false, 0], [])
                IPrx_mixin::OP_opSSeq = ::Ice::__defineOperation('opSSeq', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_SSeq, false, 0]], [[::Test::T_SSeq, false, 0]], [::Test::T_SSeq, false, 0], [])
                IPrx_mixin::OP_opSMap = ::Ice::__defineOperation('opSMap', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_SMap, false, 0]], [[::Test::T_SMap, false, 0]], [::Test::T_SMap, false, 0], [])
                IPrx_mixin::OP_opC = ::Ice::__defineOperation('opC', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_C, false, 0]], [[::Test::T_C, false, 0]], [::Test::T_C, false, 0], [])
                IPrx_mixin::OP_opCSeq = ::Ice::__defineOperation('opCSeq', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_CSeq, false, 0]], [[::Test::T_CSeq, false, 0]], [::Test::T_CSeq, false, 0], [])
                IPrx_mixin::OP_opCMap = ::Ice::__defineOperation('opCMap', ::Ice::OperationMode::Normal, false, nil, [[::Test::T_CMap, false, 0]], [[::Test::T_CMap, false, 0]], [::Test::T_CMap, false, 0], [])
                IPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
            end
        end
    end
end
