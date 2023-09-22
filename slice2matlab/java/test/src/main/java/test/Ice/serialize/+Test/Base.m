% Base   Summary of Base
%
% Base Properties:
%   b
%   o
%   s
%   seq1
%   seq2
%   seq3
%   seq4
%   d1
%   d2
%   d3
%   d4

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef Base < Ice.Value
    properties
        b
        o
        s Test.Struct1
        seq1
        seq2
        seq3
        seq4
        d1 containers.Map
        d2 containers.Map
        d3 containers.Map
        d4 containers.Map
    end
    methods
        function obj = Base(b, o, s, seq1, seq2, seq3, seq4, d1, d2, d3, d4)
            if nargin == 0
                obj.b = [];
                obj.o = [];
                obj.s = Test.Struct1();
                obj.seq1 = [];
                obj.seq2 = [];
                obj.seq3 = [];
                obj.seq4 = [];
                obj.d1 = containers.Map('KeyType', 'int32', 'ValueType', 'logical');
                obj.d2 = containers.Map('KeyType', 'int32', 'ValueType', 'int32');
                obj.d3 = containers.Map('KeyType', 'char', 'ValueType', 'any');
                obj.d4 = containers.Map('KeyType', 'char', 'ValueType', 'any');
            elseif ne(b, IceInternal.NoInit.Instance)
                obj.b = b;
                obj.o = o;
                obj.s = s;
                obj.seq1 = seq1;
                obj.seq2 = seq2;
                obj.seq3 = seq3;
                obj.seq4 = seq4;
                obj.d1 = d1;
                obj.d2 = d2;
                obj.d3 = d3;
                obj.d4 = d4;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Hidden=true)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            obj.seq4 = Test.BaseS.convert(obj.seq4);
            obj.d4 = Test.StringBaseD.convert(obj.d4);
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Base', -1, true);
            os.writeValue(obj.b);
            os.writeValue(obj.o);
            Test.Struct1.ice_write(os, obj.s);
            os.writeByteSeq(obj.seq1);
            os.writeIntSeq(obj.seq2);
            Test.MyEnumS.write(os, obj.seq3);
            Test.BaseS.write(os, obj.seq4);
            Test.ByteBoolD.write(os, obj.d1);
            Test.ShortIntD.write(os, obj.d2);
            Test.StringMyEnumD.write(os, obj.d3);
            Test.StringBaseD.write(os, obj.d4);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_b, 'Test.Base');
            is.readValue(@obj.iceSetMember_o, 'Ice.Value');
            obj.s = Test.Struct1.ice_read(is);
            obj.seq1 = is.readByteSeq();
            obj.seq2 = is.readIntSeq();
            obj.seq3 = Test.MyEnumS.read(is);
            obj.seq4 = Test.BaseS.read(is);
            obj.d1 = Test.ByteBoolD.read(is);
            obj.d2 = Test.ShortIntD.read(is);
            obj.d3 = Test.StringMyEnumD.read(is);
            obj.d4 = Test.StringBaseD.read(is);
            is.endSlice();
        end
        function iceSetMember_b(obj, v)
            obj.b = v;
        end
        function iceSetMember_o(obj, v)
            obj.o = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Base';
        end
    end
end
