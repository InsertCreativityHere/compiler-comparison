% RegistryPrx   Summary of RegistryPrx
%
% Represents the main entry point into the IceGrid registry service. It provides operations to create sessions
% with the registry.
%
% RegistryPrx Methods:
%   createSession - Creates a client session.
%   createSessionAsync - Creates a client session.
%   createAdminSession - Creates an administrative session.
%   createAdminSessionAsync - Creates an administrative session.
%   createSessionFromSecureConnection - Creates a client session from a secure connection.
%   createSessionFromSecureConnectionAsync - Creates a client session from a secure connection.
%   createAdminSessionFromSecureConnection - Creates an administrative session from a secure connection.
%   createAdminSessionFromSecureConnectionAsync - Creates an administrative session from a secure connection.
%   getSessionTimeout - Gets the session timeout.
%   getSessionTimeoutAsync - Gets the session timeout.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from Registry.ice by slice2matlab version 3.8.0-alpha.0

classdef RegistryPrx < Ice.ObjectPrx
    methods
        function result = createSession(obj, userId, password, varargin)
            % createSession   Creates a client session.
            %
            % Parameters:
            %   userId (char) - The user ID.
            %   password (char) - The password for the given user.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.SessionPrx) - A proxy to the newly created session. This proxy is never null.
            %
            % Exceptions:
            %   IceGrid.PermissionDeniedException - Thrown when authentication or authorization fails.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(userId);
            os_.writeString(password);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('createSession', 0, true, os_, true, IceGrid.RegistryPrx.createSession_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.SessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = createSessionAsync(obj, userId, password, varargin)
            % createSessionAsync   Creates a client session.
            %
            % Parameters:
            %   userId (char) - The user ID.
            %   password (char) - The password for the given user.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.PermissionDeniedException - Thrown when authentication or authorization fails.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(userId);
            os_.writeString(password);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.SessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('createSession', 0, true, os_, 1, @unmarshal, IceGrid.RegistryPrx.createSession_ex_, varargin{:});
        end
        function result = createAdminSession(obj, userId, password, varargin)
            % createAdminSession   Creates an administrative session.
            %
            % Parameters:
            %   userId (char) - The user ID.
            %   password (char) - The password for the given user.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.AdminSessionPrx) - A proxy for the newly created session. This proxy is never null.
            %
            % Exceptions:
            %   IceGrid.PermissionDeniedException - Thrown when authentication or authorization fails.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(userId);
            os_.writeString(password);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('createAdminSession', 0, true, os_, true, IceGrid.RegistryPrx.createAdminSession_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.AdminSessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = createAdminSessionAsync(obj, userId, password, varargin)
            % createAdminSessionAsync   Creates an administrative session.
            %
            % Parameters:
            %   userId (char) - The user ID.
            %   password (char) - The password for the given user.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.PermissionDeniedException - Thrown when authentication or authorization fails.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(userId);
            os_.writeString(password);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.AdminSessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('createAdminSession', 0, true, os_, 1, @unmarshal, IceGrid.RegistryPrx.createAdminSession_ex_, varargin{:});
        end
        function result = createSessionFromSecureConnection(obj, varargin)
            % createSessionFromSecureConnection   Creates a client session from a secure connection.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.SessionPrx) - A proxy for the newly created session. This proxy is never null.
            %
            % Exceptions:
            %   IceGrid.PermissionDeniedException - Thrown when authentication or authorization fails.
            
            is_ = obj.iceInvoke('createSessionFromSecureConnection', 0, true, [], true, IceGrid.RegistryPrx.createSessionFromSecureConnection_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.SessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = createSessionFromSecureConnectionAsync(obj, varargin)
            % createSessionFromSecureConnectionAsync   Creates a client session from a secure connection.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.PermissionDeniedException - Thrown when authentication or authorization fails.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.SessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('createSessionFromSecureConnection', 0, true, [], 1, @unmarshal, IceGrid.RegistryPrx.createSessionFromSecureConnection_ex_, varargin{:});
        end
        function result = createAdminSessionFromSecureConnection(obj, varargin)
            % createAdminSessionFromSecureConnection   Creates an administrative session from a secure connection.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.AdminSessionPrx) - A proxy for the newly created session. This proxy is never null.
            %
            % Exceptions:
            %   IceGrid.PermissionDeniedException - Thrown when authentication or authorization fails.
            
            is_ = obj.iceInvoke('createAdminSessionFromSecureConnection', 0, true, [], true, IceGrid.RegistryPrx.createAdminSessionFromSecureConnection_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.AdminSessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = createAdminSessionFromSecureConnectionAsync(obj, varargin)
            % createAdminSessionFromSecureConnectionAsync   Creates an administrative session from a secure connection.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.PermissionDeniedException - Thrown when authentication or authorization fails.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.AdminSessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('createAdminSessionFromSecureConnection', 0, true, [], 1, @unmarshal, IceGrid.RegistryPrx.createAdminSessionFromSecureConnection_ex_, varargin{:});
        end
        function result = getSessionTimeout(obj, varargin)
            % getSessionTimeout   Gets the session timeout. An Ice 3.7 or earlier client can use this value to determine how often it needs to
            % send heartbeats (using ACM) or call Session.keepAlive (resp. AdminSession.keepAlive) to keep
            % a session alive in the IceGrid registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32) - The session timeout (in seconds).
            
            is_ = obj.iceInvoke('getSessionTimeout', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getSessionTimeoutAsync(obj, varargin)
            % getSessionTimeoutAsync   Gets the session timeout. An Ice 3.7 or earlier client can use this value to determine how often it needs to
            % send heartbeats (using ACM) or call Session.keepAlive (resp. AdminSession.keepAlive) to keep
            % a session alive in the IceGrid registry.
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
            r_ = obj.iceInvokeAsync('getSessionTimeout', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::Registry';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.RegistryPrx');
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
            % Returns (IceGrid.RegistryPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.RegistryPrx.ice_staticId(), 'IceGrid.RegistryPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.RegistryPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.RegistryPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        createSession_ex_ = { 'IceGrid.PermissionDeniedException' }
        createAdminSession_ex_ = { 'IceGrid.PermissionDeniedException' }
        createSessionFromSecureConnection_ex_ = { 'IceGrid.PermissionDeniedException' }
        createAdminSessionFromSecureConnection_ex_ = { 'IceGrid.PermissionDeniedException' }
    end
end
