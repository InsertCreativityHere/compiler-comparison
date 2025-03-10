
% Copyright (c) ZeroC, Inc.
% Generated from NoPackage.ice by slice2matlab version 3.8.0-alpha.0

classdef E2 < Test1.E1
    properties
        l int64
    end
    methods
        function obj = E2(errID, msg)
            if nargin == 0
                errID = 'Test1:E2';
                msg = 'Test1.E2';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test1.E1(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test1::E2';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.l = is.readLong();
            is.endSlice();
            obj = iceReadImpl@Test1.E1(obj, is);
        end
    end
end
