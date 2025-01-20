
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef UserError < Ice.UserException
    properties
        message_ char
    end
    methods
        function obj = UserError(errID, msg)
            if nargin == 0
                errID = 'Test:UserError';
                msg = 'Test.UserError';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::UserError';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.message_ = is.readString();
            is.endSlice();
        end
    end
end
