% ServerStartException   Summary of ServerStartException
%
% This exception is raised if a server failed to start.
%
% ServerStartException Properties:
%   id - The identifier of the server.
%   reason - The reason for the failure.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.7.10

classdef ServerStartException < Ice.UserException
    properties
        % id - The identifier of the server.
        id char
        % reason - The reason for the failure.
        reason char
    end
    methods
        function obj = ServerStartException(ice_exid, ice_exmsg, id, reason)
            if nargin <= 2
                id = '';
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:ServerStartException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.ServerStartException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.id = id;
            obj.reason = reason;
        end
        function id = ice_id(~)
            id = '::IceGrid::ServerStartException';
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
