% ServerNotExistException   Summary of ServerNotExistException
%
% This exception is raised if a server does not exist.
%
% ServerNotExistException Properties:
%   id - The identifier of the server.

% Copyright (c) ZeroC, Inc.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef ServerNotExistException < Ice.UserException
    properties
        % id - The identifier of the server.
        id char
    end
    methods
        function obj = ServerNotExistException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:ServerNotExistException';
                msg = 'IceGrid.ServerNotExistException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
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
