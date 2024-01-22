% TestIntfUserException   Summary of TestIntfUserException

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfUserException < Ice.UserException
    methods
        function obj = TestIntfUserException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:TestIntfUserException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.TestIntfUserException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
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
