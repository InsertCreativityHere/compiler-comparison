% PermissionDeniedException   Summary of PermissionDeniedException
%
% This exception is raised if a client is denied the ability to create a session with the router.
%
% PermissionDeniedException Properties:
%   reason - The reason why permission was denied.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from PermissionsVerifier.ice by slice2matlab version 3.8.0-alpha.0

classdef PermissionDeniedException < Ice.UserException
    properties
        % reason - The reason why permission was denied.
        reason char
    end
    methods
        function obj = PermissionDeniedException(ice_exid, ice_exmsg, reason)
            if nargin <= 2
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Glacier2:PermissionDeniedException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Glacier2.PermissionDeniedException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.reason = reason;
        end
        function id = ice_id(~)
            id = '::Glacier2::PermissionDeniedException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.reason = is.readString();
            is.endSlice();
        end
    end
end
