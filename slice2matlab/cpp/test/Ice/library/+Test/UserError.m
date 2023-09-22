% UserError   Summary of UserError
%
% UserError Properties:
%   message_

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef UserError < Ice.UserException
    properties
        message_ char
    end
    methods
        function obj = UserError(ice_exid, ice_exmsg, message_)
            if nargin <= 2
                message_ = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:UserError';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.UserError';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.message_ = message_;
        end
        function id = ice_id(~)
            id = '::Test::UserError';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.message_ = is.readString();
            is.endSlice();
        end
    end
end
