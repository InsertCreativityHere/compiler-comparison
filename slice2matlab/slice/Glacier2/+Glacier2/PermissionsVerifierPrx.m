classdef PermissionsVerifierPrx < Ice.ObjectPrx
    %PERMISSIONSVERIFIERPRX Represents an object that checks user permissions. The Glacier2 router and other services use a
    %   <a href="matlab:help Glacier2.PermissionsVerifierPrx -displayBanner">PermissionsVerifierPrx</a> proxy when the user is authenticated using a user ID and password.
    %
    %   Creation
    %     Syntax
    %       prx = Glacier2.PermissionsVerifierPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   PermissionsVerifierPrx Methods:
    %     checkPermissions - Checks if a user is authorized to establish a session.
    %     checkPermissionsAsync - An asynchronous checkPermissions.
    %
    %   PermissionsVerifierPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Glacier2::PermissionsVerifier.
    %     uncheckedCast - Creates a PermissionsVerifierPrx from another proxy without any validation.
    %
    %   Generated from PermissionsVerifier.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [returnValue, reason] = checkPermissions(obj, userId, password, context)
            %CHECKPERMISSIONS Checks if a user is authorized to establish a session.
            %
            %   Input Arguments
            %     userId - The user ID.
            %       character vector
            %     password - The user's password.
            %       character vector
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
                obj (1, 1) Glacier2.PermissionsVerifierPrx
                userId (1, :) char
                password (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(userId);
            os_.writeString(password);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('checkPermissions', 2, true, os_, true, Glacier2.PermissionsVerifierPrx.checkPermissions_ex_, context);
            is_.startEncapsulation();
            reason = is_.readString();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = checkPermissionsAsync(obj, userId, password, context)
            %CHECKPERMISSIONSASYNC Checks if a user is authorized to establish a session.
            %
            %   Input Arguments
            %     userId - The user ID.
            %       character vector
            %     password - The user's password.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also checkPermissions, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.PermissionsVerifierPrx
                userId (1, :) char
                password (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(userId);
            os_.writeString(password);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                reason = is_.readString();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = reason;
            end
            future = obj.iceInvokeAsync('checkPermissions', 2, true, os_, 2, @unmarshal, Glacier2.PermissionsVerifierPrx.checkPermissions_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Glacier2::PermissionsVerifier';
        end

        function r = ice_read(is)
            r = is.readProxy('Glacier2.PermissionsVerifierPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Glacier2::PermissionsVerifier.
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
            %     r - A Glacier2.PermissionsVerifierPrx scalar if the target object implements Slice interface 
            %       ::Glacier2::PermissionsVerifier; otherwise, an empty array of Glacier2.PermissionsVerifierPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Glacier2.PermissionsVerifierPrx.ice_staticId(), 'Glacier2.PermissionsVerifierPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Glacier2.PermissionsVerifierPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Glacier2.PermissionsVerifierPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Glacier2.PermissionsVerifierPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        checkPermissions_ex_ = { 'Glacier2.PermissionDeniedException' }
    end
end
