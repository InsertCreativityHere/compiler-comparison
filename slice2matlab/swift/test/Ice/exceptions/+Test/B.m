
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef B < Test.A
    properties
        bMem int32
    end
    methods
        function obj = B(errID, msg)
            if nargin == 0
                errID = 'Test:B';
                msg = 'Test.B';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.A(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::B';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.bMem = is.readInt();
            is.endSlice();
            obj = iceReadImpl@Test.A(obj, is);
        end
    end
end
