% RetryException   Summary of RetryException

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from InterceptorTest.ice by slice2matlab version 3.7.10

classdef RetryException < Ice.LocalException
    methods
        function obj = RetryException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:RetryException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.RetryException';
            end
            obj = obj@Ice.LocalException(ice_exid, ice_exmsg);
        end
        function id = ice_id(~)
            id = '::Test::RetryException';
        end
    end
end
