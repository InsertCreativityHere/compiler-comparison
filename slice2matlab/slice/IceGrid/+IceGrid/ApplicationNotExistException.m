% ApplicationNotExistException   Summary of ApplicationNotExistException
%
% This exception is raised if an application does not exist.
%
% ApplicationNotExistException Properties:
%   name - The name of the application.

% Copyright (c) ZeroC, Inc.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef ApplicationNotExistException < Ice.UserException
    properties
        % name - The name of the application.
        name char
    end
    methods
        function obj = ApplicationNotExistException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:ApplicationNotExistException';
                msg = 'IceGrid.ApplicationNotExistException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
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
