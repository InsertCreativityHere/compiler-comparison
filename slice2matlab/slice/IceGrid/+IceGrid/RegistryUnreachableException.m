% RegistryUnreachableException   Summary of RegistryUnreachableException
%
% This exception is raised if a registry could not be reached.
%
% RegistryUnreachableException Properties:
%   name - The name of the registry that is not reachable.
%   reason - The reason why the registry couldn't be reached.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef RegistryUnreachableException < Ice.UserException
    properties
        % name - The name of the registry that is not reachable.
        name char
        % reason - The reason why the registry couldn't be reached.
        reason char
    end
    methods
        function obj = RegistryUnreachableException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:RegistryUnreachableException';
                msg = 'IceGrid.RegistryUnreachableException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::RegistryUnreachableException';
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
