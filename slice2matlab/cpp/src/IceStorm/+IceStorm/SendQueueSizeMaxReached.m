% SendQueueSizeMaxReached   Summary of SendQueueSizeMaxReached

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceStormInternal.ice by slice2matlab version 3.7.9

classdef SendQueueSizeMaxReached < Ice.LocalException
    methods
        function obj = SendQueueSizeMaxReached(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceStorm:SendQueueSizeMaxReached';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceStorm.SendQueueSizeMaxReached';
            end
            obj = obj@Ice.LocalException(ice_exid, ice_exmsg);
        end
        function id = ice_id(~)
            id = '::IceStorm::SendQueueSizeMaxReached';
        end
    end
end
