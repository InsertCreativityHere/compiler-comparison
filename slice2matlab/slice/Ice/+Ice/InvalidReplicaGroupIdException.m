% InvalidReplicaGroupIdException   Summary of InvalidReplicaGroupIdException
%
% This exception is raised if the replica group provided by the server is invalid.

% Copyright (c) ZeroC, Inc.
% Generated from Locator.ice by slice2matlab version 3.8.0-alpha.0

classdef InvalidReplicaGroupIdException < Ice.UserException
    methods
        function obj = InvalidReplicaGroupIdException(errID, msg)
            if nargin == 0
                errID = 'Ice:InvalidReplicaGroupIdException';
                msg = 'Ice.InvalidReplicaGroupIdException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Ice::InvalidReplicaGroupIdException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
