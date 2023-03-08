% EDerived   Summary of EDerived
%
% EDerived Properties:
%   a3
%   a4

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef EDerived < Test.EBase
    properties
        a3
        a4
    end
    methods
        function obj = EDerived(ice_exid, ice_exmsg, a1, a2, a3, a4)
            if nargin <= 2
                a1 = [];
                a2 = [];
                a3 = [];
                a4 = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:EDerived';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.EDerived';
            end
            obj = obj@Test.EBase(ice_exid, ice_exmsg, a1, a2);
            obj.a3 = a3;
            obj.a4 = a4;
        end
        function id = ice_id(~)
            id = '::Test::EDerived';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.a3 = obj.a3.value;
            obj.a4 = obj.a4.value;
            obj = icePostUnmarshal@Test.EBase(obj);
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.a3 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.a3.set(v), 'Test.A1');
            obj.a4 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.a4.set(v), 'Test.A1');
            is.endSlice();
            obj = iceReadImpl@Test.EBase(obj, is);
        end
    end
end
