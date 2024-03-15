% RegistryPrx   Summary of RegistryPrx
%
% The IceGrid registry allows clients create sessions directly with the registry.
%
% RegistryPrx Methods:
%   createSession - Create a client session.
%   createSessionAsync - Create a client session.
%   createAdminSession - Create an administrative session.
%   createAdminSessionAsync - Create an administrative session.
%   createSessionFromSecureConnection - Create a client session from a secure connection.
%   createSessionFromSecureConnectionAsync - Create a client session from a secure connection.
%   createAdminSessionFromSecureConnection - Create an administrative session from a secure connection.
%   createAdminSessionFromSecureConnectionAsync - Create an administrative session from a secure connection.
%   getSessionTimeout - Get the session timeout.
%   getSessionTimeoutAsync - Get the session timeout.
%   getACMTimeout - Get the value of the ACM timeout.
%   getACMTimeoutAsync - Get the value of the ACM timeout.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also IceGrid.Session, IceGrid.AdminSession

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Registry.ice by slice2matlab version 3.8.0-alpha.0

classdef RegistryPrx < Ice.ObjectPrx
    methods
        function result = createSession(obj, userId, password, varargin)
            % createSession   Create a client session.
            %
            % Parameters:
            %   userId (char) - The user id.
            %   password (char) - The password for the given user id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.SessionPrx) - A proxy for the newly created session. The returned proxy is never null.
            %
            % Exceptions:
            %   IceGrid.PermissionDeniedException - Raised if the password for the given user id is not correct, or if the
            %     user is not allowed access.
            
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
            % createSessionAsync   Create a client session.
            %
            % Parameters:
            %   userId (char) - The user id.
            %   password (char) - The password for the given user id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.PermissionDeniedException - Raised if the password for the given user id is not correct, or if the
            %     user is not allowed access.
            
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
            % createAdminSession   Create an administrative session.
            %
            % Parameters:
            %   userId (char) - The user id.
            %   password (char) - The password for the given user id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.AdminSessionPrx) - A proxy for the newly created session. The returned proxy is never null.
            %
            % Exceptions:
            %   IceGrid.PermissionDeniedException - Raised if the password for the given user id is not correct, or if the
            %     user is not allowed access.
            
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
            % createAdminSessionAsync   Create an administrative session.
            %
            % Parameters:
            %   userId (char) - The user id.
            %   password (char) - The password for the given user id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.PermissionDeniedException - Raised if the password for the given user id is not correct, or if the
            %     user is not allowed access.
            
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
            % createSessionFromSecureConnection   Create a client session from a secure connection.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.SessionPrx) - A proxy for the newly created session. The returned proxy is never null.
            %
            % Exceptions:
            %   IceGrid.PermissionDeniedException - Raised if the password for the given user id is not correct, or if the
            %     user is not allowed access.
            
            is_ = obj.iceInvoke('createSessionFromSecureConnection', 0, true, [], true, IceGrid.RegistryPrx.createSessionFromSecureConnection_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.SessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = createSessionFromSecureConnectionAsync(obj, varargin)
            % createSessionFromSecureConnectionAsync   Create a client session from a secure connection.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.PermissionDeniedException - Raised if the password for the given user id is not correct, or if the
            %     user is not allowed access.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.SessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('createSessionFromSecureConnection', 0, true, [], 1, @unmarshal, IceGrid.RegistryPrx.createSessionFromSecureConnection_ex_, varargin{:});
        end
        function result = createAdminSessionFromSecureConnection(obj, varargin)
            % createAdminSessionFromSecureConnection   Create an administrative session from a secure connection.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.AdminSessionPrx) - A proxy for the newly created session. The returned proxy is never null.
            %
            % Exceptions:
            %   IceGrid.PermissionDeniedException - Raised if the password for the given user id is not correct, or if the
            %     user is not allowed access.
            
            is_ = obj.iceInvoke('createAdminSessionFromSecureConnection', 0, true, [], true, IceGrid.RegistryPrx.createAdminSessionFromSecureConnection_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.AdminSessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = createAdminSessionFromSecureConnectionAsync(obj, varargin)
            % createAdminSessionFromSecureConnectionAsync   Create an administrative session from a secure connection.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.PermissionDeniedException - Raised if the password for the given user id is not correct, or if the
            %     user is not allowed access.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.AdminSessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('createAdminSessionFromSecureConnection', 0, true, [], 1, @unmarshal, IceGrid.RegistryPrx.createAdminSessionFromSecureConnection_ex_, varargin{:});
        end
        function result = getSessionTimeout(obj, varargin)
            % getSessionTimeout   Get the session timeout. If a client or administrative client doesn't call the session keepAlive method in
            % the time interval defined by this timeout, IceGrid might reap the session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32) - The timeout (in seconds).
            %
            % See also IceGrid.Session.keepAlive, IceGrid.AdminSession.keepAlive
            
            is_ = obj.iceInvoke('getSessionTimeout', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getSessionTimeoutAsync(obj, varargin)
            % getSessionTimeoutAsync   Get the session timeout. If a client or administrative client doesn't call the session keepAlive method in
            % the time interval defined by this timeout, IceGrid might reap the session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % See also IceGrid.Session.keepAlive, IceGrid.AdminSession.keepAlive
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getSessionTimeout', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getACMTimeout(obj, varargin)
            % getACMTimeout   Get the value of the ACM timeout. Clients supporting ACM connection heartbeats can enable them instead of
            % explicitly sending keep alives requests. This method is only available since Ice 3.6.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32) - The timeout (in seconds).
            
            is_ = obj.iceInvoke('getACMTimeout', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getACMTimeoutAsync(obj, varargin)
            % getACMTimeoutAsync   Get the value of the ACM timeout. Clients supporting ACM connection heartbeats can enable them instead of
            % explicitly sending keep alives requests. This method is only available since Ice 3.6.
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
            r_ = obj.iceInvokeAsync('getACMTimeout', 1, true, [], 1, @unmarshal, {}, varargin{:});
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
    methods(Hidden=true)
        function obj = RegistryPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        createSession_ex_ = { 'IceGrid.PermissionDeniedException' }
        createAdminSession_ex_ = { 'IceGrid.PermissionDeniedException' }
        createSessionFromSecureConnection_ex_ = { 'IceGrid.PermissionDeniedException' }
        createAdminSessionFromSecureConnection_ex_ = { 'IceGrid.PermissionDeniedException' }
    end
end
