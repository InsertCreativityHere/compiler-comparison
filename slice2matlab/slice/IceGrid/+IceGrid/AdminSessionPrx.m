% AdminSessionPrx   Summary of AdminSessionPrx
%
% Represents an administrative session between an admin tool and an IceGrid registry.
%
% AdminSessionPrx Methods:
%   keepAlive - Keeps the session alive.
%   keepAliveAsync - Keeps the session alive.
%   getAdmin - Gets a proxy to the IceGrid admin object.
%   getAdminAsync - Gets a proxy to the IceGrid admin object.
%   getAdminCallbackTemplate - Gets a "template" proxy for admin callback objects.
%   getAdminCallbackTemplateAsync - Gets a "template" proxy for admin callback objects.
%   setObservers - Sets the observer proxies that receive notifications when the state of the registry or nodes changes.
%   setObserversAsync - Sets the observer proxies that receive notifications when the state of the registry or nodes changes.
%   setObserversByIdentity - Sets the observer identities that receive notifications when the state of the registry or nodes changes.
%   setObserversByIdentityAsync - Sets the observer identities that receive notifications when the state of the registry or nodes changes.
%   startUpdate - Acquires an exclusive lock to start updating the registry applications.
%   startUpdateAsync - Acquires an exclusive lock to start updating the registry applications.
%   finishUpdate - Finishes updating the registry and releases the exclusive lock.
%   finishUpdateAsync - Finishes updating the registry and releases the exclusive lock.
%   getReplicaName - Gets the name of the registry replica hosting this session.
%   getReplicaNameAsync - Gets the name of the registry replica hosting this session.
%   openServerLog - Opens a server log file for reading.
%   openServerLogAsync - Opens a server log file for reading.
%   openServerStdErr - Opens a server stderr file for reading.
%   openServerStdErrAsync - Opens a server stderr file for reading.
%   openServerStdOut - Opens a server stdout file for reading.
%   openServerStdOutAsync - Opens a server stdout file for reading.
%   openNodeStdErr - Opens a node stderr file for reading.
%   openNodeStdErrAsync - Opens a node stderr file for reading.
%   openNodeStdOut - Opens a node stdout file for reading.
%   openNodeStdOutAsync - Opens a node stdout file for reading.
%   openRegistryStdErr - Opens a registry stderr file for reading.
%   openRegistryStdErrAsync - Opens a registry stderr file for reading.
%   openRegistryStdOut - Opens a registry stdout file for reading.
%   openRegistryStdOutAsync - Opens a registry stdout file for reading.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also IceGrid.Registry

