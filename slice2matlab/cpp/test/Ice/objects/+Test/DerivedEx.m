
% Copyright (c) ZeroC, Inc.
% Generated from DerivedEx.ice by slice2matlab version 3.8.0-alpha.0

classdef DerivedEx < Test.BaseEx
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
            is.endSlice();
            obj = iceReadImpl@Test.BaseEx(obj, is);
        end
    end
end
