% SSLPermissionsVerifierPrx   Summary of SSLPermissionsVerifierPrx
%
% Represents an object that checks user permissions. The Glacier2 router and other services use an
% SSLPermissionsVerifier proxy when the user is authenticated through an SSL certificate.
%
% SSLPermissionsVerifierPrx Methods:
%   authorize - Checks if a user is authorized to establish a session.
%   authorizeAsync - Checks if a user is authorized to establish a session.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from PermissionsVerifier.ice by slice2matlab version 3.8.0-alpha.0

classdef SSLPermissionsVerifierPrx < Ice.ObjectPrx
    methods
        function [result, reason] = authorize(obj, info, varargin)
            % authorize   Checks if a user is authorized to establish a session.
            %
            % Parameters:
            %   info (Glacier2.SSLInfo) - The SSL information.
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
            Glacier2.SSLInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('authorize', 2, true, os_, true, Glacier2.SSLPermissionsVerifierPrx.authorize_ex_, varargin{:});
            is_.startEncapsulation();
            reason = is_.readString();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = authorizeAsync(obj, info, varargin)
            % authorizeAsync   Checks if a user is authorized to establish a session.
            %
            % Parameters:
            %   info (Glacier2.SSLInfo) - The SSL information.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Glacier2.PermissionDeniedException - Thrown when the user access is denied. This exception can be thrown
            %     instead of returning `false` with a reason set in the reason out parameter.
            
            os_ = obj.iceStartWriteParams([]);
            Glacier2.SSLInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                reason = is_.readString();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = reason;
            end
            r_ = obj.iceInvokeAsync('authorize', 2, true, os_, 2, @unmarshal, Glacier2.SSLPermissionsVerifierPrx.authorize_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Glacier2::SSLPermissionsVerifier';
        end
        function r = ice_read(is)
            r = is.readProxy('Glacier2.SSLPermissionsVerifierPrx');
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
            % Returns (Glacier2.SSLPermissionsVerifierPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Glacier2.SSLPermissionsVerifierPrx.ice_staticId(), 'Glacier2.SSLPermissionsVerifierPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Glacier2.SSLPermissionsVerifierPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Glacier2.SSLPermissionsVerifierPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        authorize_ex_ = { 'Glacier2.PermissionDeniedException' }
    end
end
