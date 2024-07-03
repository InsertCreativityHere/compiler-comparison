% RouterPrx   Summary of RouterPrx
%
% The Glacier2 specialization of the Ice::Router interface.
%
% RouterPrx Methods:
%   getCategoryForClient - This category must be used in the identities of all of the client's callback objects.
%   getCategoryForClientAsync - This category must be used in the identities of all of the client's callback objects.
%   createSession - Create a per-client session with the router.
%   createSessionAsync - Create a per-client session with the router.
%   createSessionFromSecureConnection - Create a per-client session with the router.
%   createSessionFromSecureConnectionAsync - Create a per-client session with the router.
%   refreshSession - Keep the session with this router alive.
%   refreshSessionAsync - Keep the session with this router alive.
%   destroySession - Destroy the calling client's session with this router.
%   destroySessionAsync - Destroy the calling client's session with this router.
%   getSessionTimeout - Get the idle timeout used by the server-side of the connection.
%   getSessionTimeoutAsync - Get the idle timeout used by the server-side of the connection.
%   getACMTimeout - Get the idle timeout used by the server-side of the connection.
%   getACMTimeoutAsync - Get the idle timeout used by the server-side of the connection.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Router.ice by slice2matlab version 3.8.0-alpha.0

classdef RouterPrx < Ice.RouterPrx
    methods
        function result = getCategoryForClient(obj, varargin)
            % getCategoryForClient   This category must be used in the identities of all of the client's callback objects. This is necessary in
            % order for the router to forward callback requests to the intended client. If the Glacier2 server endpoints
            % are not set, the returned category is an empty string.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char) - The category.
            
            is_ = obj.iceInvoke('getCategoryForClient', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getCategoryForClientAsync(obj, varargin)
            % getCategoryForClientAsync   This category must be used in the identities of all of the client's callback objects. This is necessary in
            % order for the router to forward callback requests to the intended client. If the Glacier2 server endpoints
            % are not set, the returned category is an empty string.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getCategoryForClient', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = createSession(obj, userId, password, varargin)
            % createSession   Create a per-client session with the router. If a SessionManager has been installed, a proxy to a
            % Session object is returned to the client. Otherwise, null is returned and only an internal session
            % (i.e., not visible to the client) is created.
            % If a session proxy is returned, it must be configured to route through the router that created it. This will
            % happen automatically if the router is configured as the client's default router at the time the session
            % proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
            %
            % Parameters:
            %   userId (char) - The user id for which to check the password.
            %   password (char) - The password for the given user id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Glacier2.SessionPrx) - A proxy for the newly created session, or null if no SessionManager has been installed.
            %
            % Exceptions:
            %   Glacier2.CannotCreateSessionException - Raised if the session cannot be created.
            %   Glacier2.PermissionDeniedException - Raised if the password for the given user id is not correct, or if the
            %     user is not allowed access.
            %
            % See also Glacier2.Session, Glacier2.SessionManager, Glacier2.PermissionsVerifier
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeString(userId);
            os_.writeString(password);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('createSession', 0, true, os_, true, Glacier2.RouterPrx.createSession_ex_, varargin{:});
            is_.startEncapsulation();
            result = Glacier2.SessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = createSessionAsync(obj, userId, password, varargin)
            % createSessionAsync   Create a per-client session with the router. If a SessionManager has been installed, a proxy to a
            % Session object is returned to the client. Otherwise, null is returned and only an internal session
            % (i.e., not visible to the client) is created.
            % If a session proxy is returned, it must be configured to route through the router that created it. This will
            % happen automatically if the router is configured as the client's default router at the time the session
            % proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
            %
            % Parameters:
            %   userId (char) - The user id for which to check the password.
            %   password (char) - The password for the given user id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Glacier2.CannotCreateSessionException - Raised if the session cannot be created.
            %   Glacier2.PermissionDeniedException - Raised if the password for the given user id is not correct, or if the
            %     user is not allowed access.
            %
            % See also Glacier2.Session, Glacier2.SessionManager, Glacier2.PermissionsVerifier
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeString(userId);
            os_.writeString(password);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Glacier2.SessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('createSession', 0, true, os_, 1, @unmarshal, Glacier2.RouterPrx.createSession_ex_, varargin{:});
        end
        function result = createSessionFromSecureConnection(obj, varargin)
            % createSessionFromSecureConnection   Create a per-client session with the router. The user is authenticated through the SSL certificates that
            % have been associated with the connection. If a SessionManager has been installed, a proxy to a
            % Session object is returned to the client. Otherwise, null is returned and only an internal session
            % (i.e., not visible to the client) is created.
            % If a session proxy is returned, it must be configured to route through the router that created it. This will
            % happen automatically if the router is configured as the client's default router at the time the session
            % proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Glacier2.SessionPrx) - A proxy for the newly created session, or null if no SessionManager has been installed.
            %
            % Exceptions:
            %   Glacier2.CannotCreateSessionException - Raised if the session cannot be created.
            %   Glacier2.PermissionDeniedException - Raised if the user cannot be authenticated or if the user is not allowed
            %     access.
            %
            % See also Glacier2.Session, Glacier2.SessionManager, Glacier2.PermissionsVerifier
            
            is_ = obj.iceInvoke('createSessionFromSecureConnection', 0, true, [], true, Glacier2.RouterPrx.createSessionFromSecureConnection_ex_, varargin{:});
            is_.startEncapsulation();
            result = Glacier2.SessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = createSessionFromSecureConnectionAsync(obj, varargin)
            % createSessionFromSecureConnectionAsync   Create a per-client session with the router. The user is authenticated through the SSL certificates that
            % have been associated with the connection. If a SessionManager has been installed, a proxy to a
            % Session object is returned to the client. Otherwise, null is returned and only an internal session
            % (i.e., not visible to the client) is created.
            % If a session proxy is returned, it must be configured to route through the router that created it. This will
            % happen automatically if the router is configured as the client's default router at the time the session
            % proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Glacier2.CannotCreateSessionException - Raised if the session cannot be created.
            %   Glacier2.PermissionDeniedException - Raised if the user cannot be authenticated or if the user is not allowed
            %     access.
            %
            % See also Glacier2.Session, Glacier2.SessionManager, Glacier2.PermissionsVerifier
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Glacier2.SessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('createSessionFromSecureConnection', 0, true, [], 1, @unmarshal, Glacier2.RouterPrx.createSessionFromSecureConnection_ex_, varargin{:});
        end
        function refreshSession(obj, varargin)
            % refreshSession   Keep the session with this router alive. This operation is provided for backward compatibility with Ice 3.7
            % and earlier and does nothing in newer versions of Glacier2.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   Glacier2.SessionNotExistException - Raised if no session exists for the caller (client).
            
            obj.iceInvoke('refreshSession', 0, true, [], false, Glacier2.RouterPrx.refreshSession_ex_, varargin{:});
        end
        function r_ = refreshSessionAsync(obj, varargin)
            % refreshSessionAsync   Keep the session with this router alive. This operation is provided for backward compatibility with Ice 3.7
            % and earlier and does nothing in newer versions of Glacier2.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Glacier2.SessionNotExistException - Raised if no session exists for the caller (client).
            
            r_ = obj.iceInvokeAsync('refreshSession', 0, true, [], 0, [], Glacier2.RouterPrx.refreshSession_ex_, varargin{:});
        end
        function destroySession(obj, varargin)
            % destroySession   Destroy the calling client's session with this router.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   Glacier2.SessionNotExistException - Raised if no session exists for the calling client.
            
            obj.iceInvoke('destroySession', 0, true, [], false, Glacier2.RouterPrx.destroySession_ex_, varargin{:});
        end
        function r_ = destroySessionAsync(obj, varargin)
            % destroySessionAsync   Destroy the calling client's session with this router.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Glacier2.SessionNotExistException - Raised if no session exists for the calling client.
            
            r_ = obj.iceInvokeAsync('destroySession', 0, true, [], 0, [], Glacier2.RouterPrx.destroySession_ex_, varargin{:});
        end
        function result = getSessionTimeout(obj, varargin)
            % getSessionTimeout   Get the idle timeout used by the server-side of the connection.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int64) - The idle timeout (in seconds).
            
            is_ = obj.iceInvoke('getSessionTimeout', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readLong();
            is_.endEncapsulation();
        end
        function r_ = getSessionTimeoutAsync(obj, varargin)
            % getSessionTimeoutAsync   Get the idle timeout used by the server-side of the connection.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readLong();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getSessionTimeout', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getACMTimeout(obj, varargin)
            % getACMTimeout   Get the idle timeout used by the server-side of the connection.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32) - The idle timeout (in seconds).
            
            is_ = obj.iceInvoke('getACMTimeout', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getACMTimeoutAsync(obj, varargin)
            % getACMTimeoutAsync   Get the idle timeout used by the server-side of the connection.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getACMTimeout', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Glacier2::Router';
        end
        function r = ice_read(is)
            r = is.readProxy('Glacier2.RouterPrx');
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
            % Returns (Glacier2.RouterPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Glacier2.RouterPrx.ice_staticId(), 'Glacier2.RouterPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Glacier2.RouterPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Glacier2.RouterPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = RouterPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.RouterPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        createSession_ex_ = { 'Glacier2.CannotCreateSessionException', 'Glacier2.PermissionDeniedException' }
        createSessionFromSecureConnection_ex_ = { 'Glacier2.CannotCreateSessionException', 'Glacier2.PermissionDeniedException' }
        refreshSession_ex_ = { 'Glacier2.SessionNotExistException' }
        destroySession_ex_ = { 'Glacier2.SessionNotExistException' }
    end
end
