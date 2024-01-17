% AdminSessionPrx   Summary of AdminSessionPrx
%
% Used by administrative clients to view, update, and receive observer updates from the IceGrid registry. Admin
% sessions are created either via the Registry object or via the registry admin SessionManager
% object.
%
% AdminSessionPrx Methods:
%   keepAlive - Keep the session alive.
%   keepAliveAsync - Keep the session alive.
%   getAdmin - Get the admin interface.
%   getAdminAsync - Get the admin interface.
%   getAdminCallbackTemplate - Get a "template" proxy for admin callback objects.
%   getAdminCallbackTemplateAsync - Get a "template" proxy for admin callback objects.
%   setObservers - Set the observer proxies that receive notifications when the state of the registry or nodes changes.
%   setObserversAsync - Set the observer proxies that receive notifications when the state of the registry or nodes changes.
%   setObserversByIdentity - Set the observer identities that receive notifications the state of the registry or nodes changes.
%   setObserversByIdentityAsync - Set the observer identities that receive notifications the state of the registry or nodes changes.
%   startUpdate - Acquires an exclusive lock to start updating the registry applications.
%   startUpdateAsync - Acquires an exclusive lock to start updating the registry applications.
%   finishUpdate - Finish updating the registry and release the exclusive lock.
%   finishUpdateAsync - Finish updating the registry and release the exclusive lock.
%   getReplicaName - Get the name of the registry replica hosting this session.
%   getReplicaNameAsync - Get the name of the registry replica hosting this session.
%   openServerLog - Open the given server log file for reading.
%   openServerLogAsync - Open the given server log file for reading.
%   openServerStdErr - Open the given server stderr file for reading.
%   openServerStdErrAsync - Open the given server stderr file for reading.
%   openServerStdOut - Open the given server stdout file for reading.
%   openServerStdOutAsync - Open the given server stdout file for reading.
%   openNodeStdErr - Open the given node stderr file for reading.
%   openNodeStdErrAsync - Open the given node stderr file for reading.
%   openNodeStdOut - Open the given node stdout file for reading.
%   openNodeStdOutAsync - Open the given node stdout file for reading.
%   openRegistryStdErr - Open the given registry stderr file for reading.
%   openRegistryStdErrAsync - Open the given registry stderr file for reading.
%   openRegistryStdOut - Open the given registry stdout file for reading.
%   openRegistryStdOutAsync - Open the given registry stdout file for reading.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also Registry

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.7.10

