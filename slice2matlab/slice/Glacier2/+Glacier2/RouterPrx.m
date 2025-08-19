classdef RouterPrx < Ice.RouterPrx
    %ROUTERPRX The Glacier2 specialization of the <a href="matlab:help Ice.RouterPrx -displayBanner">RouterPrx</a> interface.
    %
    %   Creation
    %     Syntax
    %       prx = Glacier2.RouterPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   RouterPrx Methods:
    %     createSession - Creates a session for the client (caller) with the router.
    %     createSessionAsync - An asynchronous createSession.
    %     createSessionFromSecureConnection - Creates a per-client session with the router.
    %     createSessionFromSecureConnectionAsync - An asynchronous createSessionFromSecureConnection.
    %     destroySession - Destroys the session of the caller with this router.
    %     destroySessionAsync - An asynchronous destroySession.
    %     getACMTimeout - Gets the idle timeout used by the server-side of the connection.
    %     getACMTimeoutAsync - An asynchronous getACMTimeout.
    %     getCategoryForClient - Gets a unique category that identifies the client (caller) in the router.
    %     getCategoryForClientAsync - An asynchronous getCategoryForClient.
    %     getSessionTimeout - Gets the idle timeout used by the server-side of the connection.
    %     getSessionTimeoutAsync - An asynchronous getSessionTimeout.
    %     refreshSession - Keeps the session with this router alive.
    %     refreshSessionAsync - An asynchronous refreshSession.
    %
    %   RouterPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Glacier2::Router.
    %     uncheckedCast - Creates a RouterPrx from another proxy without any validation.
    %
    %   Generated from Router.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getCategoryForClient(obj, context)
            %GETCATEGORYFORCLIENT Gets a unique category that identifies the client (caller) in the router. This category must be used in the
            %   identities of all the client's callback objects.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The category. It's an empty string when |Glacier2.Server.Endpoints| is not configured.
            %       character vector
            
            arguments
                obj (1, 1) Glacier2.RouterPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getCategoryForClient', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getCategoryForClientAsync(obj, context)
            %GETCATEGORYFORCLIENTASYNC Gets a unique category that identifies the client (caller) in the router. This category must be used in the
            %   identities of all the client's callback objects.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getCategoryForClient, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.RouterPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getCategoryForClient', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = createSession(obj, userId, password, context)
            %CREATESESSION Creates a session for the client (caller) with the router. If a <a href="matlab:help Glacier2.SessionManagerPrx -displayBanner">SessionManagerPrx</a> is configured,
            %   a proxy to a <a href="matlab:help Glacier2.SessionPrx -displayBanner">SessionPrx</a> object is returned to the client. Otherwise, null is returned and only an
            %   internal session (i.e., not visible to the client) is created.
            %   If a non-null session proxy is returned, it must be configured to route through the router that created it.
            %   This occurs automatically when the router is configured as the client's default router at the time the
            %   session proxy is created in the client application; otherwise, the client must configure the session proxy
            %   explicitly.
            %
            %   Input Arguments
            %     userId - The user ID.
            %       character vector
            %     password - The password.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy for the newly created session, or null if no <a href="matlab:help Glacier2.SessionManagerPrx -displayBanner">SessionManagerPrx</a> is configured.
            %       Glacier2.SessionPrx scalar | empty array of Glacier2.SessionPrx
            %
            %   Exceptions
            %     Glacier2.PermissionDeniedException - Thrown when an authentication or authorization failure occurs.
            %     Glacier2.CannotCreateSessionException - Thrown when the session cannot be created.
            %
            %   See also Glacier2.Session, Glacier2.SessionManager, Glacier2.PermissionsVerifier
            
            arguments
                obj (1, 1) Glacier2.RouterPrx
                userId (1, :) char
                password (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(userId);
            os_.writeString(password);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('createSession', 0, true, os_, true, Glacier2.RouterPrx.createSession_ex_, context);
            is_.startEncapsulation();
            returnValue = Glacier2.SessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = createSessionAsync(obj, userId, password, context)
            %CREATESESSIONASYNC Creates a session for the client (caller) with the router. If a <a href="matlab:help Glacier2.SessionManagerPrx -displayBanner">SessionManagerPrx</a> is configured,
            %   a proxy to a <a href="matlab:help Glacier2.SessionPrx -displayBanner">SessionPrx</a> object is returned to the client. Otherwise, null is returned and only an
            %   internal session (i.e., not visible to the client) is created.
            %   If a non-null session proxy is returned, it must be configured to route through the router that created it.
            %   This occurs automatically when the router is configured as the client's default router at the time the
            %   session proxy is created in the client application; otherwise, the client must configure the session proxy
            %   explicitly.
            %
            %   Input Arguments
            %     userId - The user ID.
            %       character vector
            %     password - The password.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also createSession, Ice.Future.
            %
            %   See also Glacier2.Session, Glacier2.SessionManager, Glacier2.PermissionsVerifier
            
            arguments
                obj (1, 1) Glacier2.RouterPrx
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
                returnValue = Glacier2.SessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('createSession', 0, true, os_, 1, @unmarshal, Glacier2.RouterPrx.createSession_ex_, context);
        end

        function returnValue = createSessionFromSecureConnection(obj, context)
            %CREATESESSIONFROMSECURECONNECTION Creates a per-client session with the router. The user is authenticated through the SSL certificate(s)
            %   associated with the connection. If an <a href="matlab:help Glacier2.SSLSessionManagerPrx -displayBanner">SSLSessionManagerPrx</a> is configured, a proxy to a <a href="matlab:help Glacier2.SessionPrx -displayBanner">SessionPrx</a>
            %   object is returned to the client. Otherwise, null is returned and only an internal session (i.e., not
            %   visible to the client) is created.
            %   If a non-null session proxy is returned, it must be configured to route through the router that created it.
            %   This occurs automatically when the router is configured as the client's default router at the time the
            %   session proxy is created in the client application; otherwise, the client must configure the session proxy
            %   explicitly.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy for the newly created session, or null if no <a href="matlab:help Glacier2.SSLSessionManagerPrx -displayBanner">SSLSessionManagerPrx</a> is configured.
            %       Glacier2.SessionPrx scalar | empty array of Glacier2.SessionPrx
            %
            %   Exceptions
            %     Glacier2.PermissionDeniedException - Thrown when an authentication or authorization failure occurs.
            %     Glacier2.CannotCreateSessionException - Thrown when the session cannot be created.
            %
            %   See also Glacier2.Session, Glacier2.SessionManager, Glacier2.PermissionsVerifier
            
            arguments
                obj (1, 1) Glacier2.RouterPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('createSessionFromSecureConnection', 0, true, [], true, Glacier2.RouterPrx.createSessionFromSecureConnection_ex_, context);
            is_.startEncapsulation();
            returnValue = Glacier2.SessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = createSessionFromSecureConnectionAsync(obj, context)
            %CREATESESSIONFROMSECURECONNECTIONASYNC Creates a per-client session with the router. The user is authenticated through the SSL certificate(s)
            %   associated with the connection. If an <a href="matlab:help Glacier2.SSLSessionManagerPrx -displayBanner">SSLSessionManagerPrx</a> is configured, a proxy to a <a href="matlab:help Glacier2.SessionPrx -displayBanner">SessionPrx</a>
            %   object is returned to the client. Otherwise, null is returned and only an internal session (i.e., not
            %   visible to the client) is created.
            %   If a non-null session proxy is returned, it must be configured to route through the router that created it.
            %   This occurs automatically when the router is configured as the client's default router at the time the
            %   session proxy is created in the client application; otherwise, the client must configure the session proxy
            %   explicitly.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also createSessionFromSecureConnection, Ice.Future.
            %
            %   See also Glacier2.Session, Glacier2.SessionManager, Glacier2.PermissionsVerifier
            
            arguments
                obj (1, 1) Glacier2.RouterPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Glacier2.SessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('createSessionFromSecureConnection', 0, true, [], 1, @unmarshal, Glacier2.RouterPrx.createSessionFromSecureConnection_ex_, context);
        end

        function refreshSession(obj, context)
            %REFRESHSESSION Keeps the session with this router alive.
            %
            %   Deprecated: As of Ice 3.8, this operation does nothing.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Glacier2.SessionNotExistException - Thrown when no session exists for the caller (client).
            
            arguments
                obj (1, 1) Glacier2.RouterPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('refreshSession', 0, true, [], false, Glacier2.RouterPrx.refreshSession_ex_, context);
        end

        function future = refreshSessionAsync(obj, context)
            %REFRESHSESSIONASYNC Keeps the session with this router alive.
            %
            %   Deprecated: As of Ice 3.8, this operation does nothing.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also refreshSession, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.RouterPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('refreshSession', 0, true, [], 0, [], Glacier2.RouterPrx.refreshSession_ex_, context);
        end

        function destroySession(obj, context)
            %DESTROYSESSION Destroys the session of the caller with this router.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Glacier2.SessionNotExistException - Thrown when no session exists for the caller (client).
            
            arguments
                obj (1, 1) Glacier2.RouterPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('destroySession', 0, true, [], false, Glacier2.RouterPrx.destroySession_ex_, context);
        end

        function future = destroySessionAsync(obj, context)
            %DESTROYSESSIONASYNC Destroys the session of the caller with this router.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also destroySession, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.RouterPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('destroySession', 0, true, [], 0, [], Glacier2.RouterPrx.destroySession_ex_, context);
        end

        function returnValue = getSessionTimeout(obj, context)
            %GETSESSIONTIMEOUT Gets the idle timeout used by the server-side of the connection.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The idle timeout (in seconds).
            %       int64 scalar
            
            arguments
                obj (1, 1) Glacier2.RouterPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getSessionTimeout', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readLong();
            is_.endEncapsulation();
        end

        function future = getSessionTimeoutAsync(obj, context)
            %GETSESSIONTIMEOUTASYNC Gets the idle timeout used by the server-side of the connection.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getSessionTimeout, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.RouterPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readLong();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getSessionTimeout', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getACMTimeout(obj, context)
            %GETACMTIMEOUT Gets the idle timeout used by the server-side of the connection.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The idle timeout (in seconds).
            %       int32 scalar
            
            arguments
                obj (1, 1) Glacier2.RouterPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getACMTimeout', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getACMTimeoutAsync(obj, context)
            %GETACMTIMEOUTASYNC Gets the idle timeout used by the server-side of the connection.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getACMTimeout, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.RouterPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getACMTimeout', 2, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Glacier2::Router';
        end

        function r = ice_read(is)
            r = is.readProxy('Glacier2.RouterPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Glacier2::Router.
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
            %     r - A Glacier2.RouterPrx scalar if the target object implements Slice interface 
            %       ::Glacier2::Router; otherwise, an empty array of Glacier2.RouterPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Glacier2.RouterPrx.ice_staticId(), 'Glacier2.RouterPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Glacier2.RouterPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Glacier2.RouterPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Glacier2.RouterPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        createSession_ex_ = { 'Glacier2.PermissionDeniedException', 'Glacier2.CannotCreateSessionException' }
        createSessionFromSecureConnection_ex_ = { 'Glacier2.PermissionDeniedException', 'Glacier2.CannotCreateSessionException' }
        refreshSession_ex_ = { 'Glacier2.SessionNotExistException' }
        destroySession_ex_ = { 'Glacier2.SessionNotExistException' }
    end
end
