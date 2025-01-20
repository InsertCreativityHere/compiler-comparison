
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef OtherException < Ice.UserException
    properties
        x int32
        y int32
        z int32
        b logical
    end
    methods
        function obj = OtherException(errID, msg)
            if nargin == 0
                errID = 'Test:OtherException';
                msg = 'Test.OtherException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::OtherException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.x = is.readInt();
            obj.y = is.readInt();
            obj.z = is.readInt();
            obj.b = is.readBool();
            is.endSlice();
        end
    end
end
