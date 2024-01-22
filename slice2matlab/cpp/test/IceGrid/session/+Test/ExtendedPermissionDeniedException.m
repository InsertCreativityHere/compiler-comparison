% ExtendedPermissionDeniedException   Summary of ExtendedPermissionDeniedException

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef ExtendedPermissionDeniedException < Glacier2.PermissionDeniedException
    methods
        function obj = ExtendedPermissionDeniedException(ice_exid, ice_exmsg, reason)
            if nargin <= 2
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:ExtendedPermissionDeniedException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.ExtendedPermissionDeniedException';
            end
            obj = obj@Glacier2.PermissionDeniedException(ice_exid, ice_exmsg, reason);
        end
        function id = ice_id(~)
            id = '::Test::ExtendedPermissionDeniedException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            obj = iceReadImpl@Glacier2.PermissionDeniedException(obj, is);
        end
    end
end
