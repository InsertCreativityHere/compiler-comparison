% AdminPrx   Summary of AdminPrx
%
% The IceGrid administrative interface. Allowing access to this interface is a security risk!
% Please see the IceGrid documentation for further information.
%
% AdminPrx Methods:
%   addApplication - Add an application to IceGrid.
%   addApplicationAsync - Add an application to IceGrid.
%   syncApplication - Synchronize a deployed application with the given application descriptor.
%   syncApplicationAsync - Synchronize a deployed application with the given application descriptor.
%   updateApplication - Update a deployed application with the given update application descriptor.
%   updateApplicationAsync - Update a deployed application with the given update application descriptor.
%   syncApplicationWithoutRestart - Synchronize a deployed application with the given application descriptor.
%   syncApplicationWithoutRestartAsync - Synchronize a deployed application with the given application descriptor.
%   updateApplicationWithoutRestart - Update a deployed application with the given update application descriptor only if no server restarts are necessary for the update of the application.
%   updateApplicationWithoutRestartAsync - Update a deployed application with the given update application descriptor only if no server restarts are necessary for the update of the application.
%   removeApplication - Remove an application from IceGrid.
%   removeApplicationAsync - Remove an application from IceGrid.
%   instantiateServer - Instantiate a server template from an application on the given node.
%   instantiateServerAsync - Instantiate a server template from an application on the given node.
%   patchApplication - Patch the given application data.
%   patchApplicationAsync - Patch the given application data.
%   getApplicationInfo - Get an application descriptor.
%   getApplicationInfoAsync - Get an application descriptor.
%   getDefaultApplicationDescriptor - Get the default application descriptor.
%   getDefaultApplicationDescriptorAsync - Get the default application descriptor.
%   getAllApplicationNames - Get all the IceGrid applications currently registered.
%   getAllApplicationNamesAsync - Get all the IceGrid applications currently registered.
%   getServerInfo - Get the server information for the server with the given id.
%   getServerInfoAsync - Get the server information for the server with the given id.
%   getServerState - Get a server's state.
%   getServerStateAsync - Get a server's state.
%   getServerPid - Get a server's system process id.
%   getServerPidAsync - Get a server's system process id.
%   getServerAdminCategory - Get the category for server admin objects.
%   getServerAdminCategoryAsync - Get the category for server admin objects.
%   getServerAdmin - Get a proxy to the server's admin object.
%   getServerAdminAsync - Get a proxy to the server's admin object.
%   enableServer - Enable or disable a server.
%   enableServerAsync - Enable or disable a server.
%   isServerEnabled - Check if the server is enabled or disabled.
%   isServerEnabledAsync - Check if the server is enabled or disabled.
%   startServer - Start a server and wait for its activation.
%   startServerAsync - Start a server and wait for its activation.
%   stopServer - Stop a server.
%   stopServerAsync - Stop a server.
%   patchServer - Patch a server.
%   patchServerAsync - Patch a server.
%   sendSignal - Send signal to a server.
%   sendSignalAsync - Send signal to a server.
%   getAllServerIds - Get all the server ids registered with IceGrid.
%   getAllServerIdsAsync - Get all the server ids registered with IceGrid.
%   getAdapterInfo - Get the adapter information for the replica group or adapter with the given id.
%   getAdapterInfoAsync - Get the adapter information for the replica group or adapter with the given id.
%   removeAdapter - Remove the adapter with the given id.
%   removeAdapterAsync - Remove the adapter with the given id.
%   getAllAdapterIds - Get all the adapter ids registered with IceGrid.
%   getAllAdapterIdsAsync - Get all the adapter ids registered with IceGrid.
%   addObject - Add an object to the object registry.
%   addObjectAsync - Add an object to the object registry.
%   updateObject - Update an object in the object registry.
%   updateObjectAsync - Update an object in the object registry.
%   addObjectWithType - Add an object to the object registry and explicitly specify its type.
%   addObjectWithTypeAsync - Add an object to the object registry and explicitly specify its type.
%   removeObject - Remove an object from the object registry.
%   removeObjectAsync - Remove an object from the object registry.
%   getObjectInfo - Get the object info for the object with the given identity.
%   getObjectInfoAsync - Get the object info for the object with the given identity.
%   getObjectInfosByType - Get the object info of all the registered objects with the given type.
%   getObjectInfosByTypeAsync - Get the object info of all the registered objects with the given type.
%   getAllObjectInfos - Get the object info of all the registered objects whose stringified identities match the given expression.
%   getAllObjectInfosAsync - Get the object info of all the registered objects whose stringified identities match the given expression.
%   pingNode - Ping an IceGrid node to see if it is active.
%   pingNodeAsync - Ping an IceGrid node to see if it is active.
%   getNodeLoad - Get the load averages of the node.
%   getNodeLoadAsync - Get the load averages of the node.
%   getNodeInfo - Get the node information for the node with the given name.
%   getNodeInfoAsync - Get the node information for the node with the given name.
%   getNodeAdmin - Get a proxy to the IceGrid node's admin object.
%   getNodeAdminAsync - Get a proxy to the IceGrid node's admin object.
%   getNodeProcessorSocketCount - Get the number of physical processor sockets for the machine running the node with the given name.
%   getNodeProcessorSocketCountAsync - Get the number of physical processor sockets for the machine running the node with the given name.
%   shutdownNode - Shutdown an IceGrid node.
%   shutdownNodeAsync - Shutdown an IceGrid node.
%   getNodeHostname - Get the hostname of this node.
%   getNodeHostnameAsync - Get the hostname of this node.
%   getAllNodeNames - Get all the IceGrid nodes currently registered.
%   getAllNodeNamesAsync - Get all the IceGrid nodes currently registered.
%   pingRegistry - Ping an IceGrid registry to see if it is active.
%   pingRegistryAsync - Ping an IceGrid registry to see if it is active.
%   getRegistryInfo - Get the registry information for the registry with the given name.
%   getRegistryInfoAsync - Get the registry information for the registry with the given name.
%   getRegistryAdmin - Get a proxy to the IceGrid registry's admin object.
%   getRegistryAdminAsync - Get a proxy to the IceGrid registry's admin object.
%   shutdownRegistry - Shutdown an IceGrid registry.
%   shutdownRegistryAsync - Shutdown an IceGrid registry.
%   getAllRegistryNames - Get all the IceGrid registries currently registered.
%   getAllRegistryNamesAsync - Get all the IceGrid registries currently registered.
%   shutdown - Shut down the IceGrid registry.
%   shutdownAsync - Shut down the IceGrid registry.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef AdminPrx < Ice.ObjectPrx
    methods
        function addApplication(obj, descriptor, varargin)
            % addApplication   Add an application to IceGrid.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationDescriptor) - The application descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Raised if the session doesn't hold the exclusive lock or if another session is
            %     holding the lock.
            %   IceGrid.DeploymentException - Raised if application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('addApplication', 0, true, os_, false, IceGrid.AdminPrx.addApplication_ex_, varargin{:});
        end
        function r_ = addApplicationAsync(obj, descriptor, varargin)
            % addApplicationAsync   Add an application to IceGrid.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationDescriptor) - The application descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Raised if the session doesn't hold the exclusive lock or if another session is
            %     holding the lock.
            %   IceGrid.DeploymentException - Raised if application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('addApplication', 0, true, os_, 0, [], IceGrid.AdminPrx.addApplication_ex_, varargin{:});
        end
        function syncApplication(obj, descriptor, varargin)
            % syncApplication   Synchronize a deployed application with the given application descriptor. This operation will replace the
            % current descriptor with this new descriptor.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationDescriptor) - The application descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Raised if the session doesn't hold the exclusive lock or if another session is
            %     holding the lock.
            %   IceGrid.ApplicationNotExistException - Raised if the application doesn't exist.
            %   IceGrid.DeploymentException - Raised if application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('syncApplication', 0, true, os_, false, IceGrid.AdminPrx.syncApplication_ex_, varargin{:});
        end
        function r_ = syncApplicationAsync(obj, descriptor, varargin)
            % syncApplicationAsync   Synchronize a deployed application with the given application descriptor. This operation will replace the
            % current descriptor with this new descriptor.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationDescriptor) - The application descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Raised if the session doesn't hold the exclusive lock or if another session is
            %     holding the lock.
            %   IceGrid.ApplicationNotExistException - Raised if the application doesn't exist.
            %   IceGrid.DeploymentException - Raised if application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('syncApplication', 0, true, os_, 0, [], IceGrid.AdminPrx.syncApplication_ex_, varargin{:});
        end
        function updateApplication(obj, descriptor, varargin)
            % updateApplication   Update a deployed application with the given update application descriptor.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationUpdateDescriptor) - The update descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Raised if the session doesn't hold the exclusive lock or if another session is
            %     holding the lock.
            %   IceGrid.ApplicationNotExistException - Raised if the application doesn't exist.
            %   IceGrid.DeploymentException - Raised if application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationUpdateDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('updateApplication', 0, true, os_, false, IceGrid.AdminPrx.updateApplication_ex_, varargin{:});
        end
        function r_ = updateApplicationAsync(obj, descriptor, varargin)
            % updateApplicationAsync   Update a deployed application with the given update application descriptor.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationUpdateDescriptor) - The update descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Raised if the session doesn't hold the exclusive lock or if another session is
            %     holding the lock.
            %   IceGrid.ApplicationNotExistException - Raised if the application doesn't exist.
            %   IceGrid.DeploymentException - Raised if application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationUpdateDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('updateApplication', 0, true, os_, 0, [], IceGrid.AdminPrx.updateApplication_ex_, varargin{:});
        end
        function syncApplicationWithoutRestart(obj, descriptor, varargin)
            % syncApplicationWithoutRestart   Synchronize a deployed application with the given application descriptor. This operation will replace the
            % current descriptor with this new descriptor only if no server restarts are necessary for the update of the
            % application. If some servers need to be restarted, the synchronization is rejected with a DeploymentException.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationDescriptor) - The application descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Raised if the session doesn't hold the exclusive lock or if another session is
            %     holding the lock.
            %   IceGrid.ApplicationNotExistException - Raised if the application doesn't exist.
            %   IceGrid.DeploymentException - Raised if application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('syncApplicationWithoutRestart', 0, true, os_, false, IceGrid.AdminPrx.syncApplicationWithoutRestart_ex_, varargin{:});
        end
        function r_ = syncApplicationWithoutRestartAsync(obj, descriptor, varargin)
            % syncApplicationWithoutRestartAsync   Synchronize a deployed application with the given application descriptor. This operation will replace the
            % current descriptor with this new descriptor only if no server restarts are necessary for the update of the
            % application. If some servers need to be restarted, the synchronization is rejected with a DeploymentException.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationDescriptor) - The application descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Raised if the session doesn't hold the exclusive lock or if another session is
            %     holding the lock.
            %   IceGrid.ApplicationNotExistException - Raised if the application doesn't exist.
            %   IceGrid.DeploymentException - Raised if application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('syncApplicationWithoutRestart', 0, true, os_, 0, [], IceGrid.AdminPrx.syncApplicationWithoutRestart_ex_, varargin{:});
        end
        function updateApplicationWithoutRestart(obj, descriptor, varargin)
            % updateApplicationWithoutRestart   Update a deployed application with the given update application descriptor only if no server restarts are
            % necessary for the update of the application. If some servers need to be restarted, the synchronization is
            % rejected with a DeploymentException.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationUpdateDescriptor) - The update descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Raised if the session doesn't hold the exclusive lock or if another session is
            %     holding the lock.
            %   IceGrid.ApplicationNotExistException - Raised if the application doesn't exist.
            %   IceGrid.DeploymentException - Raised if application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationUpdateDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('updateApplicationWithoutRestart', 0, true, os_, false, IceGrid.AdminPrx.updateApplicationWithoutRestart_ex_, varargin{:});
        end
        function r_ = updateApplicationWithoutRestartAsync(obj, descriptor, varargin)
            % updateApplicationWithoutRestartAsync   Update a deployed application with the given update application descriptor only if no server restarts are
            % necessary for the update of the application. If some servers need to be restarted, the synchronization is
            % rejected with a DeploymentException.
            %
            % Parameters:
            %   descriptor (IceGrid.ApplicationUpdateDescriptor) - The update descriptor.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Raised if the session doesn't hold the exclusive lock or if another session is
            %     holding the lock.
            %   IceGrid.ApplicationNotExistException - Raised if the application doesn't exist.
            %   IceGrid.DeploymentException - Raised if application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationUpdateDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('updateApplicationWithoutRestart', 0, true, os_, 0, [], IceGrid.AdminPrx.updateApplicationWithoutRestart_ex_, varargin{:});
        end
        function removeApplication(obj, name, varargin)
            % removeApplication   Remove an application from IceGrid.
            %
            % Parameters:
            %   name (char) - The application name.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Raised if the session doesn't hold the exclusive lock or if another session is
            %     holding the lock.
            %   IceGrid.ApplicationNotExistException - Raised if the application doesn't exist.
            %   IceGrid.DeploymentException - Raised if application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('removeApplication', 0, true, os_, false, IceGrid.AdminPrx.removeApplication_ex_, varargin{:});
        end
        function r_ = removeApplicationAsync(obj, name, varargin)
            % removeApplicationAsync   Remove an application from IceGrid.
            %
            % Parameters:
            %   name (char) - The application name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Raised if the session doesn't hold the exclusive lock or if another session is
            %     holding the lock.
            %   IceGrid.ApplicationNotExistException - Raised if the application doesn't exist.
            %   IceGrid.DeploymentException - Raised if application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('removeApplication', 0, true, os_, 0, [], IceGrid.AdminPrx.removeApplication_ex_, varargin{:});
        end
        function instantiateServer(obj, application, node, desc, varargin)
            % instantiateServer   Instantiate a server template from an application on the given node.
            %
            % Parameters:
            %   application (char) - The application name.
            %   node (char) - The name of the node where the server will be deployed.
            %   desc (IceGrid.ServerInstanceDescriptor) - The descriptor of the server instance to deploy.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AccessDeniedException - Raised if the session doesn't hold the exclusive lock or if another session is
            %     holding the lock.
            %   IceGrid.ApplicationNotExistException - Raised if the application doesn't exist.
            %   IceGrid.DeploymentException - Raised if server instantiation failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(application);
            os_.writeString(node);
            IceGrid.ServerInstanceDescriptor.ice_write(os_, desc);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('instantiateServer', 0, true, os_, false, IceGrid.AdminPrx.instantiateServer_ex_, varargin{:});
        end
        function r_ = instantiateServerAsync(obj, application, node, desc, varargin)
            % instantiateServerAsync   Instantiate a server template from an application on the given node.
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
            %   IceGrid.AccessDeniedException - Raised if the session doesn't hold the exclusive lock or if another session is
            %     holding the lock.
            %   IceGrid.ApplicationNotExistException - Raised if the application doesn't exist.
            %   IceGrid.DeploymentException - Raised if server instantiation failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(application);
            os_.writeString(node);
            IceGrid.ServerInstanceDescriptor.ice_write(os_, desc);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('instantiateServer', 0, true, os_, 0, [], IceGrid.AdminPrx.instantiateServer_ex_, varargin{:});
        end
        function patchApplication(obj, name, shutdown, varargin)
            % patchApplication   Patch the given application data.
            %
            % Parameters:
            %   name (char) - The application name.
            %   shutdown (logical) - If true, the servers depending on the data to patch will be shut down if necessary.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.ApplicationNotExistException - Raised if the application doesn't exist.
            %   IceGrid.PatchException - Raised if the patch failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeBool(shutdown);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('patchApplication', 0, true, os_, false, IceGrid.AdminPrx.patchApplication_ex_, varargin{:});
        end
        function r_ = patchApplicationAsync(obj, name, shutdown, varargin)
            % patchApplicationAsync   Patch the given application data.
            %
            % Parameters:
            %   name (char) - The application name.
            %   shutdown (logical) - If true, the servers depending on the data to patch will be shut down if necessary.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.ApplicationNotExistException - Raised if the application doesn't exist.
            %   IceGrid.PatchException - Raised if the patch failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeBool(shutdown);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('patchApplication', 0, true, os_, 0, [], IceGrid.AdminPrx.patchApplication_ex_, varargin{:});
        end
        function result = getApplicationInfo(obj, name, varargin)
            % getApplicationInfo   Get an application descriptor.
            %
            % Parameters:
            %   name (char) - The application name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ApplicationInfo) - The application descriptor.
            %
            % Exceptions:
            %   IceGrid.ApplicationNotExistException - Raised if the application doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getApplicationInfo', 1, true, os_, true, IceGrid.AdminPrx.getApplicationInfo_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ApplicationInfo.ice_read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result.ice_convert();
        end
        function r_ = getApplicationInfoAsync(obj, name, varargin)
            % getApplicationInfoAsync   Get an application descriptor.
            %
            % Parameters:
            %   name (char) - The application name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.ApplicationNotExistException - Raised if the application doesn't exist.
            
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
            r_ = obj.iceInvokeAsync('getApplicationInfo', 1, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getApplicationInfo_ex_, varargin{:});
        end
        function result = getDefaultApplicationDescriptor(obj, varargin)
            % getDefaultApplicationDescriptor   Get the default application descriptor.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ApplicationDescriptor) - The default application descriptor.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the default application descriptor can't be accessed or is invalid.
            
            is_ = obj.iceInvoke('getDefaultApplicationDescriptor', 1, true, [], true, IceGrid.AdminPrx.getDefaultApplicationDescriptor_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ApplicationDescriptor.ice_read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result.ice_convert();
        end
        function r_ = getDefaultApplicationDescriptorAsync(obj, varargin)
            % getDefaultApplicationDescriptorAsync   Get the default application descriptor.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the default application descriptor can't be accessed or is invalid.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.ApplicationDescriptor.ice_read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.ice_convert();
            end
            r_ = obj.iceInvokeAsync('getDefaultApplicationDescriptor', 1, true, [], 1, @unmarshal, IceGrid.AdminPrx.getDefaultApplicationDescriptor_ex_, varargin{:});
        end
        function result = getAllApplicationNames(obj, varargin)
            % getAllApplicationNames   Get all the IceGrid applications currently registered.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.StringSeq) - The application names.
            
            is_ = obj.iceInvoke('getAllApplicationNames', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = getAllApplicationNamesAsync(obj, varargin)
            % getAllApplicationNamesAsync   Get all the IceGrid applications currently registered.
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
            r_ = obj.iceInvokeAsync('getAllApplicationNames', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getServerInfo(obj, id, varargin)
            % getServerInfo   Get the server information for the server with the given id.
            %
            % Parameters:
            %   id (char) - The server id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ServerInfo) - The server information.
            %
            % Exceptions:
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getServerInfo', 1, true, os_, true, IceGrid.AdminPrx.getServerInfo_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ServerInfo.ice_read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result.ice_convert();
        end
        function r_ = getServerInfoAsync(obj, id, varargin)
            % getServerInfoAsync   Get the server information for the server with the given id.
            %
            % Parameters:
            %   id (char) - The server id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
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
            r_ = obj.iceInvokeAsync('getServerInfo', 1, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getServerInfo_ex_, varargin{:});
        end
        function result = getServerState(obj, id, varargin)
            % getServerState   Get a server's state.
            %
            % Parameters:
            %   id (char) - The server id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ServerState) - The server state.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getServerState', 1, true, os_, true, IceGrid.AdminPrx.getServerState_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ServerState.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getServerStateAsync(obj, id, varargin)
            % getServerStateAsync   Get a server's state.
            %
            % Parameters:
            %   id (char) - The server id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.ServerState.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getServerState', 1, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getServerState_ex_, varargin{:});
        end
        function result = getServerPid(obj, id, varargin)
            % getServerPid   Get a server's system process id. The process id is operating system dependent.
            %
            % Parameters:
            %   id (char) - The server id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32) - The server's process id.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getServerPid', 1, true, os_, true, IceGrid.AdminPrx.getServerPid_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getServerPidAsync(obj, id, varargin)
            % getServerPidAsync   Get a server's system process id. The process id is operating system dependent.
            %
            % Parameters:
            %   id (char) - The server id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getServerPid', 1, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getServerPid_ex_, varargin{:});
        end
        function result = getServerAdminCategory(obj, varargin)
            % getServerAdminCategory   Get the category for server admin objects. You can manufacture a server admin proxy from the admin proxy by
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
            % getServerAdminCategoryAsync   Get the category for server admin objects. You can manufacture a server admin proxy from the admin proxy by
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
            % getServerAdmin   Get a proxy to the server's admin object.
            %
            % Parameters:
            %   id (char) - The server id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - A proxy to the server's admin object
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getServerAdmin', 2, true, os_, true, IceGrid.AdminPrx.getServerAdmin_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = getServerAdminAsync(obj, id, varargin)
            % getServerAdminAsync   Get a proxy to the server's admin object.
            %
            % Parameters:
            %   id (char) - The server id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
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
            % enableServer   Enable or disable a server. A disabled server can't be started on demand or administratively. The enable state
            % of the server is not persistent: if the node is shut down and restarted, the server will be enabled by default.
            %
            % Parameters:
            %   id (char) - The server id.
            %   enabled (logical) - True to enable the server, false to disable it.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeBool(enabled);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('enableServer', 2, true, os_, false, IceGrid.AdminPrx.enableServer_ex_, varargin{:});
        end
        function r_ = enableServerAsync(obj, id, enabled, varargin)
            % enableServerAsync   Enable or disable a server. A disabled server can't be started on demand or administratively. The enable state
            % of the server is not persistent: if the node is shut down and restarted, the server will be enabled by default.
            %
            % Parameters:
            %   id (char) - The server id.
            %   enabled (logical) - True to enable the server, false to disable it.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeBool(enabled);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('enableServer', 2, true, os_, 0, [], IceGrid.AdminPrx.enableServer_ex_, varargin{:});
        end
        function result = isServerEnabled(obj, id, varargin)
            % isServerEnabled   Check if the server is enabled or disabled.
            %
            % Parameters:
            %   id (char) - The server id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (logical) - True if the server is enabled.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('isServerEnabled', 1, true, os_, true, IceGrid.AdminPrx.isServerEnabled_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = isServerEnabledAsync(obj, id, varargin)
            % isServerEnabledAsync   Check if the server is enabled or disabled.
            %
            % Parameters:
            %   id (char) - The server id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('isServerEnabled', 1, true, os_, 1, @unmarshal, IceGrid.AdminPrx.isServerEnabled_ex_, varargin{:});
        end
        function startServer(obj, id, varargin)
            % startServer   Start a server and wait for its activation.
            %
            % Parameters:
            %   id (char) - The server id.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            %   IceGrid.ServerStartException - Raised if the server couldn't be started.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('startServer', 0, true, os_, false, IceGrid.AdminPrx.startServer_ex_, varargin{:});
        end
        function r_ = startServerAsync(obj, id, varargin)
            % startServerAsync   Start a server and wait for its activation.
            %
            % Parameters:
            %   id (char) - The server id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            %   IceGrid.ServerStartException - Raised if the server couldn't be started.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('startServer', 0, true, os_, 0, [], IceGrid.AdminPrx.startServer_ex_, varargin{:});
        end
        function stopServer(obj, id, varargin)
            % stopServer   Stop a server.
            %
            % Parameters:
            %   id (char) - The server id.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            %   IceGrid.ServerStopException - Raised if the server couldn't be stopped.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('stopServer', 0, true, os_, false, IceGrid.AdminPrx.stopServer_ex_, varargin{:});
        end
        function r_ = stopServerAsync(obj, id, varargin)
            % stopServerAsync   Stop a server.
            %
            % Parameters:
            %   id (char) - The server id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            %   IceGrid.ServerStopException - Raised if the server couldn't be stopped.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('stopServer', 0, true, os_, 0, [], IceGrid.AdminPrx.stopServer_ex_, varargin{:});
        end
        function patchServer(obj, id, shutdown, varargin)
            % patchServer   Patch a server.
            %
            % Parameters:
            %   id (char) - The server id.
            %   shutdown (logical) - If true, servers depending on the data to patch will be shut down if necessary.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.PatchException - Raised if the patch failed.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeBool(shutdown);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('patchServer', 0, true, os_, false, IceGrid.AdminPrx.patchServer_ex_, varargin{:});
        end
        function r_ = patchServerAsync(obj, id, shutdown, varargin)
            % patchServerAsync   Patch a server.
            %
            % Parameters:
            %   id (char) - The server id.
            %   shutdown (logical) - If true, servers depending on the data to patch will be shut down if necessary.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.PatchException - Raised if the patch failed.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeBool(shutdown);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('patchServer', 0, true, os_, 0, [], IceGrid.AdminPrx.patchServer_ex_, varargin{:});
        end
        function sendSignal(obj, id, signal, varargin)
            % sendSignal   Send signal to a server.
            %
            % Parameters:
            %   id (char) - The server id.
            %   signal (char) - The signal, for example SIGTERM or 15.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.BadSignalException - Raised if the signal is not recognized by the target server.
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeString(signal);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sendSignal', 0, true, os_, false, IceGrid.AdminPrx.sendSignal_ex_, varargin{:});
        end
        function r_ = sendSignalAsync(obj, id, signal, varargin)
            % sendSignalAsync   Send signal to a server.
            %
            % Parameters:
            %   id (char) - The server id.
            %   signal (char) - The signal, for example SIGTERM or 15.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.BadSignalException - Raised if the signal is not recognized by the target server.
            %   IceGrid.DeploymentException - Raised if the server couldn't be deployed on the node.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            %   IceGrid.ServerNotExistException - Raised if the server doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeString(signal);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('sendSignal', 0, true, os_, 0, [], IceGrid.AdminPrx.sendSignal_ex_, varargin{:});
        end
        function result = getAllServerIds(obj, varargin)
            % getAllServerIds   Get all the server ids registered with IceGrid.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.StringSeq) - The server ids.
            
            is_ = obj.iceInvoke('getAllServerIds', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = getAllServerIdsAsync(obj, varargin)
            % getAllServerIdsAsync   Get all the server ids registered with IceGrid.
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
            r_ = obj.iceInvokeAsync('getAllServerIds', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getAdapterInfo(obj, id, varargin)
            % getAdapterInfo   Get the adapter information for the replica group or adapter with the given id.
            %
            % Parameters:
            %   id (char) - The adapter id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.AdapterInfoSeq) - A sequence of adapter information structures. If the given id refers to an adapter, this sequence will
            % contain only one element. If the given id refers to a replica group, the sequence will contain the adapter
            % information of each member of the replica group.
            %
            % Exceptions:
            %   IceGrid.AdapterNotExistException - Raised if the adapter or replica group doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getAdapterInfo', 1, true, os_, true, IceGrid.AdminPrx.getAdapterInfo_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.AdapterInfoSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getAdapterInfoAsync(obj, id, varargin)
            % getAdapterInfoAsync   Get the adapter information for the replica group or adapter with the given id.
            %
            % Parameters:
            %   id (char) - The adapter id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AdapterNotExistException - Raised if the adapter or replica group doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.AdapterInfoSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getAdapterInfo', 1, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getAdapterInfo_ex_, varargin{:});
        end
        function removeAdapter(obj, id, varargin)
            % removeAdapter   Remove the adapter with the given id.
            %
            % Parameters:
            %   id (char) - The adapter id.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AdapterNotExistException - Raised if the adapter doesn't exist.
            %   IceGrid.DeploymentException - Raised if application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('removeAdapter', 0, true, os_, false, IceGrid.AdminPrx.removeAdapter_ex_, varargin{:});
        end
        function r_ = removeAdapterAsync(obj, id, varargin)
            % removeAdapterAsync   Remove the adapter with the given id.
            %
            % Parameters:
            %   id (char) - The adapter id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AdapterNotExistException - Raised if the adapter doesn't exist.
            %   IceGrid.DeploymentException - Raised if application deployment failed.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('removeAdapter', 0, true, os_, 0, [], IceGrid.AdminPrx.removeAdapter_ex_, varargin{:});
        end
        function result = getAllAdapterIds(obj, varargin)
            % getAllAdapterIds   Get all the adapter ids registered with IceGrid.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.StringSeq) - The adapter ids.
            
            is_ = obj.iceInvoke('getAllAdapterIds', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = getAllAdapterIdsAsync(obj, varargin)
            % getAllAdapterIdsAsync   Get all the adapter ids registered with IceGrid.
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
            r_ = obj.iceInvokeAsync('getAllAdapterIds', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function addObject(obj_, obj, varargin)
            % addObject   Add an object to the object registry. IceGrid will get the object type by calling ice_id on the
            % given proxy. The object must be reachable.
            %
            % Parameters:
            %   obj (Ice.ObjectPrx) - The object to be added to the registry.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the object can't be added. This might be raised if the invocation on the
            %     proxy to get the object type failed.
            %   IceGrid.ObjectExistsException - Raised if the object is already registered.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            obj_.iceInvoke('addObject', 0, true, os_, false, IceGrid.AdminPrx.addObject_ex_, varargin{:});
        end
        function r_ = addObjectAsync(obj_, obj, varargin)
            % addObjectAsync   Add an object to the object registry. IceGrid will get the object type by calling ice_id on the
            % given proxy. The object must be reachable.
            %
            % Parameters:
            %   obj (Ice.ObjectPrx) - The object to be added to the registry.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the object can't be added. This might be raised if the invocation on the
            %     proxy to get the object type failed.
            %   IceGrid.ObjectExistsException - Raised if the object is already registered.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            r_ = obj_.iceInvokeAsync('addObject', 0, true, os_, 0, [], IceGrid.AdminPrx.addObject_ex_, varargin{:});
        end
        function updateObject(obj_, obj, varargin)
            % updateObject   Update an object in the object registry. Only objects added with this interface can be updated with this
            % operation. Objects added with deployment descriptors should be updated with the deployment mechanism.
            %
            % Parameters:
            %   obj (Ice.ObjectPrx) - The object to be updated to the registry.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the object can't be updated. This might happen if the object was added
            %     with a deployment descriptor.
            %   IceGrid.ObjectNotRegisteredException - Raised if the object isn't registered with the registry.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            obj_.iceInvoke('updateObject', 0, true, os_, false, IceGrid.AdminPrx.updateObject_ex_, varargin{:});
        end
        function r_ = updateObjectAsync(obj_, obj, varargin)
            % updateObjectAsync   Update an object in the object registry. Only objects added with this interface can be updated with this
            % operation. Objects added with deployment descriptors should be updated with the deployment mechanism.
            %
            % Parameters:
            %   obj (Ice.ObjectPrx) - The object to be updated to the registry.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the object can't be updated. This might happen if the object was added
            %     with a deployment descriptor.
            %   IceGrid.ObjectNotRegisteredException - Raised if the object isn't registered with the registry.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            r_ = obj_.iceInvokeAsync('updateObject', 0, true, os_, 0, [], IceGrid.AdminPrx.updateObject_ex_, varargin{:});
        end
        function addObjectWithType(obj_, obj, type, varargin)
            % addObjectWithType   Add an object to the object registry and explicitly specify its type.
            %
            % Parameters:
            %   obj (Ice.ObjectPrx) - The object to be added to the registry.
            %   type (char) - The object type.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if application deployment failed.
            %   IceGrid.ObjectExistsException - Raised if the object is already registered.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            os_.writeString(type);
            obj_.iceEndWriteParams(os_);
            obj_.iceInvoke('addObjectWithType', 0, true, os_, false, IceGrid.AdminPrx.addObjectWithType_ex_, varargin{:});
        end
        function r_ = addObjectWithTypeAsync(obj_, obj, type, varargin)
            % addObjectWithTypeAsync   Add an object to the object registry and explicitly specify its type.
            %
            % Parameters:
            %   obj (Ice.ObjectPrx) - The object to be added to the registry.
            %   type (char) - The object type.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if application deployment failed.
            %   IceGrid.ObjectExistsException - Raised if the object is already registered.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            os_.writeString(type);
            obj_.iceEndWriteParams(os_);
            r_ = obj_.iceInvokeAsync('addObjectWithType', 0, true, os_, 0, [], IceGrid.AdminPrx.addObjectWithType_ex_, varargin{:});
        end
        function removeObject(obj, id, varargin)
            % removeObject   Remove an object from the object registry. Only objects added with this interface can be removed with this
            % operation. Objects added with deployment descriptors should be removed with the deployment mechanism.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity of the object to be removed from the registry.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the object can't be removed. This might happen if the object was added
            %     with a deployment descriptor.
            %   IceGrid.ObjectNotRegisteredException - Raised if the object isn't registered with the registry.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('removeObject', 0, true, os_, false, IceGrid.AdminPrx.removeObject_ex_, varargin{:});
        end
        function r_ = removeObjectAsync(obj, id, varargin)
            % removeObjectAsync   Remove an object from the object registry. Only objects added with this interface can be removed with this
            % operation. Objects added with deployment descriptors should be removed with the deployment mechanism.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity of the object to be removed from the registry.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the object can't be removed. This might happen if the object was added
            %     with a deployment descriptor.
            %   IceGrid.ObjectNotRegisteredException - Raised if the object isn't registered with the registry.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('removeObject', 0, true, os_, 0, [], IceGrid.AdminPrx.removeObject_ex_, varargin{:});
        end
        function result = getObjectInfo(obj, id, varargin)
            % getObjectInfo   Get the object info for the object with the given identity.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity of the object.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ObjectInfo) - The object info.
            %
            % Exceptions:
            %   IceGrid.ObjectNotRegisteredException - Raised if the object isn't registered with the registry.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getObjectInfo', 1, true, os_, true, IceGrid.AdminPrx.getObjectInfo_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ObjectInfo.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getObjectInfoAsync(obj, id, varargin)
            % getObjectInfoAsync   Get the object info for the object with the given identity.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity of the object.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.ObjectNotRegisteredException - Raised if the object isn't registered with the registry.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.ObjectInfo.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getObjectInfo', 1, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getObjectInfo_ex_, varargin{:});
        end
        function result = getObjectInfosByType(obj, type, varargin)
            % getObjectInfosByType   Get the object info of all the registered objects with the given type.
            %
            % Parameters:
            %   type (char) - The type of the object.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ObjectInfoSeq) - The object infos.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getObjectInfosByType', 1, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ObjectInfoSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getObjectInfosByTypeAsync(obj, type, varargin)
            % getObjectInfosByTypeAsync   Get the object info of all the registered objects with the given type.
            %
            % Parameters:
            %   type (char) - The type of the object.
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
            r_ = obj.iceInvokeAsync('getObjectInfosByType', 1, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = getAllObjectInfos(obj, expr, varargin)
            % getAllObjectInfos   Get the object info of all the registered objects whose stringified identities match the given expression.
            %
            % Parameters:
            %   expr (char) - The expression to match against the stringified identities of registered objects. The expression
            %     may contain a trailing wildcard (*) character.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ObjectInfoSeq) - All the object infos with a stringified identity matching the given expression.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(expr);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getAllObjectInfos', 1, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ObjectInfoSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getAllObjectInfosAsync(obj, expr, varargin)
            % getAllObjectInfosAsync   Get the object info of all the registered objects whose stringified identities match the given expression.
            %
            % Parameters:
            %   expr (char) - The expression to match against the stringified identities of registered objects. The expression
            %     may contain a trailing wildcard (*) character.
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
            r_ = obj.iceInvokeAsync('getAllObjectInfos', 1, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = pingNode(obj, name, varargin)
            % pingNode   Ping an IceGrid node to see if it is active.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (logical) - true if the node ping succeeded, false otherwise.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('pingNode', 1, true, os_, true, IceGrid.AdminPrx.pingNode_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = pingNodeAsync(obj, name, varargin)
            % pingNodeAsync   Ping an IceGrid node to see if it is active.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('pingNode', 1, true, os_, 1, @unmarshal, IceGrid.AdminPrx.pingNode_ex_, varargin{:});
        end
        function result = getNodeLoad(obj, name, varargin)
            % getNodeLoad   Get the load averages of the node.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.LoadInfo) - The node load information.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getNodeLoad', 1, true, os_, true, IceGrid.AdminPrx.getNodeLoad_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.LoadInfo.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getNodeLoadAsync(obj, name, varargin)
            % getNodeLoadAsync   Get the load averages of the node.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.LoadInfo.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getNodeLoad', 1, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getNodeLoad_ex_, varargin{:});
        end
        function result = getNodeInfo(obj, name, varargin)
            % getNodeInfo   Get the node information for the node with the given name.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.NodeInfo) - The node information.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getNodeInfo', 1, true, os_, true, IceGrid.AdminPrx.getNodeInfo_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.NodeInfo.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getNodeInfoAsync(obj, name, varargin)
            % getNodeInfoAsync   Get the node information for the node with the given name.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.NodeInfo.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getNodeInfo', 1, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getNodeInfo_ex_, varargin{:});
        end
        function result = getNodeAdmin(obj, name, varargin)
            % getNodeAdmin   Get a proxy to the IceGrid node's admin object.
            %
            % Parameters:
            %   name (char) - The IceGrid node name
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - A proxy to the IceGrid node's admin object
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getNodeAdmin', 2, true, os_, true, IceGrid.AdminPrx.getNodeAdmin_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = getNodeAdminAsync(obj, name, varargin)
            % getNodeAdminAsync   Get a proxy to the IceGrid node's admin object.
            %
            % Parameters:
            %   name (char) - The IceGrid node name
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            
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
            % getNodeProcessorSocketCount   Get the number of physical processor sockets for the machine running the node with the given name.
            % Note that this method will return 1 on operating systems where this can't be automatically determined and where
            % the IceGrid.Node.ProcessorSocketCount property for the node is not set.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32) - The number of processor sockets or 1 if the number of sockets can't determined.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getNodeProcessorSocketCount', 1, true, os_, true, IceGrid.AdminPrx.getNodeProcessorSocketCount_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getNodeProcessorSocketCountAsync(obj, name, varargin)
            % getNodeProcessorSocketCountAsync   Get the number of physical processor sockets for the machine running the node with the given name.
            % Note that this method will return 1 on operating systems where this can't be automatically determined and where
            % the IceGrid.Node.ProcessorSocketCount property for the node is not set.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getNodeProcessorSocketCount', 1, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getNodeProcessorSocketCount_ex_, varargin{:});
        end
        function shutdownNode(obj, name, varargin)
            % shutdownNode   Shutdown an IceGrid node.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('shutdownNode', 0, true, os_, false, IceGrid.AdminPrx.shutdownNode_ex_, varargin{:});
        end
        function r_ = shutdownNodeAsync(obj, name, varargin)
            % shutdownNodeAsync   Shutdown an IceGrid node.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('shutdownNode', 0, true, os_, 0, [], IceGrid.AdminPrx.shutdownNode_ex_, varargin{:});
        end
        function result = getNodeHostname(obj, name, varargin)
            % getNodeHostname   Get the hostname of this node.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char) - The node hostname.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getNodeHostname', 1, true, os_, true, IceGrid.AdminPrx.getNodeHostname_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getNodeHostnameAsync(obj, name, varargin)
            % getNodeHostnameAsync   Get the hostname of this node.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.NodeNotExistException - Raised if the node doesn't exist.
            %   IceGrid.NodeUnreachableException - Raised if the node could not be reached.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getNodeHostname', 1, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getNodeHostname_ex_, varargin{:});
        end
        function result = getAllNodeNames(obj, varargin)
            % getAllNodeNames   Get all the IceGrid nodes currently registered.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.StringSeq) - The node names.
            
            is_ = obj.iceInvoke('getAllNodeNames', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = getAllNodeNamesAsync(obj, varargin)
            % getAllNodeNamesAsync   Get all the IceGrid nodes currently registered.
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
            r_ = obj.iceInvokeAsync('getAllNodeNames', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = pingRegistry(obj, name, varargin)
            % pingRegistry   Ping an IceGrid registry to see if it is active.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (logical) - true if the registry ping succeeded, false otherwise.
            %
            % Exceptions:
            %   IceGrid.RegistryNotExistException - Raised if the registry doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('pingRegistry', 2, true, os_, true, IceGrid.AdminPrx.pingRegistry_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = pingRegistryAsync(obj, name, varargin)
            % pingRegistryAsync   Ping an IceGrid registry to see if it is active.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.RegistryNotExistException - Raised if the registry doesn't exist.
            
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
            % getRegistryInfo   Get the registry information for the registry with the given name.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.RegistryInfo) - The registry information.
            %
            % Exceptions:
            %   IceGrid.RegistryNotExistException - Raised if the registry doesn't exist.
            %   IceGrid.RegistryUnreachableException - Raised if the registry could not be reached.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getRegistryInfo', 2, true, os_, true, IceGrid.AdminPrx.getRegistryInfo_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.RegistryInfo.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getRegistryInfoAsync(obj, name, varargin)
            % getRegistryInfoAsync   Get the registry information for the registry with the given name.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.RegistryNotExistException - Raised if the registry doesn't exist.
            %   IceGrid.RegistryUnreachableException - Raised if the registry could not be reached.
            
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
            % getRegistryAdmin   Get a proxy to the IceGrid registry's admin object.
            %
            % Parameters:
            %   name (char) - The registry name
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - A proxy to the IceGrid registry's admin object
            %
            % Exceptions:
            %   IceGrid.RegistryNotExistException - Raised if the registry doesn't exist.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getRegistryAdmin', 2, true, os_, true, IceGrid.AdminPrx.getRegistryAdmin_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = getRegistryAdminAsync(obj, name, varargin)
            % getRegistryAdminAsync   Get a proxy to the IceGrid registry's admin object.
            %
            % Parameters:
            %   name (char) - The registry name
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.RegistryNotExistException - Raised if the registry doesn't exist.
            
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
            % shutdownRegistry   Shutdown an IceGrid registry.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.RegistryNotExistException - Raised if the registry doesn't exist.
            %   IceGrid.RegistryUnreachableException - Raised if the registry could not be reached.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('shutdownRegistry', 2, true, os_, false, IceGrid.AdminPrx.shutdownRegistry_ex_, varargin{:});
        end
        function r_ = shutdownRegistryAsync(obj, name, varargin)
            % shutdownRegistryAsync   Shutdown an IceGrid registry.
            %
            % Parameters:
            %   name (char) - The registry name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.RegistryNotExistException - Raised if the registry doesn't exist.
            %   IceGrid.RegistryUnreachableException - Raised if the registry could not be reached.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('shutdownRegistry', 2, true, os_, 0, [], IceGrid.AdminPrx.shutdownRegistry_ex_, varargin{:});
        end
        function result = getAllRegistryNames(obj, varargin)
            % getAllRegistryNames   Get all the IceGrid registries currently registered.
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
            % getAllRegistryNamesAsync   Get all the IceGrid registries currently registered.
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
            % shutdown   Shut down the IceGrid registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            % shutdownAsync   Shut down the IceGrid registry.
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
    methods(Hidden=true)
        function obj = AdminPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        addApplication_ex_ = { 'IceGrid.AccessDeniedException', 'IceGrid.DeploymentException' }
        syncApplication_ex_ = { 'IceGrid.AccessDeniedException', 'IceGrid.ApplicationNotExistException', 'IceGrid.DeploymentException' }
        updateApplication_ex_ = { 'IceGrid.AccessDeniedException', 'IceGrid.ApplicationNotExistException', 'IceGrid.DeploymentException' }
        syncApplicationWithoutRestart_ex_ = { 'IceGrid.AccessDeniedException', 'IceGrid.ApplicationNotExistException', 'IceGrid.DeploymentException' }
        updateApplicationWithoutRestart_ex_ = { 'IceGrid.AccessDeniedException', 'IceGrid.ApplicationNotExistException', 'IceGrid.DeploymentException' }
        removeApplication_ex_ = { 'IceGrid.AccessDeniedException', 'IceGrid.ApplicationNotExistException', 'IceGrid.DeploymentException' }
        instantiateServer_ex_ = { 'IceGrid.AccessDeniedException', 'IceGrid.ApplicationNotExistException', 'IceGrid.DeploymentException' }
        patchApplication_ex_ = { 'IceGrid.PatchException', 'IceGrid.ApplicationNotExistException' }
        getApplicationInfo_ex_ = { 'IceGrid.ApplicationNotExistException' }
        getDefaultApplicationDescriptor_ex_ = { 'IceGrid.DeploymentException' }
        getServerInfo_ex_ = { 'IceGrid.ServerNotExistException' }
        getServerState_ex_ = { 'IceGrid.ServerNotExistException', 'IceGrid.DeploymentException', 'IceGrid.NodeUnreachableException' }
        getServerPid_ex_ = { 'IceGrid.ServerNotExistException', 'IceGrid.DeploymentException', 'IceGrid.NodeUnreachableException' }
        getServerAdmin_ex_ = { 'IceGrid.ServerNotExistException', 'IceGrid.DeploymentException', 'IceGrid.NodeUnreachableException' }
        enableServer_ex_ = { 'IceGrid.ServerNotExistException', 'IceGrid.DeploymentException', 'IceGrid.NodeUnreachableException' }
        isServerEnabled_ex_ = { 'IceGrid.ServerNotExistException', 'IceGrid.DeploymentException', 'IceGrid.NodeUnreachableException' }
        startServer_ex_ = { 'IceGrid.ServerNotExistException', 'IceGrid.ServerStartException', 'IceGrid.DeploymentException', 'IceGrid.NodeUnreachableException' }
        stopServer_ex_ = { 'IceGrid.ServerNotExistException', 'IceGrid.ServerStopException', 'IceGrid.DeploymentException', 'IceGrid.NodeUnreachableException' }
        patchServer_ex_ = { 'IceGrid.PatchException', 'IceGrid.ServerNotExistException', 'IceGrid.DeploymentException', 'IceGrid.NodeUnreachableException' }
        sendSignal_ex_ = { 'IceGrid.BadSignalException', 'IceGrid.ServerNotExistException', 'IceGrid.DeploymentException', 'IceGrid.NodeUnreachableException' }
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
        getRegistryInfo_ex_ = { 'IceGrid.RegistryUnreachableException', 'IceGrid.RegistryNotExistException' }
        getRegistryAdmin_ex_ = { 'IceGrid.RegistryNotExistException' }
        shutdownRegistry_ex_ = { 'IceGrid.RegistryUnreachableException', 'IceGrid.RegistryNotExistException' }
    end
end
