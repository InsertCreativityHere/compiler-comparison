% ServerStartException   Summary of ServerStartException
%
% This exception is raised if a server failed to start.
%
% ServerStartException Properties:
%   id - The identifier of the server.
%   reason - The reason for the failure.

% Copyright (c) ZeroC, Inc.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef ServerStartException < Ice.UserException
    properties
        % id - The identifier of the server.
        id char
        % reason - The reason for the failure.
        reason char
    end
    methods
        function obj = ServerStartException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:ServerStartException';
                msg = 'IceGrid.ServerStartException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
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
