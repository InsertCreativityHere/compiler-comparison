% RegistryNotExistException   Summary of RegistryNotExistException
%
% This exception is raised if a registry does not exist.
%
% RegistryNotExistException Properties:
%   name - The registry name.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.7.9

classdef RegistryNotExistException < Ice.UserException
    properties
        % name - The registry name.
        name char
    end
    methods
        function obj = RegistryNotExistException(ice_exid, ice_exmsg, name)
            if nargin <= 2
                name = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:RegistryNotExistException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.RegistryNotExistException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.name = name;
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
