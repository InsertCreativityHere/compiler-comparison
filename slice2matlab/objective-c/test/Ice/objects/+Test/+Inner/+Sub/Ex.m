% Ex   Summary of Ex
%
% Ex Properties:
%   reason

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ObjectsTest.ice by slice2matlab version 3.7.9

classdef Ex < Ice.UserException
    properties
        reason char
    end
    methods
        function obj = Ex(ice_exid, ice_exmsg, reason)
            if nargin <= 2
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:Inner:Sub:Ex';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.Inner.Sub.Ex';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.reason = reason;
        end
        function id = ice_id(~)
            id = '::Test::Inner::Sub::Ex';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.reason = is.readString();
            is.endSlice();
        end
    end
end
