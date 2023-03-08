% AccessDeniedException   Summary of AccessDeniedException
%
% This exception is raised if a registry lock wasn't
% acquired or is already held by a session.
%
% AccessDeniedException Properties:
%   lockUserId - The id of the user holding the lock (if any).

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.7.9

classdef AccessDeniedException < Ice.UserException
    properties
        % lockUserId - The id of the user holding the lock (if any).
        lockUserId char
    end
    methods
        function obj = AccessDeniedException(ice_exid, ice_exmsg, lockUserId)
            if nargin <= 2
                lockUserId = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:AccessDeniedException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.AccessDeniedException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.lockUserId = lockUserId;
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