classdef AdminSessionPrx < Glacier2.SessionPrx
    methods
        function keepAlive(obj, varargin)
            % keepAlive   Keep the session alive. Clients should call this operation regularly to prevent the server from reaping the
            % session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % See also Registry.getSessionTimeout
            
            obj.iceInvoke('keepAlive', 2, false, [], false, {}, varargin{:});
        end
        function r_ = keepAliveAsync(obj, varargin)
            % keepAliveAsync   Keep the session alive. Clients should call this operation regularly to prevent the server from reaping the
            % session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % See also Registry.getSessionTimeout
            
            r_ = obj.iceInvokeAsync('keepAlive', 2, false, [], 0, [], {}, varargin{:});
        end
        function result = getAdmin(obj, varargin)
            % getAdmin   Get the admin interface. The admin object returned by this operation can only be accessed by the session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.AdminPrx) - The admin interface proxy.
            
            is_ = obj.iceInvoke('getAdmin', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.AdminPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getAdminAsync(obj, varargin)
            % getAdminAsync   Get the admin interface. The admin object returned by this operation can only be accessed by the session.
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
            r_ = obj.iceInvokeAsync('getAdmin', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getAdminCallbackTemplate(obj, varargin)
            % getAdminCallbackTemplate   Get a "template" proxy for admin callback objects. An Admin client uses this proxy to set the category of its
            % callback objects, and the published endpoints of the object adapter hosting the admin callback objects.
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
            % getAdminCallbackTemplateAsync   Get a "template" proxy for admin callback objects. An Admin client uses this proxy to set the category of its
            % callback objects, and the published endpoints of the object adapter hosting the admin callback objects.
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
            % setObservers   Set the observer proxies that receive notifications when the state of the registry or nodes changes.
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
            %   IceGrid.ObserverAlreadyRegisteredException - Raised if an observer is already registered with this registry.
            
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
            % setObserversAsync   Set the observer proxies that receive notifications when the state of the registry or nodes changes.
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
            %   IceGrid.ObserverAlreadyRegisteredException - Raised if an observer is already registered with this registry.
            
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
            % setObserversByIdentity   Set the observer identities that receive notifications the state of the registry or nodes changes. This
            % operation should be used by clients that are using a bidirectional connection to communicate with the session.
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
            %   IceGrid.ObserverAlreadyRegisteredException - Raised if an observer is already registered with this registry.
            
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
            % setObserversByIdentityAsync   Set the observer identities that receive notifications the state of the registry or nodes changes. This
            % operation should be used by clients that are using a bidirectional connection to communicate with the session.
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
            %   IceGrid.ObserverAlreadyRegisteredException - Raised if an observer is already registered with this registry.
            
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
            %   IceGrid.AccessDeniedException - Raised if the exclusive lock can't be acquired. This might happen if the lock is
            %     currently acquired by another session.
            
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
            %   IceGrid.AccessDeniedException - Raised if the exclusive lock can't be acquired. This might happen if the lock is
            %     currently acquired by another session.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('startUpdate', 0, true, [], 1, @unmarshal, IceGrid.AdminSessionPrx.startUpdate_ex_, varargin{:});
        end
        function finishUpdate(obj, varargin)
            % finishUpdate   Finish updating the registry and release the exclusive lock.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Raised if the session doesn't hold the exclusive lock.
            
            obj.iceInvoke('finishUpdate', 0, true, [], false, IceGrid.AdminSessionPrx.finishUpdate_ex_, varargin{:});
        end
        function r_ = finishUpdateAsync(obj, varargin)
            % finishUpdateAsync   Finish updating the registry and release the exclusive lock.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Raised if the session doesn't hold the exclusive lock.
            
            r_ = obj.iceInvokeAsync('finishUpdate', 0, true, [], 0, [], IceGrid.AdminSessionPrx.finishUpdate_ex_, varargin{:});
        end
        function result = getReplicaName(obj, varargin)
            % getReplicaName   Get the name of the registry replica hosting this session.
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
            % getReplicaNameAsync   Get the name of the registry replica hosting this session.
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
            % openServerLog   Open the given server log file for reading. The file can be read with the returned file iterator.
            %
            % Parameters:
            %   id (char) - The server id.
            %   path (char) - The path of the log file. A log file can be opened only if it's declared in the server or service
            %     deployment descriptor.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the begining. If 0
            %     or positive, the file is read from the last count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.FileIteratorPrx) - An iterator to read the file.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.FileNotAvailableException - Raised if the file can't be read.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
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
            % openServerLogAsync   Open the given server log file for reading. The file can be read with the returned file iterator.
            %
            % Parameters:
            %   id (char) - The server id.
            %   path (char) - The path of the log file. A log file can be opened only if it's declared in the server or service
            %     deployment descriptor.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the begining. If 0
            %     or positive, the file is read from the last count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.FileNotAvailableException - Raised if the file can't be read.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
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
            % openServerStdErr   Open the given server stderr file for reading. The file can be read with the returned file iterator.
            %
            % Parameters:
            %   id (char) - The server id.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the begining. If 0
            %     or positive, the file is read from the last count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.FileIteratorPrx) - An iterator to read the file.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.FileNotAvailableException - Raised if the file can't be read.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
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
            % openServerStdErrAsync   Open the given server stderr file for reading. The file can be read with the returned file iterator.
            %
            % Parameters:
            %   id (char) - The server id.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the begining. If 0
            %     or positive, the file is read from the last count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.FileNotAvailableException - Raised if the file can't be read.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
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
            % openServerStdOut   Open the given server stdout file for reading. The file can be read with the returned file iterator.
            %
            % Parameters:
            %   id (char) - The server id.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the begining.
            %     If 0 or positive, the file is read from the last count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.FileIteratorPrx) - An iterator to read the file.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.FileNotAvailableException - Raised if the file can't be read.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
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
            % openServerStdOutAsync   Open the given server stdout file for reading. The file can be read with the returned file iterator.
            %
            % Parameters:
            %   id (char) - The server id.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the begining.
            %     If 0 or positive, the file is read from the last count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.FileNotAvailableException - Raised if the file can't be read.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
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
            % openNodeStdErr   Open the given node stderr file for reading. The file can be read with the returned file iterator.
            %
            % Parameters:
            %   name (char) - The node name.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the begining. If 0
            %     or positive, the file is read from the last count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.FileIteratorPrx) - An iterator to read the file.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Raised if the file can't be read.
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            
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
            % openNodeStdErrAsync   Open the given node stderr file for reading. The file can be read with the returned file iterator.
            %
            % Parameters:
            %   name (char) - The node name.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the begining. If 0
            %     or positive, the file is read from the last count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Raised if the file can't be read.
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            
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
            % openNodeStdOut   Open the given node stdout file for reading. The file can be read with the returned file iterator.
            %
            % Parameters:
            %   name (char) - The node name.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the begining. If 0
            %     or positive, the file is read from the last count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.FileIteratorPrx) - An iterator to read the file.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Raised if the file can't be read.
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            
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
            % openNodeStdOutAsync   Open the given node stdout file for reading. The file can be read with the returned file iterator.
            %
            % Parameters:
            %   name (char) - The node name.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the begining. If 0
            %     or positive, the file is read from the last count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Raised if the file can't be read.
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            
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
            % openRegistryStdErr   Open the given registry stderr file for reading. The file can be read with the returned file iterator.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the begining. If 0
            %     or positive, the file is read from the last count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.FileIteratorPrx) - An iterator to read the file.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Raised if the file can't be read.
            %   IceGrid.RegistryNotExistException - Raised if the registry doesn't exist.
            %   IceGrid.RegistryUnreachableException - Raised if the registry could not be reached.
            
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
            % openRegistryStdErrAsync   Open the given registry stderr file for reading. The file can be read with the returned file iterator.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the begining. If 0
            %     or positive, the file is read from the last count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Raised if the file can't be read.
            %   IceGrid.RegistryNotExistException - Raised if the registry doesn't exist.
            %   IceGrid.RegistryUnreachableException - Raised if the registry could not be reached.
            
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
            % openRegistryStdOut   Open the given registry stdout file for reading. The file can be read with the returned file iterator.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the begining. If 0
            %     or positive, the file is read from the last count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.FileIteratorPrx) - An iterator to read the file.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Raised if the file can't be read.
            %   IceGrid.RegistryNotExistException - Raised if the registry doesn't exist.
            %   IceGrid.RegistryUnreachableException - Raised if the registry could not be reached.
            
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
            % openRegistryStdOutAsync   Open the given registry stdout file for reading. The file can be read with the returned file iterator.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   count (int32) - Specifies where to start reading the file. If negative, the file is read from the begining. If 0
            %     or positive, the file is read from the last count lines.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Raised if the file can't be read.
            %   IceGrid.RegistryNotExistException - Raised if the registry doesn't exist.
            %   IceGrid.RegistryUnreachableException - Raised if the registry could not be reached.
            
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
    methods(Hidden=true)
        function obj = AdminSessionPrx(communicator, encoding, impl, bytes)
            obj = obj@Glacier2.SessionPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        setObservers_ex_ = { 'IceGrid.ObserverAlreadyRegisteredException' }
        setObserversByIdentity_ex_ = { 'IceGrid.ObserverAlreadyRegisteredException' }
        startUpdate_ex_ = { 'IceGrid.AccessDeniedException' }
        finishUpdate_ex_ = { 'IceGrid.AccessDeniedException' }
        openServerLog_ex_ = { 'IceGrid.FileNotAvailableException', 'IceGrid.ServerNotExistException', 'IceGrid.DeploymentException', 'IceGrid.NodeUnreachableException' }
        openServerStdErr_ex_ = { 'IceGrid.FileNotAvailableException', 'IceGrid.ServerNotExistException', 'IceGrid.DeploymentException', 'IceGrid.NodeUnreachableException' }
        openServerStdOut_ex_ = { 'IceGrid.FileNotAvailableException', 'IceGrid.ServerNotExistException', 'IceGrid.DeploymentException', 'IceGrid.NodeUnreachableException' }
        openNodeStdErr_ex_ = { 'IceGrid.FileNotAvailableException', 'IceGrid.NodeNotExistException', 'IceGrid.NodeUnreachableException' }
        openNodeStdOut_ex_ = { 'IceGrid.FileNotAvailableException', 'IceGrid.NodeNotExistException', 'IceGrid.NodeUnreachableException' }
        openRegistryStdErr_ex_ = { 'IceGrid.RegistryUnreachableException', 'IceGrid.FileNotAvailableException', 'IceGrid.RegistryNotExistException' }
        openRegistryStdOut_ex_ = { 'IceGrid.RegistryUnreachableException', 'IceGrid.FileNotAvailableException', 'IceGrid.RegistryNotExistException' }
    end
end
