
% Copyright (c) ZeroC, Inc.
% Generated from Callback.ice by slice2matlab version 3.8.0-alpha.0

classdef CallbackException < Ice.UserException
    properties
        someValue double
        someString char
    end
    methods
        function obj = CallbackException(errID, msg)
            if nargin == 0
                errID = 'Test:CallbackException';
                msg = 'Test.CallbackException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::CallbackException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.someValue = is.readDouble();
            obj.someString = is.readString();
            is.endSlice();
        end
    end
end
