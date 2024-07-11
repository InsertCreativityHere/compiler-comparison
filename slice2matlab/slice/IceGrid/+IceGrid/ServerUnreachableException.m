% ServerUnreachableException   Summary of ServerUnreachableException
%
% This exception is raised if a server could not be reached.
%
% ServerUnreachableException Properties:
%   name - The id of the server that is not reachable.
%   reason - The reason why the server couldn't be reached.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef ServerUnreachableException < Ice.UserException
    properties
        % name - The id of the server that is not reachable.
        name char
        % reason - The reason why the server couldn't be reached.
        reason char
    end
    methods
        function obj = ServerUnreachableException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:ServerUnreachableException';
                msg = 'IceGrid.ServerUnreachableException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
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
