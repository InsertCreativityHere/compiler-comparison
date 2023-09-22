% BaseException   Summary of BaseException

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from HashTest.ice by slice2matlab version 3.7.10

classdef BaseException < Ice.UserException
    methods
        function obj = BaseException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:BaseException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.BaseException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
        end
        function id = ice_id(~)
            id = '::Test::BaseException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
