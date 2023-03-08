% Derived   Summary of Derived
%
% Derived Properties:
%   p

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef Derived < Test.Base
    properties
        p
    end
    methods
        function obj = Derived(b, o, s, seq1, seq2, seq3, seq4, d1, d2, d3, d4, p)
            if nargin == 0
                b = [];
                o = [];
                s = Test.Struct1();
                seq1 = [];
                seq2 = [];
                seq3 = [];
                seq4 = [];
                d1 = containers.Map('KeyType', 'int32', 'ValueType', 'logical');
                d2 = containers.Map('KeyType', 'int32', 'ValueType', 'int32');
                d3 = containers.Map('KeyType', 'char', 'ValueType', 'any');
                d4 = containers.Map('KeyType', 'char', 'ValueType', 'any');
                p = [];
                v = { b, o, s, seq1, seq2, seq3, seq4, d1, d2, d3, d4 };
            elseif eq(b, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [], [], [], [], [], [], [], [] };
            else
                v = { b, o, s, seq1, seq2, seq3, seq4, d1, d2, d3, d4 };
            end;
            obj = obj@Test.Base(v{:});
            if ne(b, IceInternal.NoInit.Instance)
                obj.p = p;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Derived', -1, false);
            os.writeProxy(obj.p);
            os.endSlice();
            iceWriteImpl@Test.Base(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.p = is.readProxy();
            is.endSlice();
            iceReadImpl@Test.Base(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Derived';
        end
    end
end
