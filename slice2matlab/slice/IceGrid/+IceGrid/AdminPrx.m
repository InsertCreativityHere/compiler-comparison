classdef AdminPrx < Ice.ObjectPrx
    %ADMINPRX Provides administrative access to an IceGrid deployment.
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.AdminPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   AdminPrx Methods:
    %     addApplication - Adds an application to IceGrid.
    %     addApplicationAsync - An asynchronous addApplication.
    %     addObject - Adds an object to the object registry.
    %     addObjectAsync - An asynchronous addObject.
    %     addObjectWithType - Adds an object to the object registry and explicitly specifies its type.
    %     addObjectWithTypeAsync - An asynchronous addObjectWithType.
    %     enableServer - Enables or disables a server.
    %     enableServerAsync - An asynchronous enableServer.
    %     getAdapterInfo - Gets adapter information for the replica group or adapter with the given ID.
    %     getAdapterInfoAsync - An asynchronous getAdapterInfo.
    %     getAllAdapterIds - Gets the IDs of all adapters registered with IceGrid.
    %     getAllAdapterIdsAsync - An asynchronous getAllAdapterIds.
    %     getAllApplicationNames - Gets all the IceGrid applications currently registered.
    %     getAllApplicationNamesAsync - An asynchronous getAllApplicationNames.
    %     getAllNodeNames - Gets the names of all IceGrid nodes currently registered.
    %     getAllNodeNamesAsync - An asynchronous getAllNodeNames.
    %     getAllObjectInfos - Gets the object info of all the registered objects whose stringified identities match the given expression.
    %     getAllObjectInfosAsync - An asynchronous getAllObjectInfos.
    %     getAllRegistryNames - Gets the names of all the IceGrid registries currently registered.
    %     getAllRegistryNamesAsync - An asynchronous getAllRegistryNames.
    %     getAllServerIds - Gets the IDs of all the servers registered with IceGrid.
    %     getAllServerIdsAsync - An asynchronous getAllServerIds.
    %     getApplicationInfo - Gets an application descriptor.
    %     getApplicationInfoAsync - An asynchronous getApplicationInfo.
    %     getDefaultApplicationDescriptor - Gets the default application descriptor.
    %     getDefaultApplicationDescriptorAsync - An asynchronous getDefaultApplicationDescriptor.
    %     getNodeAdmin - Gets a proxy to the admin object of an IceGrid node.
    %     getNodeAdminAsync - An asynchronous getNodeAdmin.
    %     getNodeHostname - Get the hostname of a node.
    %     getNodeHostnameAsync - An asynchronous getNodeHostname.
    %     getNodeInfo - Gets the node information of a node.
    %     getNodeInfoAsync - An asynchronous getNodeInfo.
    %     getNodeLoad - Gets the load averages of a node.
    %     getNodeLoadAsync - An asynchronous getNodeLoad.
    %     getNodeProcessorSocketCount - Gets the number of physical processor sockets in the computer where an IceGrid node is deployed.
    %     getNodeProcessorSocketCountAsync - An asynchronous getNodeProcessorSocketCount.
    %     getObjectInfo - Gets the object info for the object.
    %     getObjectInfoAsync - An asynchronous getObjectInfo.
    %     getObjectInfosByType - Gets the object info of all the registered objects with a given type.
    %     getObjectInfosByTypeAsync - An asynchronous getObjectInfosByType.
    %     getRegistryAdmin - Gets a proxy to the admin object of an IceGrid registry.
    %     getRegistryAdminAsync - An asynchronous getRegistryAdmin.
    %     getRegistryInfo - Gets the registry information of an IceGrid registry.
    %     getRegistryInfoAsync - An asynchronous getRegistryInfo.
    %     getServerAdmin - Gets a proxy to the admin object of a server.
    %     getServerAdminAsync - An asynchronous getServerAdmin.
    %     getServerAdminCategory - Gets the category for server admin objects.
    %     getServerAdminCategoryAsync - An asynchronous getServerAdminCategory.
    %     getServerInfo - Gets information about a server.
    %     getServerInfoAsync - An asynchronous getServerInfo.
    %     getServerPid - Gets the system process ID of a server.
    %     getServerPidAsync - An asynchronous getServerPid.
    %     getServerState - Gets the state of a server.
    %     getServerStateAsync - An asynchronous getServerState.
    %     instantiateServer - Instantiates a server template.
    %     instantiateServerAsync - An asynchronous instantiateServer.
    %     isServerEnabled - Checks if the server is enabled or disabled.
    %     isServerEnabledAsync - An asynchronous isServerEnabled.
    %     pingNode - Pings an IceGrid node to see if it is active.
    %     pingNodeAsync - An asynchronous pingNode.
    %     pingRegistry - Pings an IceGrid registry to see if it is active.
    %     pingRegistryAsync - An asynchronous pingRegistry.
    %     removeAdapter - Removes the adapter with the given ID.
    %     removeAdapterAsync - An asynchronous removeAdapter.
    %     removeApplication - Removes an application from IceGrid.
    %     removeApplicationAsync - An asynchronous removeApplication.
    %     removeObject - Removes an object from the object registry.
    %     removeObjectAsync - An asynchronous removeObject.
    %     sendSignal - Sends a signal to a server.
    %     sendSignalAsync - An asynchronous sendSignal.
    %     shutdown - Shuts down the IceGrid registry.
    %     shutdownAsync - An asynchronous shutdown.
    %     shutdownNode - Shuts down an IceGrid node.
    %     shutdownNodeAsync - An asynchronous shutdownNode.
    %     shutdownRegistry - Shuts down an IceGrid registry.
    %     shutdownRegistryAsync - An asynchronous shutdownRegistry.
    %     startServer - Starts a server and waits for its activation.
    %     startServerAsync - An asynchronous startServer.
    %     stopServer - Stops a server.
    %     stopServerAsync - An asynchronous stopServer.
    %     syncApplication - Synchronizes a deployed application.
    %     syncApplicationAsync - An asynchronous syncApplication.
    %     syncApplicationWithoutRestart - Synchronizes a deployed application.
    %     syncApplicationWithoutRestartAsync - An asynchronous syncApplicationWithoutRestart.
    %     updateApplication - Updates a deployed application.
    %     updateApplicationAsync - An asynchronous updateApplication.
    %     updateApplicationWithoutRestart - Updates a deployed application.
    %     updateApplicationWithoutRestartAsync - An asynchronous updateApplicationWithoutRestart.
    %     updateObject - Updates an object in the object registry.
    %     updateObjectAsync - An asynchronous updateObject.
    %
    %   AdminPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::Admin.
    %     uncheckedCast - Creates a AdminPrx from another proxy without any validation.
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function addApplication(obj, descriptor, context)
            %ADDAPPLICATION Adds an application to IceGrid.
            %
            %   Input Arguments
            %     descriptor - The application descriptor.
            %       IceGrid.ApplicationDescriptor scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %       session is holding the lock.
            %     IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                descriptor (1, 1) IceGrid.ApplicationDescriptor
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('addApplication', 0, true, os_, false, IceGrid.AdminPrx.addApplication_ex_, context);
        end

        function future = addApplicationAsync(obj, descriptor, context)
            %ADDAPPLICATIONASYNC Adds an application to IceGrid.
            %
            %   Input Arguments
            %     descriptor - The application descriptor.
            %       IceGrid.ApplicationDescriptor scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also addApplication, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                descriptor (1, 1) IceGrid.ApplicationDescriptor
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('addApplication', 0, true, os_, 0, [], IceGrid.AdminPrx.addApplication_ex_, context);
        end

        function syncApplication(obj, descriptor, context)
            %SYNCAPPLICATION Synchronizes a deployed application. This operation replaces the current descriptor with a new descriptor.
            %
            %   Input Arguments
            %     descriptor - The new application descriptor.
            %       IceGrid.ApplicationDescriptor scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %       session is holding the lock.
            %     IceGrid.DeploymentException - Thrown when the application deployment failed.
            %     IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                descriptor (1, 1) IceGrid.ApplicationDescriptor
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('syncApplication', 0, true, os_, false, IceGrid.AdminPrx.syncApplication_ex_, context);
        end

        function future = syncApplicationAsync(obj, descriptor, context)
            %SYNCAPPLICATIONASYNC Synchronizes a deployed application. This operation replaces the current descriptor with a new descriptor.
            %
            %   Input Arguments
            %     descriptor - The new application descriptor.
            %       IceGrid.ApplicationDescriptor scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also syncApplication, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                descriptor (1, 1) IceGrid.ApplicationDescriptor
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('syncApplication', 0, true, os_, 0, [], IceGrid.AdminPrx.syncApplication_ex_, context);
        end

        function updateApplication(obj, descriptor, context)
            %UPDATEAPPLICATION Updates a deployed application.
            %
            %   Input Arguments
            %     descriptor - The update descriptor.
            %       IceGrid.ApplicationUpdateDescriptor scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %       session is holding the lock.
            %     IceGrid.DeploymentException - Thrown when the application deployment failed.
            %     IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                descriptor (1, 1) IceGrid.ApplicationUpdateDescriptor
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationUpdateDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('updateApplication', 0, true, os_, false, IceGrid.AdminPrx.updateApplication_ex_, context);
        end

        function future = updateApplicationAsync(obj, descriptor, context)
            %UPDATEAPPLICATIONASYNC Updates a deployed application.
            %
            %   Input Arguments
            %     descriptor - The update descriptor.
            %       IceGrid.ApplicationUpdateDescriptor scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also updateApplication, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                descriptor (1, 1) IceGrid.ApplicationUpdateDescriptor
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationUpdateDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('updateApplication', 0, true, os_, 0, [], IceGrid.AdminPrx.updateApplication_ex_, context);
        end

        function syncApplicationWithoutRestart(obj, descriptor, context)
            %SYNCAPPLICATIONWITHOUTRESTART Synchronizes a deployed application. This operation replaces the current descriptor with a new descriptor
            %   only if no server restarts are necessary for the update of the application. If some servers need to be
            %   restarted, the synchronization is rejected with a DeploymentException.
            %
            %   Input Arguments
            %     descriptor - The application descriptor.
            %       IceGrid.ApplicationDescriptor scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %       session is holding the lock.
            %     IceGrid.DeploymentException - Thrown when the application deployment failed.
            %     IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                descriptor (1, 1) IceGrid.ApplicationDescriptor
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('syncApplicationWithoutRestart', 0, true, os_, false, IceGrid.AdminPrx.syncApplicationWithoutRestart_ex_, context);
        end

        function future = syncApplicationWithoutRestartAsync(obj, descriptor, context)
            %SYNCAPPLICATIONWITHOUTRESTARTASYNC Synchronizes a deployed application. This operation replaces the current descriptor with a new descriptor
            %   only if no server restarts are necessary for the update of the application. If some servers need to be
            %   restarted, the synchronization is rejected with a DeploymentException.
            %
            %   Input Arguments
            %     descriptor - The application descriptor.
            %       IceGrid.ApplicationDescriptor scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also syncApplicationWithoutRestart, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                descriptor (1, 1) IceGrid.ApplicationDescriptor
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('syncApplicationWithoutRestart', 0, true, os_, 0, [], IceGrid.AdminPrx.syncApplicationWithoutRestart_ex_, context);
        end

        function updateApplicationWithoutRestart(obj, descriptor, context)
            %UPDATEAPPLICATIONWITHOUTRESTART Updates a deployed application. This operation succeeds only when no server restarts are necessary for the
            %   update of the application. If some servers need to be restarted, the synchronization is rejected with a
            %   DeploymentException.
            %
            %   Input Arguments
            %     descriptor - The update descriptor.
            %       IceGrid.ApplicationUpdateDescriptor scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %       session is holding the lock.
            %     IceGrid.DeploymentException - Thrown when the application deployment failed.
            %     IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                descriptor (1, 1) IceGrid.ApplicationUpdateDescriptor
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationUpdateDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('updateApplicationWithoutRestart', 0, true, os_, false, IceGrid.AdminPrx.updateApplicationWithoutRestart_ex_, context);
        end

        function future = updateApplicationWithoutRestartAsync(obj, descriptor, context)
            %UPDATEAPPLICATIONWITHOUTRESTARTASYNC Updates a deployed application. This operation succeeds only when no server restarts are necessary for the
            %   update of the application. If some servers need to be restarted, the synchronization is rejected with a
            %   DeploymentException.
            %
            %   Input Arguments
            %     descriptor - The update descriptor.
            %       IceGrid.ApplicationUpdateDescriptor scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also updateApplicationWithoutRestart, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                descriptor (1, 1) IceGrid.ApplicationUpdateDescriptor
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ApplicationUpdateDescriptor.ice_write(os_, descriptor);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('updateApplicationWithoutRestart', 0, true, os_, 0, [], IceGrid.AdminPrx.updateApplicationWithoutRestart_ex_, context);
        end

        function removeApplication(obj, name, context)
            %REMOVEAPPLICATION Removes an application from IceGrid.
            %
            %   Input Arguments
            %     name - The application name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %       session is holding the lock.
            %     IceGrid.DeploymentException - Thrown when the application deployment failed.
            %     IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('removeApplication', 0, true, os_, false, IceGrid.AdminPrx.removeApplication_ex_, context);
        end

        function future = removeApplicationAsync(obj, name, context)
            %REMOVEAPPLICATIONASYNC Removes an application from IceGrid.
            %
            %   Input Arguments
            %     name - The application name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also removeApplication, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('removeApplication', 0, true, os_, 0, [], IceGrid.AdminPrx.removeApplication_ex_, context);
        end

        function instantiateServer(obj, application, node, desc, context)
            %INSTANTIATESERVER Instantiates a server template.
            %
            %   Input Arguments
            %     application - The application name.
            %       character vector
            %     node - The name of the node where the server will be deployed.
            %       character vector
            %     desc - The descriptor of the server instance to deploy.
            %       IceGrid.ServerInstanceDescriptor scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock or when another
            %       session is holding the lock.
            %     IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            %     IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                application (1, :) char
                node (1, :) char
                desc (1, 1) IceGrid.ServerInstanceDescriptor
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(application);
            os_.writeString(node);
            IceGrid.ServerInstanceDescriptor.ice_write(os_, desc);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('instantiateServer', 0, true, os_, false, IceGrid.AdminPrx.instantiateServer_ex_, context);
        end

        function future = instantiateServerAsync(obj, application, node, desc, context)
            %INSTANTIATESERVERASYNC Instantiates a server template.
            %
            %   Input Arguments
            %     application - The application name.
            %       character vector
            %     node - The name of the node where the server will be deployed.
            %       character vector
            %     desc - The descriptor of the server instance to deploy.
            %       IceGrid.ServerInstanceDescriptor scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also instantiateServer, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                application (1, :) char
                node (1, :) char
                desc (1, 1) IceGrid.ServerInstanceDescriptor
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(application);
            os_.writeString(node);
            IceGrid.ServerInstanceDescriptor.ice_write(os_, desc);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('instantiateServer', 0, true, os_, 0, [], IceGrid.AdminPrx.instantiateServer_ex_, context);
        end

        function returnValue = getApplicationInfo(obj, name, context)
            %GETAPPLICATIONINFO Gets an application descriptor.
            %
            %   Input Arguments
            %     name - The application name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The application descriptor.
            %       IceGrid.ApplicationInfo scalar
            %
            %   Exceptions
            %     IceGrid.ApplicationNotExistException - Thrown when the application doesn't exist.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getApplicationInfo', 2, true, os_, true, IceGrid.AdminPrx.getApplicationInfo_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.ApplicationInfo.ice_read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue.ice_convert();
        end

        function future = getApplicationInfoAsync(obj, name, context)
            %GETAPPLICATIONINFOASYNC Gets an application descriptor.
            %
            %   Input Arguments
            %     name - The application name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getApplicationInfo, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.ApplicationInfo.ice_read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.ice_convert();
            end
            future = obj.iceInvokeAsync('getApplicationInfo', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getApplicationInfo_ex_, context);
        end

        function returnValue = getDefaultApplicationDescriptor(obj, context)
            %GETDEFAULTAPPLICATIONDESCRIPTOR Gets the default application descriptor.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The default application descriptor.
            %       IceGrid.ApplicationDescriptor scalar
            %
            %   Exceptions
            %     IceGrid.DeploymentException - Thrown when the default application descriptor is invalid or unreachable.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getDefaultApplicationDescriptor', 2, true, [], true, IceGrid.AdminPrx.getDefaultApplicationDescriptor_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.ApplicationDescriptor.ice_read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue.ice_convert();
        end

        function future = getDefaultApplicationDescriptorAsync(obj, context)
            %GETDEFAULTAPPLICATIONDESCRIPTORASYNC Gets the default application descriptor.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getDefaultApplicationDescriptor, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.ApplicationDescriptor.ice_read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.ice_convert();
            end
            future = obj.iceInvokeAsync('getDefaultApplicationDescriptor', 2, true, [], 1, @unmarshal, IceGrid.AdminPrx.getDefaultApplicationDescriptor_ex_, context);
        end

        function returnValue = getAllApplicationNames(obj, context)
            %GETALLAPPLICATIONNAMES Gets all the IceGrid applications currently registered.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The application names.
            %       string vector
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getAllApplicationNames', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = getAllApplicationNamesAsync(obj, context)
            %GETALLAPPLICATIONNAMESASYNC Gets all the IceGrid applications currently registered.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getAllApplicationNames, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getAllApplicationNames', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getServerInfo(obj, id, context)
            %GETSERVERINFO Gets information about a server.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The server information.
            %       IceGrid.ServerInfo scalar
            %
            %   Exceptions
            %     IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getServerInfo', 2, true, os_, true, IceGrid.AdminPrx.getServerInfo_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.ServerInfo.ice_read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue.ice_convert();
        end

        function future = getServerInfoAsync(obj, id, context)
            %GETSERVERINFOASYNC Gets information about a server.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getServerInfo, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.ServerInfo.ice_read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.ice_convert();
            end
            future = obj.iceInvokeAsync('getServerInfo', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getServerInfo_ex_, context);
        end

        function returnValue = getServerState(obj, id, context)
            %GETSERVERSTATE Gets the state of a server.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The server state.
            %       IceGrid.ServerState scalar
            %
            %   Exceptions
            %     IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %     IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getServerState', 2, true, os_, true, IceGrid.AdminPrx.getServerState_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.ServerState.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getServerStateAsync(obj, id, context)
            %GETSERVERSTATEASYNC Gets the state of a server.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getServerState, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.ServerState.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getServerState', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getServerState_ex_, context);
        end

        function returnValue = getServerPid(obj, id, context)
            %GETSERVERPID Gets the system process ID of a server. The process ID is operating system dependent.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The process ID.
            %       int32 scalar
            %
            %   Exceptions
            %     IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %     IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getServerPid', 2, true, os_, true, IceGrid.AdminPrx.getServerPid_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getServerPidAsync(obj, id, context)
            %GETSERVERPIDASYNC Gets the system process ID of a server. The process ID is operating system dependent.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getServerPid, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getServerPid', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getServerPid_ex_, context);
        end

        function returnValue = getServerAdminCategory(obj, context)
            %GETSERVERADMINCATEGORY Gets the category for server admin objects. You can manufacture a server admin proxy from the admin proxy by
            %   changing its identity: use the server ID as name and the returned category as category.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The category for server admin objects.
            %       character vector
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getServerAdminCategory', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getServerAdminCategoryAsync(obj, context)
            %GETSERVERADMINCATEGORYASYNC Gets the category for server admin objects. You can manufacture a server admin proxy from the admin proxy by
            %   changing its identity: use the server ID as name and the returned category as category.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getServerAdminCategory, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getServerAdminCategory', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getServerAdmin(obj, id, context)
            %GETSERVERADMIN Gets a proxy to the admin object of a server.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to the admin object of the server. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %
            %   Exceptions
            %     IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %     IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getServerAdmin', 2, true, os_, true, IceGrid.AdminPrx.getServerAdmin_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = getServerAdminAsync(obj, id, context)
            %GETSERVERADMINASYNC Gets a proxy to the admin object of a server.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getServerAdmin, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getServerAdmin', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getServerAdmin_ex_, context);
        end

        function enableServer(obj, id, enabled, context)
            %ENABLESERVER Enables or disables a server. A disabled server can't be started on demand or administratively. The enable
            %   state of the server is not persistent: if the node is shut down and restarted, the server will be enabled by
            %   default.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     enabled - `true` to enable the server, `false` to disable it.
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %     IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                enabled (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeBool(enabled);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('enableServer', 2, true, os_, false, IceGrid.AdminPrx.enableServer_ex_, context);
        end

        function future = enableServerAsync(obj, id, enabled, context)
            %ENABLESERVERASYNC Enables or disables a server. A disabled server can't be started on demand or administratively. The enable
            %   state of the server is not persistent: if the node is shut down and restarted, the server will be enabled by
            %   default.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     enabled - `true` to enable the server, `false` to disable it.
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also enableServer, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                enabled (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeBool(enabled);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('enableServer', 2, true, os_, 0, [], IceGrid.AdminPrx.enableServer_ex_, context);
        end

        function returnValue = isServerEnabled(obj, id, context)
            %ISSERVERENABLED Checks if the server is enabled or disabled.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - `true` if the server is enabled, `false` otherwise.
            %       logical scalar
            %
            %   Exceptions
            %     IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %     IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('isServerEnabled', 2, true, os_, true, IceGrid.AdminPrx.isServerEnabled_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = isServerEnabledAsync(obj, id, context)
            %ISSERVERENABLEDASYNC Checks if the server is enabled or disabled.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also isServerEnabled, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('isServerEnabled', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.isServerEnabled_ex_, context);
        end

        function startServer(obj, id, context)
            %STARTSERVER Starts a server and waits for its activation.
            %
            %   Input Arguments
            %     id - The server id.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            %     IceGrid.ServerStartException - Thrown when the server startup failed.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %     IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('startServer', 0, true, os_, false, IceGrid.AdminPrx.startServer_ex_, context);
        end

        function future = startServerAsync(obj, id, context)
            %STARTSERVERASYNC Starts a server and waits for its activation.
            %
            %   Input Arguments
            %     id - The server id.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also startServer, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('startServer', 0, true, os_, 0, [], IceGrid.AdminPrx.startServer_ex_, context);
        end

        function stopServer(obj, id, context)
            %STOPSERVER Stops a server.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            %     IceGrid.ServerStopException - Thrown when the server stop failed.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %     IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('stopServer', 0, true, os_, false, IceGrid.AdminPrx.stopServer_ex_, context);
        end

        function future = stopServerAsync(obj, id, context)
            %STOPSERVERASYNC Stops a server.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also stopServer, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('stopServer', 0, true, os_, 0, [], IceGrid.AdminPrx.stopServer_ex_, context);
        end

        function sendSignal(obj, id, signal, context)
            %SENDSIGNAL Sends a signal to a server.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     signal - The signal, for example SIGTERM or 15.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %     IceGrid.DeploymentException - Thrown when the deployment of the server failed.
            %     IceGrid.BadSignalException - Thrown when the signal is not recognized by the target server.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                signal (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeString(signal);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sendSignal', 0, true, os_, false, IceGrid.AdminPrx.sendSignal_ex_, context);
        end

        function future = sendSignalAsync(obj, id, signal, context)
            %SENDSIGNALASYNC Sends a signal to a server.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     signal - The signal, for example SIGTERM or 15.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also sendSignal, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                signal (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeString(signal);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('sendSignal', 0, true, os_, 0, [], IceGrid.AdminPrx.sendSignal_ex_, context);
        end

        function returnValue = getAllServerIds(obj, context)
            %GETALLSERVERIDS Gets the IDs of all the servers registered with IceGrid.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The server IDs.
            %       string vector
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getAllServerIds', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = getAllServerIdsAsync(obj, context)
            %GETALLSERVERIDSASYNC Gets the IDs of all the servers registered with IceGrid.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getAllServerIds, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getAllServerIds', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getAdapterInfo(obj, id, context)
            %GETADAPTERINFO Gets adapter information for the replica group or adapter with the given ID.
            %
            %   Input Arguments
            %     id - The adapter or replica group ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A sequence of AdapterInfo. If @p id refers to an adapter, this sequence contains a single element.
            %       If @p id refers to a replica group, this sequence contains adapter information for each member of the
            %       replica group.
            %       IceGrid.AdapterInfo vector
            %
            %   Exceptions
            %     IceGrid.AdapterNotExistException - Thrown when the adapter or replica group doesn't exist.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getAdapterInfo', 2, true, os_, true, IceGrid.AdminPrx.getAdapterInfo_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.AdapterInfoSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = getAdapterInfoAsync(obj, id, context)
            %GETADAPTERINFOASYNC Gets adapter information for the replica group or adapter with the given ID.
            %
            %   Input Arguments
            %     id - The adapter or replica group ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getAdapterInfo, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.AdapterInfoSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getAdapterInfo', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getAdapterInfo_ex_, context);
        end

        function removeAdapter(obj, id, context)
            %REMOVEADAPTER Removes the adapter with the given ID.
            %
            %   Input Arguments
            %     id - The adapter ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.AdapterNotExistException - Thrown when the adapter doesn't exist.
            %     IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('removeAdapter', 0, true, os_, false, IceGrid.AdminPrx.removeAdapter_ex_, context);
        end

        function future = removeAdapterAsync(obj, id, context)
            %REMOVEADAPTERASYNC Removes the adapter with the given ID.
            %
            %   Input Arguments
            %     id - The adapter ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also removeAdapter, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('removeAdapter', 0, true, os_, 0, [], IceGrid.AdminPrx.removeAdapter_ex_, context);
        end

        function returnValue = getAllAdapterIds(obj, context)
            %GETALLADAPTERIDS Gets the IDs of all adapters registered with IceGrid.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The adapter IDs.
            %       string vector
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getAllAdapterIds', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = getAllAdapterIdsAsync(obj, context)
            %GETALLADAPTERIDSASYNC Gets the IDs of all adapters registered with IceGrid.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getAllAdapterIds, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getAllAdapterIds', 2, true, [], 1, @unmarshal, {}, context);
        end

        function addObject(obj_, obj, context)
            %ADDOBJECT Adds an object to the object registry. IceGrid gets the object type by calling `ice_id` on @p obj. The
            %   object must be reachable.
            %
            %   Input Arguments
            %     obj - A proxy to the object. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.ObjectExistsException - Thrown when the object is already registered.
            %     IceGrid.DeploymentException - Thrown when the object can't be added.
            
            arguments
                obj_ (1, 1) IceGrid.AdminPrx
                obj Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            obj_.iceInvoke('addObject', 0, true, os_, false, IceGrid.AdminPrx.addObject_ex_, context);
        end

        function future = addObjectAsync(obj_, obj, context)
            %ADDOBJECTASYNC Adds an object to the object registry. IceGrid gets the object type by calling `ice_id` on @p obj. The
            %   object must be reachable.
            %
            %   Input Arguments
            %     obj - A proxy to the object. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also addObject, Ice.Future.
            
            arguments
                obj_ (1, 1) IceGrid.AdminPrx
                obj Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            future = obj_.iceInvokeAsync('addObject', 0, true, os_, 0, [], IceGrid.AdminPrx.addObject_ex_, context);
        end

        function updateObject(obj_, obj, context)
            %UPDATEOBJECT Updates an object in the object registry. Only objects added with this interface can be updated with this
            %   operation. Objects added with deployment descriptors should be updated with the deployment mechanism.
            %
            %   Input Arguments
            %     obj - A proxy to the object. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.ObjectNotRegisteredException - Thrown when the object isn't registered with the registry.
            %     IceGrid.DeploymentException - Thrown when the object can't be updated.
            
            arguments
                obj_ (1, 1) IceGrid.AdminPrx
                obj Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            obj_.iceInvoke('updateObject', 0, true, os_, false, IceGrid.AdminPrx.updateObject_ex_, context);
        end

        function future = updateObjectAsync(obj_, obj, context)
            %UPDATEOBJECTASYNC Updates an object in the object registry. Only objects added with this interface can be updated with this
            %   operation. Objects added with deployment descriptors should be updated with the deployment mechanism.
            %
            %   Input Arguments
            %     obj - A proxy to the object. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also updateObject, Ice.Future.
            
            arguments
                obj_ (1, 1) IceGrid.AdminPrx
                obj Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            future = obj_.iceInvokeAsync('updateObject', 0, true, os_, 0, [], IceGrid.AdminPrx.updateObject_ex_, context);
        end

        function addObjectWithType(obj_, obj, type, context)
            %ADDOBJECTWITHTYPE Adds an object to the object registry and explicitly specifies its type.
            %
            %   Input Arguments
            %     obj - The object to be added to the registry. The proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     type - The type name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.ObjectExistsException - Thrown when the object is already registered.
            %     IceGrid.DeploymentException - Thrown when the application deployment failed.
            
            arguments
                obj_ (1, 1) IceGrid.AdminPrx
                obj Ice.ObjectPrx {mustBeScalarOrEmpty}
                type (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            os_.writeString(type);
            obj_.iceEndWriteParams(os_);
            obj_.iceInvoke('addObjectWithType', 0, true, os_, false, IceGrid.AdminPrx.addObjectWithType_ex_, context);
        end

        function future = addObjectWithTypeAsync(obj_, obj, type, context)
            %ADDOBJECTWITHTYPEASYNC Adds an object to the object registry and explicitly specifies its type.
            %
            %   Input Arguments
            %     obj - The object to be added to the registry. The proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     type - The type name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also addObjectWithType, Ice.Future.
            
            arguments
                obj_ (1, 1) IceGrid.AdminPrx
                obj Ice.ObjectPrx {mustBeScalarOrEmpty}
                type (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            os_.writeString(type);
            obj_.iceEndWriteParams(os_);
            future = obj_.iceInvokeAsync('addObjectWithType', 0, true, os_, 0, [], IceGrid.AdminPrx.addObjectWithType_ex_, context);
        end

        function removeObject(obj, id, context)
            %REMOVEOBJECT Removes an object from the object registry. Only objects added with this interface can be removed with this
            %   operation. Objects added with deployment descriptors should be removed with the deployment mechanism.
            %
            %   Input Arguments
            %     id - The identity of the object to remove.
            %       Ice.Identity scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.ObjectNotRegisteredException - Thrown when the object isn't registered with the registry.
            %     IceGrid.DeploymentException - Thrown when the object can't be removed.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, 1) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('removeObject', 0, true, os_, false, IceGrid.AdminPrx.removeObject_ex_, context);
        end

        function future = removeObjectAsync(obj, id, context)
            %REMOVEOBJECTASYNC Removes an object from the object registry. Only objects added with this interface can be removed with this
            %   operation. Objects added with deployment descriptors should be removed with the deployment mechanism.
            %
            %   Input Arguments
            %     id - The identity of the object to remove.
            %       Ice.Identity scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also removeObject, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, 1) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('removeObject', 0, true, os_, 0, [], IceGrid.AdminPrx.removeObject_ex_, context);
        end

        function returnValue = getObjectInfo(obj, id, context)
            %GETOBJECTINFO Gets the object info for the object.
            %
            %   Input Arguments
            %     id - The identity of the object.
            %       Ice.Identity scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The object info.
            %       IceGrid.ObjectInfo scalar
            %
            %   Exceptions
            %     IceGrid.ObjectNotRegisteredException - Thrown when the object isn't registered with the registry.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, 1) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getObjectInfo', 2, true, os_, true, IceGrid.AdminPrx.getObjectInfo_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.ObjectInfo.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getObjectInfoAsync(obj, id, context)
            %GETOBJECTINFOASYNC Gets the object info for the object.
            %
            %   Input Arguments
            %     id - The identity of the object.
            %       Ice.Identity scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getObjectInfo, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                id (1, 1) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.ObjectInfo.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getObjectInfo', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getObjectInfo_ex_, context);
        end

        function returnValue = getObjectInfosByType(obj, type, context)
            %GETOBJECTINFOSBYTYPE Gets the object info of all the registered objects with a given type.
            %
            %   Input Arguments
            %     type - The type name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The object infos.
            %       IceGrid.ObjectInfo vector
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                type (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getObjectInfosByType', 2, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = IceGrid.ObjectInfoSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = getObjectInfosByTypeAsync(obj, type, context)
            %GETOBJECTINFOSBYTYPEASYNC Gets the object info of all the registered objects with a given type.
            %
            %   Input Arguments
            %     type - The type name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getObjectInfosByType, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                type (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.ObjectInfoSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getObjectInfosByType', 2, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = getAllObjectInfos(obj, expr, context)
            %GETALLOBJECTINFOS Gets the object info of all the registered objects whose stringified identities match the given expression.
            %
            %   Input Arguments
            %     expr - The expression to match against the stringified identities of registered objects. The expression
            %       may contain a trailing wildcard (`*`) character.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - All the object infos with a stringified identity matching the given expression.
            %       IceGrid.ObjectInfo vector
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                expr (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(expr);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getAllObjectInfos', 2, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = IceGrid.ObjectInfoSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = getAllObjectInfosAsync(obj, expr, context)
            %GETALLOBJECTINFOSASYNC Gets the object info of all the registered objects whose stringified identities match the given expression.
            %
            %   Input Arguments
            %     expr - The expression to match against the stringified identities of registered objects. The expression
            %       may contain a trailing wildcard (`*`) character.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getAllObjectInfos, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                expr (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(expr);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.ObjectInfoSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getAllObjectInfos', 2, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = pingNode(obj, name, context)
            %PINGNODE Pings an IceGrid node to see if it is active.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - `true` if the node ping succeeded, `false` otherwise.
            %       logical scalar
            %
            %   Exceptions
            %     IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('pingNode', 2, true, os_, true, IceGrid.AdminPrx.pingNode_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = pingNodeAsync(obj, name, context)
            %PINGNODEASYNC Pings an IceGrid node to see if it is active.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also pingNode, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('pingNode', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.pingNode_ex_, context);
        end

        function returnValue = getNodeLoad(obj, name, context)
            %GETNODELOAD Gets the load averages of a node.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The node load information.
            %       IceGrid.LoadInfo scalar
            %
            %   Exceptions
            %     IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getNodeLoad', 2, true, os_, true, IceGrid.AdminPrx.getNodeLoad_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.LoadInfo.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getNodeLoadAsync(obj, name, context)
            %GETNODELOADASYNC Gets the load averages of a node.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getNodeLoad, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.LoadInfo.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getNodeLoad', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getNodeLoad_ex_, context);
        end

        function returnValue = getNodeInfo(obj, name, context)
            %GETNODEINFO Gets the node information of a node.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The node information.
            %       IceGrid.NodeInfo scalar
            %
            %   Exceptions
            %     IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getNodeInfo', 2, true, os_, true, IceGrid.AdminPrx.getNodeInfo_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.NodeInfo.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getNodeInfoAsync(obj, name, context)
            %GETNODEINFOASYNC Gets the node information of a node.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getNodeInfo, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.NodeInfo.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getNodeInfo', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getNodeInfo_ex_, context);
        end

        function returnValue = getNodeAdmin(obj, name, context)
            %GETNODEADMIN Gets a proxy to the admin object of an IceGrid node.
            %
            %   Input Arguments
            %     name - The IceGrid node name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to the IceGrid node's admin object. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %
            %   Exceptions
            %     IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getNodeAdmin', 2, true, os_, true, IceGrid.AdminPrx.getNodeAdmin_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = getNodeAdminAsync(obj, name, context)
            %GETNODEADMINASYNC Gets a proxy to the admin object of an IceGrid node.
            %
            %   Input Arguments
            %     name - The IceGrid node name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getNodeAdmin, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getNodeAdmin', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getNodeAdmin_ex_, context);
        end

        function returnValue = getNodeProcessorSocketCount(obj, name, context)
            %GETNODEPROCESSORSOCKETCOUNT Gets the number of physical processor sockets in the computer where an IceGrid node is deployed.
            %   Note that this operation returns 1 on operating systems where this can't be automatically determined and
            %   where the `IceGrid.Node.ProcessorSocketCount` property for the node is not set.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The number of processor sockets or 1 if the number of sockets can't be determined.
            %       int32 scalar
            %
            %   Exceptions
            %     IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getNodeProcessorSocketCount', 2, true, os_, true, IceGrid.AdminPrx.getNodeProcessorSocketCount_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getNodeProcessorSocketCountAsync(obj, name, context)
            %GETNODEPROCESSORSOCKETCOUNTASYNC Gets the number of physical processor sockets in the computer where an IceGrid node is deployed.
            %   Note that this operation returns 1 on operating systems where this can't be automatically determined and
            %   where the `IceGrid.Node.ProcessorSocketCount` property for the node is not set.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getNodeProcessorSocketCount, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getNodeProcessorSocketCount', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getNodeProcessorSocketCount_ex_, context);
        end

        function shutdownNode(obj, name, context)
            %SHUTDOWNNODE Shuts down an IceGrid node.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('shutdownNode', 0, true, os_, false, IceGrid.AdminPrx.shutdownNode_ex_, context);
        end

        function future = shutdownNodeAsync(obj, name, context)
            %SHUTDOWNNODEASYNC Shuts down an IceGrid node.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also shutdownNode, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('shutdownNode', 0, true, os_, 0, [], IceGrid.AdminPrx.shutdownNode_ex_, context);
        end

        function returnValue = getNodeHostname(obj, name, context)
            %GETNODEHOSTNAME Get the hostname of a node.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The node hostname.
            %       character vector
            %
            %   Exceptions
            %     IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getNodeHostname', 2, true, os_, true, IceGrid.AdminPrx.getNodeHostname_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getNodeHostnameAsync(obj, name, context)
            %GETNODEHOSTNAMEASYNC Get the hostname of a node.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getNodeHostname, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getNodeHostname', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getNodeHostname_ex_, context);
        end

        function returnValue = getAllNodeNames(obj, context)
            %GETALLNODENAMES Gets the names of all IceGrid nodes currently registered.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The node names.
            %       string vector
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getAllNodeNames', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = getAllNodeNamesAsync(obj, context)
            %GETALLNODENAMESASYNC Gets the names of all IceGrid nodes currently registered.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getAllNodeNames, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getAllNodeNames', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = pingRegistry(obj, name, context)
            %PINGREGISTRY Pings an IceGrid registry to see if it is active.
            %
            %   Input Arguments
            %     name - The registry name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - `true` if the registry ping succeeded, `false` otherwise.
            %       logical scalar
            %
            %   Exceptions
            %     IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('pingRegistry', 2, true, os_, true, IceGrid.AdminPrx.pingRegistry_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = pingRegistryAsync(obj, name, context)
            %PINGREGISTRYASYNC Pings an IceGrid registry to see if it is active.
            %
            %   Input Arguments
            %     name - The registry name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also pingRegistry, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('pingRegistry', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.pingRegistry_ex_, context);
        end

        function returnValue = getRegistryInfo(obj, name, context)
            %GETREGISTRYINFO Gets the registry information of an IceGrid registry.
            %
            %   Input Arguments
            %     name - The registry name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The registry information.
            %       IceGrid.RegistryInfo scalar
            %
            %   Exceptions
            %     IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            %     IceGrid.RegistryUnreachableException - Thrown when the registry is unreachable.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getRegistryInfo', 2, true, os_, true, IceGrid.AdminPrx.getRegistryInfo_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.RegistryInfo.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getRegistryInfoAsync(obj, name, context)
            %GETREGISTRYINFOASYNC Gets the registry information of an IceGrid registry.
            %
            %   Input Arguments
            %     name - The registry name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getRegistryInfo, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.RegistryInfo.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getRegistryInfo', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getRegistryInfo_ex_, context);
        end

        function returnValue = getRegistryAdmin(obj, name, context)
            %GETREGISTRYADMIN Gets a proxy to the admin object of an IceGrid registry.
            %
            %   Input Arguments
            %     name - The registry name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to the admin object of an IceGrid registry. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %
            %   Exceptions
            %     IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getRegistryAdmin', 2, true, os_, true, IceGrid.AdminPrx.getRegistryAdmin_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = getRegistryAdminAsync(obj, name, context)
            %GETREGISTRYADMINASYNC Gets a proxy to the admin object of an IceGrid registry.
            %
            %   Input Arguments
            %     name - The registry name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getRegistryAdmin, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getRegistryAdmin', 2, true, os_, 1, @unmarshal, IceGrid.AdminPrx.getRegistryAdmin_ex_, context);
        end

        function shutdownRegistry(obj, name, context)
            %SHUTDOWNREGISTRY Shuts down an IceGrid registry.
            %
            %   Input Arguments
            %     name - The registry name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            %     IceGrid.RegistryUnreachableException - Thrown when the registry is unreachable.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('shutdownRegistry', 2, true, os_, false, IceGrid.AdminPrx.shutdownRegistry_ex_, context);
        end

        function future = shutdownRegistryAsync(obj, name, context)
            %SHUTDOWNREGISTRYASYNC Shuts down an IceGrid registry.
            %
            %   Input Arguments
            %     name - The registry name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also shutdownRegistry, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('shutdownRegistry', 2, true, os_, 0, [], IceGrid.AdminPrx.shutdownRegistry_ex_, context);
        end

        function returnValue = getAllRegistryNames(obj, context)
            %GETALLREGISTRYNAMES Gets the names of all the IceGrid registries currently registered.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The registry names.
            %       string vector
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getAllRegistryNames', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = getAllRegistryNamesAsync(obj, context)
            %GETALLREGISTRYNAMESASYNC Gets the names of all the IceGrid registries currently registered.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getAllRegistryNames, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getAllRegistryNames', 2, true, [], 1, @unmarshal, {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN Shuts down the IceGrid registry.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('shutdown', 0, false, [], false, {}, context);
        end

        function future = shutdownAsync(obj, context)
            %SHUTDOWNASYNC Shuts down the IceGrid registry.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also shutdown, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::Admin';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.AdminPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::Admin.
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
            %     r - A IceGrid.AdminPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::Admin; otherwise, an empty array of IceGrid.AdminPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.AdminPrx.ice_staticId(), 'IceGrid.AdminPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.AdminPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.AdminPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.AdminPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
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
