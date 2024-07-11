% RemoteLoggerAlreadyAttachedException   Summary of RemoteLoggerAlreadyAttachedException
%
% Thrown when the provided RemoteLogger was previously attached to a LoggerAdmin.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from RemoteLogger.ice by slice2matlab version 3.8.0-alpha.0

classdef RemoteLoggerAlreadyAttachedException < Ice.UserException
    methods
        function obj = RemoteLoggerAlreadyAttachedException(errID, msg)
            if nargin == 0
                errID = 'Ice:RemoteLoggerAlreadyAttachedException';
                msg = 'Ice.RemoteLoggerAlreadyAttachedException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
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
