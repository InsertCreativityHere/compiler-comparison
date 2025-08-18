classdef RegistryPrx < Ice.ObjectPrx
    %REGISTRYPRX Represents the main entry point into the IceGrid registry service. It provides operations to create sessions
    %   with the registry.
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.RegistryPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   RegistryPrx Methods:
    %     createAdminSession - Creates an administrative session.
    %     createAdminSessionAsync - An asynchronous createAdminSession.
    %     createAdminSessionFromSecureConnection - Creates an administrative session from a secure connection.
    %     createAdminSessionFromSecureConnectionAsync - An asynchronous createAdminSessionFromSecureConnection.
    %     createSession - Creates a client session.
    %     createSessionAsync - An asynchronous createSession.
    %     createSessionFromSecureConnection - Creates a client session from a secure connection.
    %     createSessionFromSecureConnectionAsync - An asynchronous createSessionFromSecureConnection.
    %     getSessionTimeout - Gets the session timeout.
    %     getSessionTimeoutAsync - An asynchronous getSessionTimeout.
    %
    %   RegistryPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::Registry.
    %     uncheckedCast - Creates a RegistryPrx from another proxy without any validation.
    %
    %   Generated from Registry.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = createSession(obj, userId, password, context)
            %CREATESESSION Creates a client session.
            %
            %   Input Arguments
            %     userId - The user ID.
            %       character vector
            %     password - The password for the given user.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to the newly created session. This proxy is never null.
            %       IceGrid.SessionPrx scalar | empty array of IceGrid.SessionPrx
            %
            %   Exceptions
            %     IceGrid.PermissionDeniedException - Thrown when authentication or authorization fails.
            
            arguments
                obj (1, 1) IceGrid.RegistryPrx
                userId (1, :) char
                password (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(userId);
            os_.writeString(password);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('createSession', 0, true, os_, true, IceGrid.RegistryPrx.createSession_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.SessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = createSessionAsync(obj, userId, password, context)
            %CREATESESSIONASYNC Creates a client session.
            %
            %   Input Arguments
            %     userId - The user ID.
            %       character vector
            %     password - The password for the given user.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also createSession, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.RegistryPrx
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
                returnValue = IceGrid.SessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('createSession', 0, true, os_, 1, @unmarshal, IceGrid.RegistryPrx.createSession_ex_, context);
        end

        function returnValue = createAdminSession(obj, userId, password, context)
            %CREATEADMINSESSION Creates an administrative session.
            %
            %   Input Arguments
            %     userId - The user ID.
            %       character vector
            %     password - The password for the given user.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy for the newly created session. This proxy is never null.
            %       IceGrid.AdminSessionPrx scalar | empty array of IceGrid.AdminSessionPrx
            %
            %   Exceptions
            %     IceGrid.PermissionDeniedException - Thrown when authentication or authorization fails.
            
            arguments
                obj (1, 1) IceGrid.RegistryPrx
                userId (1, :) char
                password (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(userId);
            os_.writeString(password);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('createAdminSession', 0, true, os_, true, IceGrid.RegistryPrx.createAdminSession_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.AdminSessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = createAdminSessionAsync(obj, userId, password, context)
            %CREATEADMINSESSIONASYNC Creates an administrative session.
            %
            %   Input Arguments
            %     userId - The user ID.
            %       character vector
            %     password - The password for the given user.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also createAdminSession, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.RegistryPrx
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
                returnValue = IceGrid.AdminSessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('createAdminSession', 0, true, os_, 1, @unmarshal, IceGrid.RegistryPrx.createAdminSession_ex_, context);
        end

        function returnValue = createSessionFromSecureConnection(obj, context)
            %CREATESESSIONFROMSECURECONNECTION Creates a client session from a secure connection.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy for the newly created session. This proxy is never null.
            %       IceGrid.SessionPrx scalar | empty array of IceGrid.SessionPrx
            %
            %   Exceptions
            %     IceGrid.PermissionDeniedException - Thrown when authentication or authorization fails.
            
            arguments
                obj (1, 1) IceGrid.RegistryPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('createSessionFromSecureConnection', 0, true, [], true, IceGrid.RegistryPrx.createSessionFromSecureConnection_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.SessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = createSessionFromSecureConnectionAsync(obj, context)
            %CREATESESSIONFROMSECURECONNECTIONASYNC Creates a client session from a secure connection.
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
            
            arguments
                obj (1, 1) IceGrid.RegistryPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.SessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('createSessionFromSecureConnection', 0, true, [], 1, @unmarshal, IceGrid.RegistryPrx.createSessionFromSecureConnection_ex_, context);
        end

        function returnValue = createAdminSessionFromSecureConnection(obj, context)
            %CREATEADMINSESSIONFROMSECURECONNECTION Creates an administrative session from a secure connection.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy for the newly created session. This proxy is never null.
            %       IceGrid.AdminSessionPrx scalar | empty array of IceGrid.AdminSessionPrx
            %
            %   Exceptions
            %     IceGrid.PermissionDeniedException - Thrown when authentication or authorization fails.
            
            arguments
                obj (1, 1) IceGrid.RegistryPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('createAdminSessionFromSecureConnection', 0, true, [], true, IceGrid.RegistryPrx.createAdminSessionFromSecureConnection_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.AdminSessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = createAdminSessionFromSecureConnectionAsync(obj, context)
            %CREATEADMINSESSIONFROMSECURECONNECTIONASYNC Creates an administrative session from a secure connection.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also createAdminSessionFromSecureConnection, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.RegistryPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.AdminSessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('createAdminSessionFromSecureConnection', 0, true, [], 1, @unmarshal, IceGrid.RegistryPrx.createAdminSessionFromSecureConnection_ex_, context);
        end

        function returnValue = getSessionTimeout(obj, context)
            %GETSESSIONTIMEOUT Gets the session timeout. An Ice 3.7 or earlier client can use this value to determine how often it needs to
            %   send heartbeats (using ACM) or call <a href="matlab:help IceGrid.SessionPrx/keepAlive -displayBanner">keepAlive</a> (resp. <a href="matlab:help IceGrid.AdminSessionPrx/keepAlive -displayBanner">keepAlive</a>) to keep
            %   a session alive in the IceGrid registry.
            %
            %   Deprecated
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The session timeout (in seconds).
            %       int32 scalar
            
            arguments
                obj (1, 1) IceGrid.RegistryPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getSessionTimeout', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getSessionTimeoutAsync(obj, context)
            %GETSESSIONTIMEOUTASYNC Gets the session timeout. An Ice 3.7 or earlier client can use this value to determine how often it needs to
            %   send heartbeats (using ACM) or call <a href="matlab:help IceGrid.SessionPrx/keepAlive -displayBanner">keepAlive</a> (resp. <a href="matlab:help IceGrid.AdminSessionPrx/keepAlive -displayBanner">keepAlive</a>) to keep
            %   a session alive in the IceGrid registry.
            %
            %   Deprecated
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
                obj (1, 1) IceGrid.RegistryPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getSessionTimeout', 2, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::Registry';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.RegistryPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::Registry.
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
            %     r - A IceGrid.RegistryPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::Registry; otherwise, an empty array of IceGrid.RegistryPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.RegistryPrx.ice_staticId(), 'IceGrid.RegistryPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.RegistryPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.RegistryPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.RegistryPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        createSession_ex_ = { 'IceGrid.PermissionDeniedException' }
        createAdminSession_ex_ = { 'IceGrid.PermissionDeniedException' }
        createSessionFromSecureConnection_ex_ = { 'IceGrid.PermissionDeniedException' }
        createAdminSessionFromSecureConnection_ex_ = { 'IceGrid.PermissionDeniedException' }
    end
end
