% InvalidReplicaGroupIdException   Summary of InvalidReplicaGroupIdException
%
% This exception is raised if the replica group provided by the
% server is invalid.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Locator.ice by slice2matlab version 3.7.10

classdef InvalidReplicaGroupIdException < Ice.UserException
    methods
        function obj = InvalidReplicaGroupIdException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Ice:InvalidReplicaGroupIdException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Ice.InvalidReplicaGroupIdException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
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
