% SomeException   Summary of SomeException

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef SomeException < Ice.UserException
    methods
        function obj = SomeException(errID, msg)
            if nargin == 0
                errID = 'Test:SomeException';
                msg = 'Test.SomeException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::SomeException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
