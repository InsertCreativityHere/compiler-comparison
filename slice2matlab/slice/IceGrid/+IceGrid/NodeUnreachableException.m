% NodeUnreachableException   Summary of NodeUnreachableException
%
% This exception is raised if a node could not be reached.
%
% NodeUnreachableException Properties:
%   name - The name of the node that is not reachable.
%   reason - The reason why the node couldn't be reached.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef NodeUnreachableException < Ice.UserException
    properties
        % name - The name of the node that is not reachable.
        name char
        % reason - The reason why the node couldn't be reached.
        reason char
    end
    methods
        function obj = NodeUnreachableException(ice_exid, ice_exmsg, name, reason)
            if nargin <= 2
                name = '';
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:NodeUnreachableException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.NodeUnreachableException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.name = name;
            obj.reason = reason;
        end
        function id = ice_id(~)
            id = '::IceGrid::NodeUnreachableException';
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
