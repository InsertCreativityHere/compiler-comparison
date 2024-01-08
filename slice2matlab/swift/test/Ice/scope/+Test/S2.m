% S2   Summary of S2
%
% S2 Properties:
%   E1
%   S1
%   C1
%   S1Seq
%   S1Map

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef S2
    properties
        E1 Test.E1
        S1 Test.S1
        C1
        S1Seq
        S1Map containers.Map
    end
    methods
        function obj = S2(E1, S1, C1, S1Seq, S1Map)
            if nargin == 0
                obj.E1 = Test.E1.v1;
                obj.S1 = Test.S1();
                obj.C1 = [];
                obj.S1Seq = [];
                obj.S1Map = containers.Map('KeyType', 'char', 'ValueType', 'any');
            elseif ne(E1, IceInternal.NoInit.Instance)
                obj.E1 = E1;
                obj.S1 = S1;
                obj.C1 = C1;
                obj.S1Seq = S1Seq;
                obj.S1Map = S1Map;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.C1 = obj.C1.value;
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.S2(IceInternal.NoInit.Instance);
            r.E1 = Test.E1.ice_read(is);
            r.S1 = Test.S1.ice_read(is);
            C1_ = IceInternal.ValueHolder();
            r.C1 = C1_;
            is.readValue(@(v_) C1_.set(v_), 'Test.C1');
            r.S1Seq = Test.S1Seq.read(is);
            r.S1Map = Test.S1Map.read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.S2.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.S2();
            end
            Test.E1.ice_write(os, v.E1);
            Test.S1.ice_write(os, v.S1);
            os.writeValue(v.C1);
            Test.S1Seq.write(os, v.S1Seq);
            Test.S1Map.write(os, v.S1Map);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.S2.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
