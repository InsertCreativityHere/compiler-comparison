% TestImpossibleException   Summary of TestImpossibleException

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServantLocatorTest.ice by slice2matlab version 3.7.9

classdef TestImpossibleException < Ice.UserException
    methods
        function obj = TestImpossibleException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:TestImpossibleException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.TestImpossibleException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
        end
        function id = ice_id(~)
            id = '::Test::TestImpossibleException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
