% EDerived   Summary of EDerived
%
% EDerived Properties:
%   a3
%   a4

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef EDerived < Test.EBase
    properties
        a3
        a4
    end
    methods
        function obj = EDerived(errID, msg)
            if nargin == 0
                errID = 'Test:EDerived';
                msg = 'Test.EDerived';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.EBase(errID, msg);
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
