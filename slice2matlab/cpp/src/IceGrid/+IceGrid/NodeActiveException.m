% NodeActiveException   Summary of NodeActiveException
%
% This exception is raised if a node is already registered and active.

% Copyright (c) ZeroC, Inc.
% Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

classdef NodeActiveException < Ice.UserException
    methods
        function obj = NodeActiveException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:NodeActiveException';
                msg = 'IceGrid.NodeActiveException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::NodeActiveException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
