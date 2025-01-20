% AccessDeniedException   Summary of AccessDeniedException
%
% his exception is raised if a registry lock wasn't acquired or is already held by a session.
%
% AccessDeniedException Properties:
%   lockUserId - The id of the user holding the lock (if any).

% Copyright (c) ZeroC, Inc.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef AccessDeniedException < Ice.UserException
    properties
        % lockUserId - The id of the user holding the lock (if any).
        lockUserId char
    end
    methods
        function obj = AccessDeniedException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:AccessDeniedException';
                msg = 'IceGrid.AccessDeniedException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::AccessDeniedException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.lockUserId = is.readString();
            is.endSlice();
        end
    end
end
