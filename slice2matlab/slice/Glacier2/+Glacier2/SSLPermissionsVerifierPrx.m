classdef SSLPermissionsVerifierPrx < Ice.ObjectPrx
    %SSLPERMISSIONSVERIFIERPRX Represents an object that checks user permissions. The Glacier2 router and other services use an
    %   <a href="matlab:help Glacier2.SSLPermissionsVerifierPrx -displayBanner">SSLPermissionsVerifierPrx</a> proxy when the user is authenticated through an SSL certificate.
    %
    %   Creation
    %     Syntax
    %       prx = Glacier2.SSLPermissionsVerifierPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   SSLPermissionsVerifierPrx Methods:
    %     authorize - Checks if a user is authorized to establish a session.
    %     authorizeAsync - An asynchronous authorize.
    %
    %   SSLPermissionsVerifierPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Glacier2::SSLPermissionsVerifier.
    %     uncheckedCast - Creates a SSLPermissionsVerifierPrx from another proxy without any validation.
    %
    %   Generated from PermissionsVerifier.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [returnValue, reason] = authorize(obj, info, context)
            %AUTHORIZE Checks if a user is authorized to establish a session.
            %
            %   Input Arguments
            %     info - The SSL information.
            %       Glacier2.SSLInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - `true` if access is granted, `false` otherwise.
            %       logical scalar
            %     reason - The reason why access was denied.
            %       character vector
            %
            %   Exceptions
            %     Glacier2.PermissionDeniedException - Thrown when the user access is denied. This exception can be thrown
            %       instead of returning `false` with a reason set in the reason out parameter.
            
            arguments
                obj (1, 1) Glacier2.SSLPermissionsVerifierPrx
                info (1, 1) Glacier2.SSLInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Glacier2.SSLInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('authorize', 2, true, os_, true, Glacier2.SSLPermissionsVerifierPrx.authorize_ex_, context);
            is_.startEncapsulation();
            reason = is_.readString();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = authorizeAsync(obj, info, context)
            %AUTHORIZEASYNC Checks if a user is authorized to establish a session.
            %
            %   Input Arguments
            %     info - The SSL information.
            %       Glacier2.SSLInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also authorize, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.SSLPermissionsVerifierPrx
                info (1, 1) Glacier2.SSLInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Glacier2.SSLInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                reason = is_.readString();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = reason;
            end
            future = obj.iceInvokeAsync('authorize', 2, true, os_, 2, @unmarshal, Glacier2.SSLPermissionsVerifierPrx.authorize_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Glacier2::SSLPermissionsVerifier';
        end

        function r = ice_read(is)
            r = is.readProxy('Glacier2.SSLPermissionsVerifierPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Glacier2::SSLPermissionsVerifier.
            %
            %   Input Arguments
            %     p - The proxy to check.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %     context - The request context (optional).
            %       dictionary(string, string) scalar
            %
            %   Output Arguments
            %     r - A Glacier2.SSLPermissionsVerifierPrx scalar if the target object implements Slice interface 
            %       ::Glacier2::SSLPermissionsVerifier; otherwise, an empty array of Glacier2.SSLPermissionsVerifierPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Glacier2.SSLPermissionsVerifierPrx.ice_staticId(), 'Glacier2.SSLPermissionsVerifierPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Glacier2.SSLPermissionsVerifierPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Glacier2.SSLPermissionsVerifierPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Glacier2.SSLPermissionsVerifierPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        authorize_ex_ = { 'Glacier2.PermissionDeniedException' }
    end
end
