% RegistryNotExistException   Summary of RegistryNotExistException
%
% This exception is raised if a registry does not exist.
%
% RegistryNotExistException Properties:
%   name - The registry name.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef RegistryNotExistException < Ice.UserException
    properties
        % name - The registry name.
        name char
    end
    methods
        function obj = RegistryNotExistException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:RegistryNotExistException';
                msg = 'IceGrid.RegistryNotExistException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::RegistryNotExistException';
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
