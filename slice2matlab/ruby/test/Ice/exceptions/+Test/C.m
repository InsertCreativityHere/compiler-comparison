
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef C < Test.B
    properties
        cMem int32
    end
    methods
        function obj = C(errID, msg)
            if nargin == 0
                errID = 'Test:C';
                msg = 'Test.C';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.B(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::C';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.cMem = is.readInt();
            is.endSlice();
            obj = iceReadImpl@Test.B(obj, is);
        end
    end
end
