% InvalidSubscriber   Summary of InvalidSubscriber
%
% This exception indicates that an attempt was made to subscribe a proxy that is null.
%
% InvalidSubscriber Properties:
%   reason - The reason for the failure.

% Copyright (c) ZeroC, Inc.
% Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

classdef InvalidSubscriber < Ice.UserException
    properties
        % reason - The reason for the failure.
        reason char
    end
    methods
        function obj = InvalidSubscriber(errID, msg)
            if nargin == 0
                errID = 'IceStorm:InvalidSubscriber';
                msg = 'IceStorm.InvalidSubscriber';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
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
