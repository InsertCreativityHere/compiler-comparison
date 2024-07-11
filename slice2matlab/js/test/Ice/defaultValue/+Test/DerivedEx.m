% DerivedEx   Summary of DerivedEx
%
% DerivedEx Properties:
%   c1
%   c2
%   c3
%   nc1
%   nc2
%   nc3

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef DerivedEx < Test.BaseEx
    properties
        c1 Test.Color
        c2 Test.Color
        c3 Test.Color
        nc1 Test.Nested.Color
        nc2 Test.Nested.Color
        nc3 Test.Nested.Color
    end
    methods
        function obj = DerivedEx(errID, msg)
            if nargin == 0
                errID = 'Test:DerivedEx';
                msg = 'Test.DerivedEx';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.BaseEx(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::DerivedEx';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.c1 = Test.Color.ice_read(is);
            obj.c2 = Test.Color.ice_read(is);
            obj.c3 = Test.Color.ice_read(is);
            obj.nc1 = Test.Nested.Color.ice_read(is);
            obj.nc2 = Test.Nested.Color.ice_read(is);
            obj.nc3 = Test.Nested.Color.ice_read(is);
            is.endSlice();
            obj = iceReadImpl@Test.BaseEx(obj, is);
        end
    end
end
