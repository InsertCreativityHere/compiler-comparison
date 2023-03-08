% ServerUnreachableException   Summary of ServerUnreachableException
%
% This exception is raised if a server could not be reached.
%
% ServerUnreachableException Properties:
%   name - The id of the server that is not reachable.
%   reason - The reason why the server couldn't be reached.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.7.9

classdef ServerUnreachableException < Ice.UserException
    properties
        % name - The id of the server that is not reachable.
        name char
        % reason - The reason why the server couldn't be reached.
        reason char
    end
    methods
        function obj = ServerUnreachableException(ice_exid, ice_exmsg, name, reason)
            if nargin <= 2
                name = '';
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:ServerUnreachableException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.ServerUnreachableException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.name = name;
            obj.reason = reason;
        end
        function id = ice_id(~)
            id = '::IceGrid::ServerUnreachableException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            obj.reason = is.readString();
            is.endSlice();
        end
    end
end
