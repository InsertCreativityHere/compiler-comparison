% TestIntfException   Summary of TestIntfException

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from AMITest.ice by slice2matlab version 3.7.9

classdef TestIntfException < Ice.UserException
    methods
        function obj = TestIntfException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:TestIntfException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.TestIntfException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
        end
        function id = ice_id(~)
            id = '::Test::TestIntfException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
