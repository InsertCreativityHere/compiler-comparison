% ServerStopException   Summary of ServerStopException
%
% This exception is raised if a server failed to stop.
%
% ServerStopException Properties:
%   id - The identifier of the server.
%   reason - The reason for the failure.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef ServerStopException < Ice.UserException
    properties
        % id - The identifier of the server.
        id char
        % reason - The reason for the failure.
        reason char
    end
    methods
        function obj = ServerStopException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:ServerStopException';
                msg = 'IceGrid.ServerStopException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::ServerStopException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.id = is.readString();
            obj.reason = is.readString();
            is.endSlice();
        end
    end
end
