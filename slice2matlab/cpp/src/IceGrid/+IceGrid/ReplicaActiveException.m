% ReplicaActiveException   Summary of ReplicaActiveException
%
% This exception is raised if a replica is already registered and active.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

classdef ReplicaActiveException < Ice.UserException
    methods
        function obj = ReplicaActiveException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:ReplicaActiveException';
                msg = 'IceGrid.ReplicaActiveException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::ReplicaActiveException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
