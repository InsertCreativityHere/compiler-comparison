% RemoteLoggerAlreadyAttachedException   Summary of RemoteLoggerAlreadyAttachedException
%
% Thrown when the provided RemoteLogger was previously attached to a LoggerAdmin.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from RemoteLogger.ice by slice2matlab version 3.8.0-alpha.0

classdef RemoteLoggerAlreadyAttachedException < Ice.UserException
    methods
        function obj = RemoteLoggerAlreadyAttachedException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Ice:RemoteLoggerAlreadyAttachedException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Ice.RemoteLoggerAlreadyAttachedException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
        end
        function id = ice_id(~)
            id = '::Ice::RemoteLoggerAlreadyAttachedException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
