% BadQoS   Summary of BadQoS
%
% This exception indicates that a subscription failed due to an
% invalid QoS.
%
% BadQoS Properties:
%   reason - The reason for the failure.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceStorm.ice by slice2matlab version 3.7.10

classdef BadQoS < Ice.UserException
    properties
        % reason - The reason for the failure.
        reason char
    end
    methods
        function obj = BadQoS(ice_exid, ice_exmsg, reason)
            if nargin <= 2
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceStorm:BadQoS';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceStorm.BadQoS';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.reason = reason;
        end
        function id = ice_id(~)
            id = '::IceStorm::BadQoS';
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
