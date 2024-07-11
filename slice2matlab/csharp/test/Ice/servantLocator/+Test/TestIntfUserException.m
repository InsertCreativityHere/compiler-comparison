% TestIntfUserException   Summary of TestIntfUserException

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfUserException < Ice.UserException
    methods
        function obj = TestIntfUserException(errID, msg)
            if nargin == 0
                errID = 'Test:TestIntfUserException';
                msg = 'Test.TestIntfUserException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::TestIntfUserException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
