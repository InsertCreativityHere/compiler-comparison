% BadQoS   Summary of BadQoS
%
% This exception indicates that a subscription failed due to an invalid QoS.
%
% BadQoS Properties:
%   reason - The reason for the failure.

% Copyright (c) ZeroC, Inc.
% Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

classdef BadQoS < Ice.UserException
    properties
        % reason - The reason for the failure.
        reason char
    end
    methods
        function obj = BadQoS(errID, msg)
            if nargin == 0
                errID = 'IceStorm:BadQoS';
                msg = 'IceStorm.BadQoS';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
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
