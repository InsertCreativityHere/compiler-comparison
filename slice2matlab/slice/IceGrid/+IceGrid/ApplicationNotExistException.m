% ApplicationNotExistException   Summary of ApplicationNotExistException
%
% This exception is raised if an application does not exist.
%
% ApplicationNotExistException Properties:
%   name - The name of the application.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.7.9

classdef ApplicationNotExistException < Ice.UserException
    properties
        % name - The name of the application.
        name char
    end
    methods
        function obj = ApplicationNotExistException(ice_exid, ice_exmsg, name)
            if nargin <= 2
                name = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:ApplicationNotExistException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.ApplicationNotExistException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.name = name;
        end
        function id = ice_id(~)
            id = '::IceGrid::ApplicationNotExistException';
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
