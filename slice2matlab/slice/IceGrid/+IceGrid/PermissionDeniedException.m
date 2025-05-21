% PermissionDeniedException   Summary of PermissionDeniedException
%
% The exception that is thrown when a client is not allowed to create a session.
%
% PermissionDeniedException Properties:
%   reason - The reason why permission was denied.

% Copyright (c) ZeroC, Inc.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef PermissionDeniedException < Ice.UserException
    properties
        % reason - The reason why permission was denied.
        reason char
    end
    methods
        function obj = PermissionDeniedException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:PermissionDeniedException';
                msg = 'IceGrid.PermissionDeniedException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::PermissionDeniedException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.reason = is.readString();
            is.endSlice();
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::IceGrid::PermissionDeniedException'
    end
end
