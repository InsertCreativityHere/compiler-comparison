
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef InvalidPointException < Test.BaseException
    properties
        index int32
    end
    methods
        function obj = InvalidPointException(errID, msg)
            if nargin == 0
                errID = 'Test:InvalidPointException';
                msg = 'Test.InvalidPointException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.BaseException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::InvalidPointException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.index = is.readInt();
            is.endSlice();
            obj = iceReadImpl@Test.BaseException(obj, is);
        end
    end
end
