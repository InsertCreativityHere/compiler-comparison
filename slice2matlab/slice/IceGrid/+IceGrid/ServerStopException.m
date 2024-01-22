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
        function obj = ServerStopException(ice_exid, ice_exmsg, id, reason)
            if nargin <= 2
                id = '';
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:ServerStopException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.ServerStopException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.id = id;
            obj.reason = reason;
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
