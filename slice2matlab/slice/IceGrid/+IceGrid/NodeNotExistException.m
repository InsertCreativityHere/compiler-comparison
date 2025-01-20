% NodeNotExistException   Summary of NodeNotExistException
%
% This exception is raised if a node does not exist.
%
% NodeNotExistException Properties:
%   name - The node name.

% Copyright (c) ZeroC, Inc.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef NodeNotExistException < Ice.UserException
    properties
        % name - The node name.
        name char
    end
    methods
        function obj = NodeNotExistException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:NodeNotExistException';
                msg = 'IceGrid.NodeNotExistException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::NodeNotExistException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            is.endSlice();
        end
    end
end
