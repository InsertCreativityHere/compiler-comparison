
% Copyright (c) ZeroC, Inc.
% Generated from Package.ice by slice2matlab version 3.8.0-alpha.0

classdef E1 < Ice.UserException
    properties
        i int32
    end
    methods
        function obj = E1(errID, msg)
            if nargin == 0
                errID = 'Test2:E1';
                msg = 'Test2.E1';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test2::E1';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.i = is.readInt();
            is.endSlice();
        end
    end
end
