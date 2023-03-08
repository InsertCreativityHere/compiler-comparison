% InvalidSubscriber   Summary of InvalidSubscriber
%
% This exception indicates that an attempt was made to subscribe
% a proxy that is null.
%
% InvalidSubscriber Properties:
%   reason - The reason for the failure.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceStorm.ice by slice2matlab version 3.7.9

classdef InvalidSubscriber < Ice.UserException
    properties
        % reason - The reason for the failure.
        reason char
    end
    methods
        function obj = InvalidSubscriber(ice_exid, ice_exmsg, reason)
            if nargin <= 2
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceStorm:InvalidSubscriber';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceStorm.InvalidSubscriber';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.reason = reason;
        end
        function id = ice_id(~)
            id = '::IceStorm::InvalidSubscriber';
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
