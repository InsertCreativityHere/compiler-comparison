% NodeNotExistException   Summary of NodeNotExistException
%
% This exception is raised if a node does not exist.
%
% NodeNotExistException Properties:
%   name - The node name.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.7.10

classdef NodeNotExistException < Ice.UserException
    properties
        % name - The node name.
        name char
    end
    methods
        function obj = NodeNotExistException(ice_exid, ice_exmsg, name)
            if nargin <= 2
                name = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:NodeNotExistException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.NodeNotExistException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.name = name;
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
