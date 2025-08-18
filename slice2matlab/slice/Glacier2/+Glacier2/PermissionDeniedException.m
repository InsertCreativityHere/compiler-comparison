classdef PermissionDeniedException < Ice.UserException
    %PERMISSIONDENIEDEXCEPTION The exception that is thrown when a client is not allowed to create a session.
    %
    %   PermissionDeniedException Properties:
    %     reason - The reason why permission was denied.
    %
    %   Generated from PermissionsVerifier.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % REASON The reason why permission was denied.
        %   character vector
        reason (1, :) char
    end
    methods
        function obj = PermissionDeniedException(errID, msg)
            if nargin == 0
                errID = 'Glacier2:PermissionDeniedException';
                msg = 'Glacier2.PermissionDeniedException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Glacier2::PermissionDeniedException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.reason = is.readString();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Glacier2::PermissionDeniedException'
    end
end
