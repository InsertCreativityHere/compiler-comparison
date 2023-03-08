% InterruptedException   Summary of InterruptedException

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef InterruptedException < Ice.UserException
    methods
        function obj = InterruptedException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:InterruptedException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.InterruptedException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
        end
        function id = ice_id(~)
            id = '::Test::InterruptedException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