% Copyright (c) ZeroC, Inc.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef AdminSessionPrx < Glacier2.SessionPrx
    methods
        function keepAlive(obj, varargin)
            % keepAlive   Keeps the session alive.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('keepAlive', 2, false, [], false, {}, varargin{:});
        end
        function r_ = keepAliveAsync(obj, varargin)
            % keepAliveAsync   Keeps the session alive.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('keepAlive', 2, false, [], 0, [], {}, varargin{:});
        end
        function result = getAdmin(obj, varargin)
            % getAdmin   Gets a proxy to the IceGrid admin object. The admin object returned by this operation can only be accessed
            % by the session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.AdminPrx) - A proxy to the IceGrid admin object. This proxy is never null.
            
            is_ = obj.iceInvoke('getAdmin', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.AdminPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getAdminAsync(obj, varargin)
            % getAdminAsync   Gets a proxy to the IceGrid admin object. The admin object returned by this operation can only be accessed
            % by the session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.AdminPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getAdmin', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getAdminCallbackTemplate(obj, varargin)
            % getAdminCallbackTemplate   Gets a "template" proxy for admin callback objects. An Admin client uses this proxy to set the category of
            % its callback objects, and the published endpoints of the object adapter hosting the admin callback objects.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - A template proxy. The returned proxy is null when the Admin session was established using Glacier2.
            
            is_ = obj.iceInvoke('getAdminCallbackTemplate', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = getAdminCallbackTemplateAsync(obj, varargin)
            % getAdminCallbackTemplateAsync   Gets a "template" proxy for admin callback objects. An Admin client uses this proxy to set the category of
            % its callback objects, and the published endpoints of the object adapter hosting the admin callback objects.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getAdminCallbackTemplate', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function setObservers(obj, registryObs, nodeObs, appObs, adptObs, objObs, varargin)
            % setObservers   Sets the observer proxies that receive notifications when the state of the registry or nodes changes.
            %
            % Parameters:
            %   registryObs (IceGrid.RegistryObserverPrx) - The registry observer.
            %   nodeObs (IceGrid.NodeObserverPrx) - The node observer.
            %   appObs (IceGrid.ApplicationObserverPrx) - The application observer.
            %   adptObs (IceGrid.AdapterObserverPrx) - The adapter observer.
            %   objObs (IceGrid.ObjectObserverPrx) - The object observer.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.ObserverAlreadyRegisteredException - Thrown when an observer is already registered with this registry.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(registryObs);
            os_.writeProxy(nodeObs);
            os_.writeProxy(appObs);
            os_.writeProxy(adptObs);
            os_.writeProxy(objObs);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setObservers', 2, true, os_, false, IceGrid.AdminSessionPrx.setObservers_ex_, varargin{:});
        end
        function r_ = setObserversAsync(obj, registryObs, nodeObs, appObs, adptObs, objObs, varargin)
            % setObserversAsync   Sets the observer proxies that receive notifications when the state of the registry or nodes changes.
            %
            % Parameters:
            %   registryObs (IceGrid.RegistryObserverPrx) - The registry observer.
            %   nodeObs (IceGrid.NodeObserverPrx) - The node observer.
            %   appObs (IceGrid.ApplicationObserverPrx) - The application observer.
            %   adptObs (IceGrid.AdapterObserverPrx) - The adapter observer.
            %   objObs (IceGrid.ObjectObserverPrx) - The object observer.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.ObserverAlreadyRegisteredException - Thrown when an observer is already registered with this registry.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(registryObs);
            os_.writeProxy(nodeObs);
            os_.writeProxy(appObs);
            os_.writeProxy(adptObs);
            os_.writeProxy(objObs);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setObservers', 2, true, os_, 0, [], IceGrid.AdminSessionPrx.setObservers_ex_, varargin{:});
        end
        function setObserversByIdentity(obj, registryObs, nodeObs, appObs, adptObs, objObs, varargin)
            % setObserversByIdentity   Sets the observer identities that receive notifications when the state of the registry or nodes changes.
            % This operation should be used by clients that are using a bidirectional connection to communicate with the
            % session.
            %
            % Parameters:
            %   registryObs (Ice.Identity) - The registry observer identity.
            %   nodeObs (Ice.Identity) - The node observer identity.
            %   appObs (Ice.Identity) - The application observer.
            %   adptObs (Ice.Identity) - The adapter observer.
            %   objObs (Ice.Identity) - The object observer.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.ObserverAlreadyRegisteredException - Thrown when an observer is already registered with this registry.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, registryObs);
            Ice.Identity.ice_write(os_, nodeObs);
            Ice.Identity.ice_write(os_, appObs);
            Ice.Identity.ice_write(os_, adptObs);
            Ice.Identity.ice_write(os_, objObs);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setObserversByIdentity', 2, true, os_, false, IceGrid.AdminSessionPrx.setObserversByIdentity_ex_, varargin{:});
        end
        function r_ = setObserversByIdentityAsync(obj, registryObs, nodeObs, appObs, adptObs, objObs, varargin)
            % setObserversByIdentityAsync   Sets the observer identities that receive notifications when the state of the registry or nodes changes.
            % This operation should be used by clients that are using a bidirectional connection to communicate with the
            % session.
            %
            % Parameters:
            %   registryObs (Ice.Identity) - The registry observer identity.
            %   nodeObs (Ice.Identity) - The node observer identity.
            %   appObs (Ice.Identity) - The application observer.
            %   adptObs (Ice.Identity) - The adapter observer.
            %   objObs (Ice.Identity) - The object observer.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.ObserverAlreadyRegisteredException - Thrown when an observer is already registered with this registry.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, registryObs);
            Ice.Identity.ice_write(os_, nodeObs);
            Ice.Identity.ice_write(os_, appObs);
            Ice.Identity.ice_write(os_, adptObs);
            Ice.Identity.ice_write(os_, objObs);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setObserversByIdentity', 2, true, os_, 0, [], IceGrid.AdminSessionPrx.setObserversByIdentity_ex_, varargin{:});
        end
        function result = startUpdate(obj, varargin)
            % startUpdate   Acquires an exclusive lock to start updating the registry applications.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32) - The current serial.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the exclusive lock can't be acquired. This might happen if the
            %     lock is currently acquired by another session.
            
            is_ = obj.iceInvoke('startUpdate', 0, true, [], true, IceGrid.AdminSessionPrx.startUpdate_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = startUpdateAsync(obj, varargin)
            % startUpdateAsync   Acquires an exclusive lock to start updating the registry applications.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the exclusive lock can't be acquired. This might happen if the
            %     lock is currently acquired by another session.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('startUpdate', 0, true, [], 1, @unmarshal, IceGrid.AdminSessionPrx.startUpdate_ex_, varargin{:});
        end
        function finishUpdate(obj, varargin)
            % finishUpdate   Finishes updating the registry and releases the exclusive lock.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock.
            
            obj.iceInvoke('finishUpdate', 0, true, [], false, IceGrid.AdminSessionPrx.finishUpdate_ex_, varargin{:});
        end
        function r_ = finishUpdateAsync(obj, varargin)
            % finishUpdateAsync   Finishes updating the registry and releases the exclusive lock.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock.
            
            r_ = obj.iceInvokeAsync('finishUpdate', 0, true, [], 0, [], IceGrid.AdminSessionPrx.finishUpdate_ex_, varargin{:});
        end
        function result = getReplicaName(obj, varargin)
            % getReplicaName   Gets the name of the registry replica hosting this session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char) - The replica name of the registry.
            
            is_ = obj.iceInvoke('getReplicaName', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getReplicaNameAsync(obj, varargin)
            % getReplicaNameAsync   Gets the name of the registry replica hosting this session.
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
            r_ = obj.iceInvokeAsync('getReplicaName', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = openServerLog(obj, id, path, count, varargin)
            % openServerLog   Opens a server log file for reading.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   path (char) - The path of the log file. A log file can be opened only if it's declared in the server or
            %     service deployment descriptor.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %     Otherwise, the file is read from the last @p count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.FileIteratorPrx) - An iterator to read the file. This proxy is never null.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the server couldn't be deployed on the node.
            %   IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeString(path);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('openServerLog', 0, true, os_, true, IceGrid.AdminSessionPrx.openServerLog_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.FileIteratorPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = openServerLogAsync(obj, id, path, count, varargin)
            % openServerLogAsync   Opens a server log file for reading.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   path (char) - The path of the log file. A log file can be opened only if it's declared in the server or
            %     service deployment descriptor.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %     Otherwise, the file is read from the last @p count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the server couldn't be deployed on the node.
            %   IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeString(path);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.FileIteratorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('openServerLog', 0, true, os_, 1, @unmarshal, IceGrid.AdminSessionPrx.openServerLog_ex_, varargin{:});
        end
        function result = openServerStdErr(obj, id, count, varargin)
            % openServerStdErr   Opens a server stderr file for reading.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %     Otherwise, the file is read from the last @p count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.FileIteratorPrx) - An iterator to read the file. This proxy is never null.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the server couldn't be deployed on the node.
            %   IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('openServerStdErr', 0, true, os_, true, IceGrid.AdminSessionPrx.openServerStdErr_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.FileIteratorPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = openServerStdErrAsync(obj, id, count, varargin)
            % openServerStdErrAsync   Opens a server stderr file for reading.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %     Otherwise, the file is read from the last @p count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the server couldn't be deployed on the node.
            %   IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.FileIteratorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('openServerStdErr', 0, true, os_, 1, @unmarshal, IceGrid.AdminSessionPrx.openServerStdErr_ex_, varargin{:});
        end
        function result = openServerStdOut(obj, id, count, varargin)
            % openServerStdOut   Opens a server stdout file for reading.
            %
            % Parameters:
            %   id (char) - The server id.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %     Otherwise, the file is read from the last @p count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.FileIteratorPrx) - An iterator to read the file. This proxy is never null.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the server couldn't be deployed on the node.
            %   IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('openServerStdOut', 0, true, os_, true, IceGrid.AdminSessionPrx.openServerStdOut_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.FileIteratorPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = openServerStdOutAsync(obj, id, count, varargin)
            % openServerStdOutAsync   Opens a server stdout file for reading.
            %
            % Parameters:
            %   id (char) - The server id.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %     Otherwise, the file is read from the last @p count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the server couldn't be deployed on the node.
            %   IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.FileIteratorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('openServerStdOut', 0, true, os_, 1, @unmarshal, IceGrid.AdminSessionPrx.openServerStdOut_ex_, varargin{:});
        end
        function result = openNodeStdErr(obj, name, count, varargin)
            % openNodeStdErr   Opens a node stderr file for reading.
            %
            % Parameters:
            %   name (char) - The node name.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %     Otherwise, the file is read from the last @p count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.FileIteratorPrx) - An iterator to read the file. This proxy is never null.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('openNodeStdErr', 0, true, os_, true, IceGrid.AdminSessionPrx.openNodeStdErr_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.FileIteratorPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = openNodeStdErrAsync(obj, name, count, varargin)
            % openNodeStdErrAsync   Opens a node stderr file for reading.
            %
            % Parameters:
            %   name (char) - The node name.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %     Otherwise, the file is read from the last @p count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.FileIteratorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('openNodeStdErr', 0, true, os_, 1, @unmarshal, IceGrid.AdminSessionPrx.openNodeStdErr_ex_, varargin{:});
        end
        function result = openNodeStdOut(obj, name, count, varargin)
            % openNodeStdOut   Opens a node stdout file for reading.
            %
            % Parameters:
            %   name (char) - The node name.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %     Otherwise, the file is read from the last @p count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.FileIteratorPrx) - An iterator to read the file. This proxy is never null.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('openNodeStdOut', 0, true, os_, true, IceGrid.AdminSessionPrx.openNodeStdOut_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.FileIteratorPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = openNodeStdOutAsync(obj, name, count, varargin)
            % openNodeStdOutAsync   Opens a node stdout file for reading.
            %
            % Parameters:
            %   name (char) - The node name.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %     Otherwise, the file is read from the last @p count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.FileIteratorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('openNodeStdOut', 0, true, os_, 1, @unmarshal, IceGrid.AdminSessionPrx.openNodeStdOut_ex_, varargin{:});
        end
        function result = openRegistryStdErr(obj, name, count, varargin)
            % openRegistryStdErr   Opens a registry stderr file for reading.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %     Otherwise, the file is read from the last @p count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.FileIteratorPrx) - An iterator to read the file. This proxy is never null.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %   IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            %   IceGrid.RegistryUnreachableException - Thrown when the registry is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('openRegistryStdErr', 0, true, os_, true, IceGrid.AdminSessionPrx.openRegistryStdErr_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.FileIteratorPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = openRegistryStdErrAsync(obj, name, count, varargin)
            % openRegistryStdErrAsync   Opens a registry stderr file for reading.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %     Otherwise, the file is read from the last @p count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %   IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            %   IceGrid.RegistryUnreachableException - Thrown when the registry is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.FileIteratorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('openRegistryStdErr', 0, true, os_, 1, @unmarshal, IceGrid.AdminSessionPrx.openRegistryStdErr_ex_, varargin{:});
        end
        function result = openRegistryStdOut(obj, name, count, varargin)
            % openRegistryStdOut   Opens a registry stdout file for reading.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %     Otherwise, the file is read from the last @p count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.FileIteratorPrx) - An iterator to read the file. This proxy is never null.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %   IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            %   IceGrid.RegistryUnreachableException - Thrown when the registry is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('openRegistryStdOut', 0, true, os_, true, IceGrid.AdminSessionPrx.openRegistryStdOut_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.FileIteratorPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = openRegistryStdOutAsync(obj, name, count, varargin)
            % openRegistryStdOutAsync   Opens a registry stdout file for reading.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %     Otherwise, the file is read from the last @p count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %   IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            %   IceGrid.RegistryUnreachableException - Thrown when the registry is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.FileIteratorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('openRegistryStdOut', 0, true, os_, 1, @unmarshal, IceGrid.AdminSessionPrx.openRegistryStdOut_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::AdminSession';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.AdminSessionPrx');
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
            % Returns (IceGrid.AdminSessionPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.AdminSessionPrx.ice_staticId(), 'IceGrid.AdminSessionPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.AdminSessionPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.AdminSessionPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        setObservers_ex_ = { 'IceGrid.ObserverAlreadyRegisteredException' }
        setObserversByIdentity_ex_ = { 'IceGrid.ObserverAlreadyRegisteredException' }
        startUpdate_ex_ = { 'IceGrid.AccessDeniedException' }
        finishUpdate_ex_ = { 'IceGrid.AccessDeniedException' }
        openServerLog_ex_ = { 'IceGrid.FileNotAvailableException', 'IceGrid.ServerNotExistException', 'IceGrid.NodeUnreachableException', 'IceGrid.DeploymentException' }
        openServerStdErr_ex_ = { 'IceGrid.FileNotAvailableException', 'IceGrid.ServerNotExistException', 'IceGrid.NodeUnreachableException', 'IceGrid.DeploymentException' }
        openServerStdOut_ex_ = { 'IceGrid.FileNotAvailableException', 'IceGrid.ServerNotExistException', 'IceGrid.NodeUnreachableException', 'IceGrid.DeploymentException' }
        openNodeStdErr_ex_ = { 'IceGrid.FileNotAvailableException', 'IceGrid.NodeNotExistException', 'IceGrid.NodeUnreachableException' }
        openNodeStdOut_ex_ = { 'IceGrid.FileNotAvailableException', 'IceGrid.NodeNotExistException', 'IceGrid.NodeUnreachableException' }
        openRegistryStdErr_ex_ = { 'IceGrid.FileNotAvailableException', 'IceGrid.RegistryNotExistException', 'IceGrid.RegistryUnreachableException' }
        openRegistryStdOut_ex_ = { 'IceGrid.FileNotAvailableException', 'IceGrid.RegistryNotExistException', 'IceGrid.RegistryUnreachableException' }
    end
end
