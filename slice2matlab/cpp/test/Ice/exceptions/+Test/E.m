
% Copyright (c) ZeroC, Inc.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef E < Ice.UserException
    properties
        data char
    end
    methods
        function obj = E(errID, msg)
            if nargin == 0
                errID = 'Test:E';
                msg = 'Test.E';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::E';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.data = is.readString();
            is.endSlice();
        end
    end
end
