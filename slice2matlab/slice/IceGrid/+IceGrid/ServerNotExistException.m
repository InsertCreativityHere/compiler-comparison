% ServerNotExistException   Summary of ServerNotExistException
%
% This exception is raised if a server does not exist.
%
% ServerNotExistException Properties:
%   id - The identifier of the server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef ServerNotExistException < Ice.UserException
    properties
        % id - The identifier of the server.
        id char
    end
    methods
        function obj = ServerNotExistException(ice_exid, ice_exmsg, id)
            if nargin <= 2
                id = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:ServerNotExistException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.ServerNotExistException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.id = id;
        end
        function id = ice_id(~)
            id = '::IceGrid::ServerNotExistException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.id = is.readString();
            is.endSlice();
        end
    end
end
