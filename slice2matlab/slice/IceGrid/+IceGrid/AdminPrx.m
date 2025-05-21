% AdminPrx   Summary of AdminPrx
%
% Provides administrative access to an IceGrid deployment.
%
% AdminPrx Methods:
%   addApplication - Adds an application to IceGrid.
%   addApplicationAsync - Adds an application to IceGrid.
%   syncApplication - Synchronizes a deployed application.
%   syncApplicationAsync - Synchronizes a deployed application.
%   updateApplication - Updates a deployed application.
%   updateApplicationAsync - Updates a deployed application.
%   syncApplicationWithoutRestart - Synchronizes a deployed application.
%   syncApplicationWithoutRestartAsync - Synchronizes a deployed application.
%   updateApplicationWithoutRestart - Updates a deployed application.
%   updateApplicationWithoutRestartAsync - Updates a deployed application.
%   removeApplication - Removes an application from IceGrid.
%   removeApplicationAsync - Removes an application from IceGrid.
%   instantiateServer - Instantiates a server template.
%   instantiateServerAsync - Instantiates a server template.
%   getApplicationInfo - Gets an application descriptor.
%   getApplicationInfoAsync - Gets an application descriptor.
%   getDefaultApplicationDescriptor - Gets the default application descriptor.
%   getDefaultApplicationDescriptorAsync - Gets the default application descriptor.
%   getAllApplicationNames - Gets all the IceGrid applications currently registered.
%   getAllApplicationNamesAsync - Gets all the IceGrid applications currently registered.
%   getServerInfo - Gets information about a server.
%   getServerInfoAsync - Gets information about a server.
%   getServerState - Gets the state of a server.
%   getServerStateAsync - Gets the state of a server.
%   getServerPid - Gets the system process ID of a server.
%   getServerPidAsync - Gets the system process ID of a server.
%   getServerAdminCategory - Gets the category for server admin objects.
%   getServerAdminCategoryAsync - Gets the category for server admin objects.
%   getServerAdmin - Gets a proxy to the admin object of a server.
%   getServerAdminAsync - Gets a proxy to the admin object of a server.
%   enableServer - Enables or disables a server.
%   enableServerAsync - Enables or disables a server.
%   isServerEnabled - Checks if the server is enabled or disabled.
%   isServerEnabledAsync - Checks if the server is enabled or disabled.
%   startServer - Starts a server and waits for its activation.
%   startServerAsync - Starts a server and waits for its activation.
%   stopServer - Stops a server.
%   stopServerAsync - Stops a server.
%   sendSignal - Sends a signal to a server.
%   sendSignalAsync - Sends a signal to a server.
%   getAllServerIds - Gets the IDs of all the servers registered with IceGrid.
%   getAllServerIdsAsync - Gets the IDs of all the servers registered with IceGrid.
%   getAdapterInfo - Gets adapter information for the replica group or adapter with the given ID.
%   getAdapterInfoAsync - Gets adapter information for the replica group or adapter with the given ID.
%   removeAdapter - Removes the adapter with the given ID.
%   removeAdapterAsync - Removes the adapter with the given ID.
%   getAllAdapterIds - Gets the IDs of all adapters registered with IceGrid.
%   getAllAdapterIdsAsync - Gets the IDs of all adapters registered with IceGrid.
%   addObject - Adds an object to the object registry.
%   addObjectAsync - Adds an object to the object registry.
%   updateObject - Updates an object in the object registry.
%   updateObjectAsync - Updates an object in the object registry.
%   addObjectWithType - Adds an object to the object registry and explicitly specifies its type.
%   addObjectWithTypeAsync - Adds an object to the object registry and explicitly specifies its type.
%   removeObject - Removes an object from the object registry.
%   removeObjectAsync - Removes an object from the object registry.
%   getObjectInfo - Gets the object info for the object.
%   getObjectInfoAsync - Gets the object info for the object.
%   getObjectInfosByType - Gets the object info of all the registered objects with a given type.
%   getObjectInfosByTypeAsync - Gets the object info of all the registered objects with a given type.
%   getAllObjectInfos - Gets the object info of all the registered objects whose stringified identities match the given expression.
%   getAllObjectInfosAsync - Gets the object info of all the registered objects whose stringified identities match the given expression.
%   pingNode - Pings an IceGrid node to see if it is active.
%   pingNodeAsync - Pings an IceGrid node to see if it is active.
%   getNodeLoad - Gets the load averages of a node.
%   getNodeLoadAsync - Gets the load averages of a node.
%   getNodeInfo - Gets the node information of a node.
%   getNodeInfoAsync - Gets the node information of a node.
%   getNodeAdmin - Gets a proxy to the admin object of an IceGrid node.
%   getNodeAdminAsync - Gets a proxy to the admin object of an IceGrid node.
%   getNodeProcessorSocketCount - Gets the number of physical processor sockets in the computer where an IceGrid node is deployed.
%   getNodeProcessorSocketCountAsync - Gets the number of physical processor sockets in the computer where an IceGrid node is deployed.
%   shutdownNode - Shuts down an IceGrid node.
%   shutdownNodeAsync - Shuts down an IceGrid node.
%   getNodeHostname - Get the hostname of a node.
%   getNodeHostnameAsync - Get the hostname of a node.
%   getAllNodeNames - Gets the names of all IceGrid nodes currently registered.
%   getAllNodeNamesAsync - Gets the names of all IceGrid nodes currently registered.
%   pingRegistry - Pings an IceGrid registry to see if it is active.
%   pingRegistryAsync - Pings an IceGrid registry to see if it is active.
%   getRegistryInfo - Gets the registry information of an IceGrid registry.
%   getRegistryInfoAsync - Gets the registry information of an IceGrid registry.
%   getRegistryAdmin - Gets a proxy to the admin object of an IceGrid registry.
%   getRegistryAdminAsync - Gets a proxy to the admin object of an IceGrid registry.
%   shutdownRegistry - Shuts down an IceGrid registry.
%   shutdownRegistryAsync - Shuts down an IceGrid registry.
%   getAllRegistryNames - Gets the names of all the IceGrid registries currently registered.
%   getAllRegistryNamesAsync - Gets the names of all the IceGrid registries currently registered.
%   shutdown - Shuts down the IceGrid registry.
%   shutdownAsync - Shuts down the IceGrid registry.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef AdminPrx < Ice.ObjectPrx
    methods
        function addApplication(obj, descriptor, varargin)
            % addApplication   Adds an application to IceGrid.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationDescriptor) - The application descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %     session is holding the lock.
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('addApplication', 0, true, os_, false, IceGrid.AdminPrx.addApplication_ex_, varargin{:});
        end
        function r_ = addApplicationAsync(obj, descriptor, varargin)
            % addApplicationAsync   Adds an application to IceGrid.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationDescriptor) - The application descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %     session is holding the lock.
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('addApplication', 0, true, os_, 0, [], IceGrid.AdminPrx.addApplication_ex_, varargin{:});
        end
        function syncApplication(obj, descriptor, varargin)
            % syncApplication   Synchronizes a deployed application. This operation replaces the current descriptor with a new descriptor.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationDescriptor) - The new application descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %     session is holding the lock.
            %   IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('syncApplication', 0, true, os_, false, IceGrid.AdminPrx.syncApplication_ex_, varargin{:});
        end
        function r_ = syncApplicationAsync(obj, descriptor, varargin)
            % syncApplicationAsync   Synchronizes a deployed application. This operation replaces the current descriptor with a new descriptor.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationDescriptor) - The new application descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %     session is holding the lock.
            %   IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('syncApplication', 0, true, os_, 0, [], IceGrid.AdminPrx.syncApplication_ex_, varargin{:});
        end
        function updateApplication(obj, descriptor, varargin)
            % updateApplication   Updates a deployed application.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationUpdateDescriptor) - The update descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %     session is holding the lock.
            %   IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationUpdateDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('updateApplication', 0, true, os_, false, IceGrid.AdminPrx.updateApplication_ex_, varargin{:});
        end
        function r_ = updateApplicationAsync(obj, descriptor, varargin)
            % updateApplicationAsync   Updates a deployed application.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationUpdateDescriptor) - The update descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %     session is holding the lock.
            %   IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationUpdateDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('updateApplication', 0, true, os_, 0, [], IceGrid.AdminPrx.updateApplication_ex_, varargin{:});
        end
        function syncApplicationWithoutRestart(obj, descriptor, varargin)
            % syncApplicationWithoutRestart   Synchronizes a deployed application. This operation replaces the current descriptor with a new descriptor
            % only if no server restarts are necessary for the update of the application. If some servers need to be
            % restarted, the synchronization is rejected with a DeploymentException.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationDescriptor) - The application descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %     session is holding the lock.
            %   IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('syncApplicationWithoutRestart', 0, true, os_, false, IceGrid.AdminPrx.syncApplicationWithoutRestart_ex_, varargin{:});
        end
        function r_ = syncApplicationWithoutRestartAsync(obj, descriptor, varargin)
            % syncApplicationWithoutRestartAsync   Synchronizes a deployed application. This operation replaces the current descriptor with a new descriptor
            % only if no server restarts are necessary for the update of the application. If some servers need to be
            % restarted, the synchronization is rejected with a DeploymentException.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationDescriptor) - The application descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %     session is holding the lock.
            %   IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('syncApplicationWithoutRestart', 0, true, os_, 0, [], IceGrid.AdminPrx.syncApplicationWithoutRestart_ex_, varargin{:});
        end
        function updateApplicationWithoutRestart(obj, descriptor, varargin)
            % updateApplicationWithoutRestart   Updates a deployed application. This operation succeeds only when no server restarts are necessary for the
            % update of the application. If some servers need to be restarted, the synchronization is rejected with a
            % DeploymentException.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationUpdateDescriptor) - The update descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %     session is holding the lock.
            %   IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationUpdateDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('updateApplicationWithoutRestart', 0, true, os_, false, IceGrid.AdminPrx.updateApplicationWithoutRestart_ex_, varargin{:});
        end
        function r_ = updateApplicationWithoutRestartAsync(obj, descriptor, varargin)
            % updateApplicationWithoutRestartAsync   Updates a deployed application. This operation succeeds only when no server restarts are necessary for the
            % update of the application. If some servers need to be restarted, the synchronization is rejected with a
            % DeploymentException.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationUpdateDescriptor) - The update descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %     session is holding the lock.
            %   IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationUpdateDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('updateApplicationWithoutRestart', 0, true, os_, 0, [], IceGrid.AdminPrx.updateApplicationWithoutRestart_ex_, varargin{:});
        end
        function removeApplication(obj, name, varargin)
            % removeApplication   Removes an application from IceGrid.
            %
            % Parameters:
            %   name (char) - The application name.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %     session is holding the lock.
            %   IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('removeApplication', 0, true, os_, false, IceGrid.AdminPrx.removeApplication_ex_, varargin{:});
        end
        function r_ = removeApplicationAsync(obj, name, varargin)
            % removeApplicationAsync   Removes an application from IceGrid.
            %
            % Parameters:
            %   name (char) - The application name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %     session is holding the lock.
            %   IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('removeApplication', 0, true, os_, 0, [], IceGrid.AdminPrx.removeApplication_ex_, varargin{:});
        end
        function instantiateServer(obj, application, node, desc, varargin)
            % instantiateServer   Instantiates a server template.
            %
            % Parameters:
            %   application (char) - The application name.
            %   node (char) - The name of the node where the server will be deployed.
            %   desc (IceGrid.ServerInstanceDescriptor) - The descriptor of the server instance to deploy.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %     session is holding the lock.
            %   IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(application);
            os_.writeString(node);
            IceGrid.ServerInstanceDescriptor.ice_write(os_, desc);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('instantiateServer', 0, true, os_, false, IceGrid.AdminPrx.instantiateServer_ex_, varargin{:});
        end
        function r_ = instantiateServerAsync(obj, application, node, desc, varargin)
            % instantiateServerAsync   Instantiates a server template.
            %
            % Parameters:
            %   application (char) - The application name.
            %   node (char) - The name of the node where the server will be deployed.
            %   desc (IceGrid.ServerInstanceDescriptor) - The descriptor of the server instance to deploy.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %     session is holding the lock.
            %   IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(application);
            os_.writeString(node);
            IceGrid.ServerInstanceDescriptor.ice_write(os_, desc);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('instantiateServer', 0, true, os_, 0, [], IceGrid.AdminPrx.instantiateServer_ex_, varargin{:});
        end
        function result = getApplicationInfo(obj, name, varargin)
            % getApplicationInfo   Gets an application descriptor.
            %
            % Parameters:
            %   name (char) - The application name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ApplicationInfo) - The application descriptor.
            %
            % Exceptions:
            %   IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getApplicationInfo', 2, true, os_, true, IceGrid.AdminPrx.getApplicationInfo_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ApplicationInfo.ice_read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result.ice_convert();
        end
        function r_ = getApplicationInfoAsync(obj, name, varargin)
            % getApplicationInfoAsync   Gets an application descriptor.
            %
            % Parameters:
            %   name (char) - The application name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.ApplicationInfo.ice_read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.ice_convert();
            end
            r_ = obj.iceInvokeAsync('getApplicationInfo', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getApplicationInfo_ex_, varargin{:});
        end
        function result = getDefaultApplicationDescriptor(obj, varargin)
            % getDefaultApplicationDescriptor   Gets the default application descriptor.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ApplicationDescriptor) - The default application descriptor.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the default application descriptor is invalid or unreachable.
            
            is_ = obj.iceInvoke('getDefaultApplicationDescriptor', 2, true, [], true, IceGrid.AdminPrx.getDefaultApplicationDescriptor_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ApplicationDescriptor.ice_read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result.ice_convert();
        end
        function r_ = getDefaultApplicationDescriptorAsync(obj, varargin)
            % getDefaultApplicationDescriptorAsync   Gets the default application descriptor.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the default application descriptor is invalid or unreachable.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.ApplicationDescriptor.ice_read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.ice_convert();
            end
            r_ = obj.iceInvokeAsync('getDefaultApplicationDescriptor', 2, true, [], 1, @unmarshal, IceGrid.AdminPrx.getDefaultApplicationDescriptor_ex_, varargin{:});
        end
        function result = getAllApplicationNames(obj, varargin)
            % getAllApplicationNames   Gets all the IceGrid applications currently registered.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.StringSeq) - The application names.
            
            is_ = obj.iceInvoke('getAllApplicationNames', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = getAllApplicationNamesAsync(obj, varargin)
            % getAllApplicationNamesAsync   Gets all the IceGrid applications currently registered.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getAllApplicationNames', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getServerInfo(obj, id, varargin)
            % getServerInfo   Gets information about a server.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ServerInfo) - The server information.
            %
            % Exceptions:
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getServerInfo', 2, true, os_, true, IceGrid.AdminPrx.getServerInfo_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ServerInfo.ice_read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result.ice_convert();
        end
        function r_ = getServerInfoAsync(obj, id, varargin)
            % getServerInfoAsync   Gets information about a server.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.ServerInfo.ice_read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.ice_convert();
            end
            r_ = obj.iceInvokeAsync('getServerInfo', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getServerInfo_ex_, varargin{:});
        end
        function result = getServerState(obj, id, varargin)
            % getServerState   Gets the state of a server.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ServerState) - The server state.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getServerState', 2, true, os_, true, IceGrid.AdminPrx.getServerState_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ServerState.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getServerStateAsync(obj, id, varargin)
            % getServerStateAsync   Gets the state of a server.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.ServerState.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getServerState', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getServerState_ex_, varargin{:});
        end
        function result = getServerPid(obj, id, varargin)
            % getServerPid   Gets the system process ID of a server. The process ID is operating system dependent.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32) - The process ID.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getServerPid', 2, true, os_, true, IceGrid.AdminPrx.getServerPid_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getServerPidAsync(obj, id, varargin)
            % getServerPidAsync   Gets the system process ID of a server. The process ID is operating system dependent.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getServerPid', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getServerPid_ex_, varargin{:});
        end
        function result = getServerAdminCategory(obj, varargin)
            % getServerAdminCategory   Gets the category for server admin objects. You can manufacture a server admin proxy from the admin proxy by
            % changing its identity: use the server ID as name and the returned category as category.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char) - The category for server admin objects.
            
            is_ = obj.iceInvoke('getServerAdminCategory', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getServerAdminCategoryAsync(obj, varargin)
            % getServerAdminCategoryAsync   Gets the category for server admin objects. You can manufacture a server admin proxy from the admin proxy by
            % changing its identity: use the server ID as name and the returned category as category.
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
            r_ = obj.iceInvokeAsync('getServerAdminCategory', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getServerAdmin(obj, id, varargin)
            % getServerAdmin   Gets a proxy to the admin object of a server.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - A proxy to the admin object of the server. This proxy is never null.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getServerAdmin', 2, true, os_, true, IceGrid.AdminPrx.getServerAdmin_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = getServerAdminAsync(obj, id, varargin)
            % getServerAdminAsync   Gets a proxy to the admin object of a server.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getServerAdmin', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getServerAdmin_ex_, varargin{:});
        end
        function enableServer(obj, id, enabled, varargin)
            % enableServer   Enables or disables a server. A disabled server can't be started on demand or administratively. The enable
            % state of the server is not persistent: if the node is shut down and restarted, the server will be enabled by
            % default.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   enabled (logical) - `true` to enable the server, `false` to disable it.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeBool(enabled);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('enableServer', 2, true, os_, false, IceGrid.AdminPrx.enableServer_ex_, varargin{:});
        end
        function r_ = enableServerAsync(obj, id, enabled, varargin)
            % enableServerAsync   Enables or disables a server. A disabled server can't be started on demand or administratively. The enable
            % state of the server is not persistent: if the node is shut down and restarted, the server will be enabled by
            % default.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   enabled (logical) - `true` to enable the server, `false` to disable it.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeBool(enabled);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('enableServer', 2, true, os_, 0, [], IceGrid.AdminPrx.enableServer_ex_, varargin{:});
        end
        function result = isServerEnabled(obj, id, varargin)
            % isServerEnabled   Checks if the server is enabled or disabled.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (logical) - `true` if the server is enabled, `false` otherwise.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('isServerEnabled', 2, true, os_, true, IceGrid.AdminPrx.isServerEnabled_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = isServerEnabledAsync(obj, id, varargin)
            % isServerEnabledAsync   Checks if the server is enabled or disabled.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('isServerEnabled', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.isServerEnabled_ex_, varargin{:});
        end
        function startServer(obj, id, varargin)
            % startServer   Starts a server and waits for its activation.
            %
            % Parameters:
            %   id (char) - The server id.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            %   IceGrid.ServerStartException - Thrown when the server startup failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('startServer', 0, true, os_, false, IceGrid.AdminPrx.startServer_ex_, varargin{:});
        end
        function r_ = startServerAsync(obj, id, varargin)
            % startServerAsync   Starts a server and waits for its activation.
            %
            % Parameters:
            %   id (char) - The server id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            %   IceGrid.ServerStartException - Thrown when the server startup failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('startServer', 0, true, os_, 0, [], IceGrid.AdminPrx.startServer_ex_, varargin{:});
        end
        function stopServer(obj, id, varargin)
            % stopServer   Stops a server.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            %   IceGrid.ServerStopException - Thrown when the server stop failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('stopServer', 0, true, os_, false, IceGrid.AdminPrx.stopServer_ex_, varargin{:});
        end
        function r_ = stopServerAsync(obj, id, varargin)
            % stopServerAsync   Stops a server.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            %   IceGrid.ServerStopException - Thrown when the server stop failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('stopServer', 0, true, os_, 0, [], IceGrid.AdminPrx.stopServer_ex_, varargin{:});
        end
        function sendSignal(obj, id, signal, varargin)
            % sendSignal   Sends a signal to a server.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   signal (char) - The signal, for example SIGTERM or 15.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.BadSignalException - Thrown when the signal is not recognized by the target server.
            %   IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeString(signal);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sendSignal', 0, true, os_, false, IceGrid.AdminPrx.sendSignal_ex_, varargin{:});
        end
        function r_ = sendSignalAsync(obj, id, signal, varargin)
            % sendSignalAsync   Sends a signal to a server.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   signal (char) - The signal, for example SIGTERM or 15.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.BadSignalException - Thrown when the signal is not recognized by the target server.
            %   IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %   IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeString(signal);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('sendSignal', 0, true, os_, 0, [], IceGrid.AdminPrx.sendSignal_ex_, varargin{:});
        end
        function result = getAllServerIds(obj, varargin)
            % getAllServerIds   Gets the IDs of all the servers registered with IceGrid.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.StringSeq) - The server IDs.
            
            is_ = obj.iceInvoke('getAllServerIds', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = getAllServerIdsAsync(obj, varargin)
            % getAllServerIdsAsync   Gets the IDs of all the servers registered with IceGrid.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getAllServerIds', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getAdapterInfo(obj, id, varargin)
            % getAdapterInfo   Gets adapter information for the replica group or adapter with the given ID.
            %
            % Parameters:
            %   id (char) - The adapter or replica group ID.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.AdapterInfoSeq) - A sequence of AdapterInfo. If @p id refers to an adapter, this sequence contains a single element.
            % If @p id refers to a replica group, this sequence contains adapter information for each member of the
            % replica group.
            %
            % Exceptions:
            %   IceGrid.AdapterNotExistException - Thrown when the adapter or replica group doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getAdapterInfo', 2, true, os_, true, IceGrid.AdminPrx.getAdapterInfo_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.AdapterInfoSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getAdapterInfoAsync(obj, id, varargin)
            % getAdapterInfoAsync   Gets adapter information for the replica group or adapter with the given ID.
            %
            % Parameters:
            %   id (char) - The adapter or replica group ID.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AdapterNotExistException - Thrown when the adapter or replica group doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.AdapterInfoSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getAdapterInfo', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getAdapterInfo_ex_, varargin{:});
        end
        function removeAdapter(obj, id, varargin)
            % removeAdapter   Removes the adapter with the given ID.
            %
            % Parameters:
            %   id (char) - The adapter ID.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AdapterNotExistException - Thrown when the adapter doesn't exist.
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('removeAdapter', 0, true, os_, false, IceGrid.AdminPrx.removeAdapter_ex_, varargin{:});
        end
        function r_ = removeAdapterAsync(obj, id, varargin)
            % removeAdapterAsync   Removes the adapter with the given ID.
            %
            % Parameters:
            %   id (char) - The adapter ID.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AdapterNotExistException - Thrown when the adapter doesn't exist.
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('removeAdapter', 0, true, os_, 0, [], IceGrid.AdminPrx.removeAdapter_ex_, varargin{:});
        end
        function result = getAllAdapterIds(obj, varargin)
            % getAllAdapterIds   Gets the IDs of all adapters registered with IceGrid.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.StringSeq) - The adapter IDs.
            
            is_ = obj.iceInvoke('getAllAdapterIds', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = getAllAdapterIdsAsync(obj, varargin)
            % getAllAdapterIdsAsync   Gets the IDs of all adapters registered with IceGrid.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getAllAdapterIds', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function addObject(obj_, obj, varargin)
            % addObject   Adds an object to the object registry. IceGrid gets the object type by calling `ice_id` on @p obj. The
            % object must be reachable.
            %
            % Parameters:
            %   obj (Ice.ObjectPrx) - A proxy to the object. This proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the object can't be added.
            %   IceGrid.ObjectExistsException - Thrown when the object is already registered.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            obj_.iceInvoke('addObject', 0, true, os_, false, IceGrid.AdminPrx.addObject_ex_, varargin{:});
        end
        function r_ = addObjectAsync(obj_, obj, varargin)
            % addObjectAsync   Adds an object to the object registry. IceGrid gets the object type by calling `ice_id` on @p obj. The
            % object must be reachable.
            %
            % Parameters:
            %   obj (Ice.ObjectPrx) - A proxy to the object. This proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the object can't be added.
            %   IceGrid.ObjectExistsException - Thrown when the object is already registered.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            r_ = obj_.iceInvokeAsync('addObject', 0, true, os_, 0, [], IceGrid.AdminPrx.addObject_ex_, varargin{:});
        end
        function updateObject(obj_, obj, varargin)
            % updateObject   Updates an object in the object registry. Only objects added with this interface can be updated with this
            % operation. Objects added with deployment descriptors should be updated with the deployment mechanism.
            %
            % Parameters:
            %   obj (Ice.ObjectPrx) - A proxy to the object. This proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the object can't be updated.
            %   IceGrid.ObjectNotRegisteredException - Thrown when the object isn't registered with the registry.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            obj_.iceInvoke('updateObject', 0, true, os_, false, IceGrid.AdminPrx.updateObject_ex_, varargin{:});
        end
        function r_ = updateObjectAsync(obj_, obj, varargin)
            % updateObjectAsync   Updates an object in the object registry. Only objects added with this interface can be updated with this
            % operation. Objects added with deployment descriptors should be updated with the deployment mechanism.
            %
            % Parameters:
            %   obj (Ice.ObjectPrx) - A proxy to the object. This proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the object can't be updated.
            %   IceGrid.ObjectNotRegisteredException - Thrown when the object isn't registered with the registry.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            r_ = obj_.iceInvokeAsync('updateObject', 0, true, os_, 0, [], IceGrid.AdminPrx.updateObject_ex_, varargin{:});
        end
        function addObjectWithType(obj_, obj, type, varargin)
            % addObjectWithType   Adds an object to the object registry and explicitly specifies its type.
            %
            % Parameters:
            %   obj (Ice.ObjectPrx) - The object to be added to the registry. The proxy is never null.
            %   type (char) - The type name.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            %   IceGrid.ObjectExistsException - Thrown when the object is already registered.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            os_.writeString(type);
            obj_.iceEndWriteParams(os_);
            obj_.iceInvoke('addObjectWithType', 0, true, os_, false, IceGrid.AdminPrx.addObjectWithType_ex_, varargin{:});
        end
        function r_ = addObjectWithTypeAsync(obj_, obj, type, varargin)
            % addObjectWithTypeAsync   Adds an object to the object registry and explicitly specifies its type.
            %
            % Parameters:
            %   obj (Ice.ObjectPrx) - The object to be added to the registry. The proxy is never null.
            %   type (char) - The type name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the application deployment failed.
            %   IceGrid.ObjectExistsException - Thrown when the object is already registered.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            os_.writeString(type);
            obj_.iceEndWriteParams(os_);
            r_ = obj_.iceInvokeAsync('addObjectWithType', 0, true, os_, 0, [], IceGrid.AdminPrx.addObjectWithType_ex_, varargin{:});
        end
        function removeObject(obj, id, varargin)
            % removeObject   Removes an object from the object registry. Only objects added with this interface can be removed with this
            % operation. Objects added with deployment descriptors should be removed with the deployment mechanism.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity of the object to remove.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the object can't be removed.
            %   IceGrid.ObjectNotRegisteredException - Thrown when the object isn't registered with the registry.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('removeObject', 0, true, os_, false, IceGrid.AdminPrx.removeObject_ex_, varargin{:});
        end
        function r_ = removeObjectAsync(obj, id, varargin)
            % removeObjectAsync   Removes an object from the object registry. Only objects added with this interface can be removed with this
            % operation. Objects added with deployment descriptors should be removed with the deployment mechanism.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity of the object to remove.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Thrown when the object can't be removed.
            %   IceGrid.ObjectNotRegisteredException - Thrown when the object isn't registered with the registry.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('removeObject', 0, true, os_, 0, [], IceGrid.AdminPrx.removeObject_ex_, varargin{:});
        end
        function result = getObjectInfo(obj, id, varargin)
            % getObjectInfo   Gets the object info for the object.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity of the object.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ObjectInfo) - The object info.
            %
            % Exceptions:
            %   IceGrid.ObjectNotRegisteredException - Thrown when the object isn't registered with the registry.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getObjectInfo', 2, true, os_, true, IceGrid.AdminPrx.getObjectInfo_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ObjectInfo.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getObjectInfoAsync(obj, id, varargin)
            % getObjectInfoAsync   Gets the object info for the object.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity of the object.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.ObjectNotRegisteredException - Thrown when the object isn't registered with the registry.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.ObjectInfo.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getObjectInfo', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getObjectInfo_ex_, varargin{:});
        end
        function result = getObjectInfosByType(obj, type, varargin)
            % getObjectInfosByType   Gets the object info of all the registered objects with a given type.
            %
            % Parameters:
            %   type (char) - The type name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ObjectInfoSeq) - The object infos.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getObjectInfosByType', 2, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ObjectInfoSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getObjectInfosByTypeAsync(obj, type, varargin)
            % getObjectInfosByTypeAsync   Gets the object info of all the registered objects with a given type.
            %
            % Parameters:
            %   type (char) - The type name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.ObjectInfoSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getObjectInfosByType', 2, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = getAllObjectInfos(obj, expr, varargin)
            % getAllObjectInfos   Gets the object info of all the registered objects whose stringified identities match the given expression.
            %
            % Parameters:
            %   expr (char) - The expression to match against the stringified identities of registered objects. The expression
            %     may contain a trailing wildcard (`*`) character.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ObjectInfoSeq) - All the object infos with a stringified identity matching the given expression.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(expr);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getAllObjectInfos', 2, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ObjectInfoSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getAllObjectInfosAsync(obj, expr, varargin)
            % getAllObjectInfosAsync   Gets the object info of all the registered objects whose stringified identities match the given expression.
            %
            % Parameters:
            %   expr (char) - The expression to match against the stringified identities of registered objects. The expression
            %     may contain a trailing wildcard (`*`) character.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(expr);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.ObjectInfoSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getAllObjectInfos', 2, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = pingNode(obj, name, varargin)
            % pingNode   Pings an IceGrid node to see if it is active.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (logical) - `true` if the node ping succeeded, `false` otherwise.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('pingNode', 2, true, os_, true, IceGrid.AdminPrx.pingNode_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = pingNodeAsync(obj, name, varargin)
            % pingNodeAsync   Pings an IceGrid node to see if it is active.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('pingNode', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.pingNode_ex_, varargin{:});
        end
        function result = getNodeLoad(obj, name, varargin)
            % getNodeLoad   Gets the load averages of a node.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.LoadInfo) - The node load information.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getNodeLoad', 2, true, os_, true, IceGrid.AdminPrx.getNodeLoad_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.LoadInfo.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getNodeLoadAsync(obj, name, varargin)
            % getNodeLoadAsync   Gets the load averages of a node.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.LoadInfo.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getNodeLoad', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getNodeLoad_ex_, varargin{:});
        end
        function result = getNodeInfo(obj, name, varargin)
            % getNodeInfo   Gets the node information of a node.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.NodeInfo) - The node information.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getNodeInfo', 2, true, os_, true, IceGrid.AdminPrx.getNodeInfo_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.NodeInfo.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getNodeInfoAsync(obj, name, varargin)
            % getNodeInfoAsync   Gets the node information of a node.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.NodeInfo.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getNodeInfo', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getNodeInfo_ex_, varargin{:});
        end
        function result = getNodeAdmin(obj, name, varargin)
            % getNodeAdmin   Gets a proxy to the admin object of an IceGrid node.
            %
            % Parameters:
            %   name (char) - The IceGrid node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - A proxy to the IceGrid node's admin object. This proxy is never null.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getNodeAdmin', 2, true, os_, true, IceGrid.AdminPrx.getNodeAdmin_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = getNodeAdminAsync(obj, name, varargin)
            % getNodeAdminAsync   Gets a proxy to the admin object of an IceGrid node.
            %
            % Parameters:
            %   name (char) - The IceGrid node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getNodeAdmin', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getNodeAdmin_ex_, varargin{:});
        end
        function result = getNodeProcessorSocketCount(obj, name, varargin)
            % getNodeProcessorSocketCount   Gets the number of physical processor sockets in the computer where an IceGrid node is deployed.
            % Note that this operation returns 1 on operating systems where this can't be automatically determined and
            % where the `IceGrid.Node.ProcessorSocketCount` property for the node is not set.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32) - The number of processor sockets or 1 if the number of sockets can't be determined.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getNodeProcessorSocketCount', 2, true, os_, true, IceGrid.AdminPrx.getNodeProcessorSocketCount_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getNodeProcessorSocketCountAsync(obj, name, varargin)
            % getNodeProcessorSocketCountAsync   Gets the number of physical processor sockets in the computer where an IceGrid node is deployed.
            % Note that this operation returns 1 on operating systems where this can't be automatically determined and
            % where the `IceGrid.Node.ProcessorSocketCount` property for the node is not set.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getNodeProcessorSocketCount', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getNodeProcessorSocketCount_ex_, varargin{:});
        end
        function shutdownNode(obj, name, varargin)
            % shutdownNode   Shuts down an IceGrid node.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('shutdownNode', 0, true, os_, false, IceGrid.AdminPrx.shutdownNode_ex_, varargin{:});
        end
        function r_ = shutdownNodeAsync(obj, name, varargin)
            % shutdownNodeAsync   Shuts down an IceGrid node.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('shutdownNode', 0, true, os_, 0, [], IceGrid.AdminPrx.shutdownNode_ex_, varargin{:});
        end
        function result = getNodeHostname(obj, name, varargin)
            % getNodeHostname   Get the hostname of a node.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char) - The node hostname.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getNodeHostname', 2, true, os_, true, IceGrid.AdminPrx.getNodeHostname_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getNodeHostnameAsync(obj, name, varargin)
            % getNodeHostnameAsync   Get the hostname of a node.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getNodeHostname', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getNodeHostname_ex_, varargin{:});
        end
        function result = getAllNodeNames(obj, varargin)
            % getAllNodeNames   Gets the names of all IceGrid nodes currently registered.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.StringSeq) - The node names.
            
            is_ = obj.iceInvoke('getAllNodeNames', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = getAllNodeNamesAsync(obj, varargin)
            % getAllNodeNamesAsync   Gets the names of all IceGrid nodes currently registered.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getAllNodeNames', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = pingRegistry(obj, name, varargin)
            % pingRegistry   Pings an IceGrid registry to see if it is active.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (logical) - `true` if the registry ping succeeded, `false` otherwise.
            %
            % Exceptions:
            %   IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('pingRegistry', 2, true, os_, true, IceGrid.AdminPrx.pingRegistry_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = pingRegistryAsync(obj, name, varargin)
            % pingRegistryAsync   Pings an IceGrid registry to see if it is active.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('pingRegistry', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.pingRegistry_ex_, varargin{:});
        end
        function result = getRegistryInfo(obj, name, varargin)
            % getRegistryInfo   Gets the registry information of an IceGrid registry.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.RegistryInfo) - The registry information.
            %
            % Exceptions:
            %   IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            %   IceGrid.RegistryUnreachableException - Thrown when the registry is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getRegistryInfo', 2, true, os_, true, IceGrid.AdminPrx.getRegistryInfo_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.RegistryInfo.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getRegistryInfoAsync(obj, name, varargin)
            % getRegistryInfoAsync   Gets the registry information of an IceGrid registry.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            %   IceGrid.RegistryUnreachableException - Thrown when the registry is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.RegistryInfo.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getRegistryInfo', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getRegistryInfo_ex_, varargin{:});
        end
        function result = getRegistryAdmin(obj, name, varargin)
            % getRegistryAdmin   Gets a proxy to the admin object of an IceGrid registry.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - A proxy to the admin object of an IceGrid registry. This proxy is never null.
            %
            % Exceptions:
            %   IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getRegistryAdmin', 2, true, os_, true, IceGrid.AdminPrx.getRegistryAdmin_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = getRegistryAdminAsync(obj, name, varargin)
            % getRegistryAdminAsync   Gets a proxy to the admin object of an IceGrid registry.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getRegistryAdmin', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getRegistryAdmin_ex_, varargin{:});
        end
        function shutdownRegistry(obj, name, varargin)
            % shutdownRegistry   Shuts down an IceGrid registry.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            %   IceGrid.RegistryUnreachableException - Thrown when the registry is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('shutdownRegistry', 2, true, os_, false, IceGrid.AdminPrx.shutdownRegistry_ex_, varargin{:});
        end
        function r_ = shutdownRegistryAsync(obj, name, varargin)
            % shutdownRegistryAsync   Shuts down an IceGrid registry.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            %   IceGrid.RegistryUnreachableException - Thrown when the registry is unreachable.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('shutdownRegistry', 2, true, os_, 0, [], IceGrid.AdminPrx.shutdownRegistry_ex_, varargin{:});
        end
        function result = getAllRegistryNames(obj, varargin)
            % getAllRegistryNames   Gets the names of all the IceGrid registries currently registered.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.StringSeq) - The registry names.
            
            is_ = obj.iceInvoke('getAllRegistryNames', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = getAllRegistryNamesAsync(obj, varargin)
            % getAllRegistryNamesAsync   Gets the names of all the IceGrid registries currently registered.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getAllRegistryNames', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function shutdown(obj, varargin)
            % shutdown   Shuts down the IceGrid registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            % shutdownAsync   Shuts down the IceGrid registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::Admin';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.AdminPrx');
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
            % Returns (IceGrid.AdminPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.AdminPrx.ice_staticId(), 'IceGrid.AdminPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.AdminPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.AdminPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        addApplication_ex_ = { 'IceGrid.AccessDeniedException', 'IceGrid.DeploymentException' }
        syncApplication_ex_ = { 'IceGrid.AccessDeniedException', 'IceGrid.DeploymentException', 'IceGrid.ApplicationNotExistException' }
        updateApplication_ex_ = { 'IceGrid.AccessDeniedException', 'IceGrid.DeploymentException', 'IceGrid.ApplicationNotExistException' }
        syncApplicationWithoutRestart_ex_ = { 'IceGrid.AccessDeniedException', 'IceGrid.DeploymentException', 'IceGrid.ApplicationNotExistException' }
        updateApplicationWithoutRestart_ex_ = { 'IceGrid.AccessDeniedException', 'IceGrid.DeploymentException', 'IceGrid.ApplicationNotExistException' }
        removeApplication_ex_ = { 'IceGrid.AccessDeniedException', 'IceGrid.DeploymentException', 'IceGrid.ApplicationNotExistException' }
        instantiateServer_ex_ = { 'IceGrid.AccessDeniedException', 'IceGrid.ApplicationNotExistException', 'IceGrid.DeploymentException' }
        getApplicationInfo_ex_ = { 'IceGrid.ApplicationNotExistException' }
        getDefaultApplicationDescriptor_ex_ = { 'IceGrid.DeploymentException' }
        getServerInfo_ex_ = { 'IceGrid.ServerNotExistException' }
        getServerState_ex_ = { 'IceGrid.ServerNotExistException', 'IceGrid.NodeUnreachableException', 'IceGrid.DeploymentException' }
        getServerPid_ex_ = { 'IceGrid.ServerNotExistException', 'IceGrid.NodeUnreachableException', 'IceGrid.DeploymentException' }
        getServerAdmin_ex_ = { 'IceGrid.ServerNotExistException', 'IceGrid.NodeUnreachableException', 'IceGrid.DeploymentException' }
        enableServer_ex_ = { 'IceGrid.ServerNotExistException', 'IceGrid.NodeUnreachableException', 'IceGrid.DeploymentException' }
        isServerEnabled_ex_ = { 'IceGrid.ServerNotExistException', 'IceGrid.NodeUnreachableException', 'IceGrid.DeploymentException' }
        startServer_ex_ = { 'IceGrid.ServerNotExistException', 'IceGrid.ServerStartException', 'IceGrid.NodeUnreachableException', 'IceGrid.DeploymentException' }
        stopServer_ex_ = { 'IceGrid.ServerNotExistException', 'IceGrid.ServerStopException', 'IceGrid.NodeUnreachableException', 'IceGrid.DeploymentException' }
        sendSignal_ex_ = { 'IceGrid.ServerNotExistException', 'IceGrid.NodeUnreachableException', 'IceGrid.DeploymentException', 'IceGrid.BadSignalException' }
        getAdapterInfo_ex_ = { 'IceGrid.AdapterNotExistException' }
        removeAdapter_ex_ = { 'IceGrid.AdapterNotExistException', 'IceGrid.DeploymentException' }
        addObject_ex_ = { 'IceGrid.ObjectExistsException', 'IceGrid.DeploymentException' }
        updateObject_ex_ = { 'IceGrid.ObjectNotRegisteredException', 'IceGrid.DeploymentException' }
        addObjectWithType_ex_ = { 'IceGrid.ObjectExistsException', 'IceGrid.DeploymentException' }
        removeObject_ex_ = { 'IceGrid.ObjectNotRegisteredException', 'IceGrid.DeploymentException' }
        getObjectInfo_ex_ = { 'IceGrid.ObjectNotRegisteredException' }
        pingNode_ex_ = { 'IceGrid.NodeNotExistException' }
        getNodeLoad_ex_ = { 'IceGrid.NodeNotExistException', 'IceGrid.NodeUnreachableException' }
        getNodeInfo_ex_ = { 'IceGrid.NodeNotExistException', 'IceGrid.NodeUnreachableException' }
        getNodeAdmin_ex_ = { 'IceGrid.NodeNotExistException', 'IceGrid.NodeUnreachableException' }
        getNodeProcessorSocketCount_ex_ = { 'IceGrid.NodeNotExistException', 'IceGrid.NodeUnreachableException' }
        shutdownNode_ex_ = { 'IceGrid.NodeNotExistException', 'IceGrid.NodeUnreachableException' }
        getNodeHostname_ex_ = { 'IceGrid.NodeNotExistException', 'IceGrid.NodeUnreachableException' }
        pingRegistry_ex_ = { 'IceGrid.RegistryNotExistException' }
        getRegistryInfo_ex_ = { 'IceGrid.RegistryNotExistException', 'IceGrid.RegistryUnreachableException' }
        getRegistryAdmin_ex_ = { 'IceGrid.RegistryNotExistException' }
        shutdownRegistry_ex_ = { 'IceGrid.RegistryNotExistException', 'IceGrid.RegistryUnreachableException' }
    end
end
