% PermissionsVerifierPrx   Summary of PermissionsVerifierPrx
%
% Represents an object that checks user permissions. The Glacier2 router and other services use a
% PermissionsVerifier proxy when the user is authenticated using a user ID and password.
%
% PermissionsVerifierPrx Methods:
%   checkPermissions - Checks if a user is authorized to establish a session.
%   checkPermissionsAsync - Checks if a user is authorized to establish a session.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from PermissionsVerifier.ice by slice2matlab version 3.8.0-alpha.0

classdef PermissionsVerifierPrx < Ice.ObjectPrx
    methods
        function [result, reason] = checkPermissions(obj, userId, password, varargin)
            % checkPermissions   Checks if a user is authorized to establish a session.
            %
            % Parameters:
            %   userId (char) - The user ID.
            %   password (char) - The user's password.
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (logical) - `true` if access is granted, `false` otherwise.
            %   reason (char) - The reason why access was denied.
            %
            % Exceptions:
            %   Glacier2.PermissionDeniedException - Thrown when the user access is denied. This exception can be thrown
            %     instead of returning `false` with a reason set in the reason out parameter.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(userId);
            os_.writeString(password);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('checkPermissions', 2, true, os_, true, Glacier2.PermissionsVerifierPrx.checkPermissions_ex_, varargin{:});
            is_.startEncapsulation();
            reason = is_.readString();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = checkPermissionsAsync(obj, userId, password, varargin)
            % checkPermissionsAsync   Checks if a user is authorized to establish a session.
            %
            % Parameters:
            %   userId (char) - The user ID.
            %   password (char) - The user's password.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Glacier2.PermissionDeniedException - Thrown when the user access is denied. This exception can be thrown
            %     instead of returning `false` with a reason set in the reason out parameter.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(userId);
            os_.writeString(password);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                reason = is_.readString();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = reason;
            end
            r_ = obj.iceInvokeAsync('checkPermissions', 2, true, os_, 2, @unmarshal, Glacier2.PermissionsVerifierPrx.checkPermissions_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Glacier2::PermissionsVerifier';
        end
        function r = ice_read(is)
            r = is.readProxy('Glacier2.PermissionsVerifierPrx');
        end
        function r = checkedCast(p, varargin)
            % checkedCast   Contacts the remote server to verify that the object implements this type.
            %   Raises a local exception if a communication error occurs. You can optionally supply a
            %   facet name and a context map.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %   context - The optional context map to send with the invocation.
            %
            % Returns (Glacier2.PermissionsVerifierPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Glacier2.PermissionsVerifierPrx.ice_staticId(), 'Glacier2.PermissionsVerifierPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Glacier2.PermissionsVerifierPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Glacier2.PermissionsVerifierPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        checkPermissions_ex_ = { 'Glacier2.PermissionDeniedException' }
    end
end
