classdef AdminSessionPrx < Glacier2.SessionPrx
    %ADMINSESSIONPRX Represents an administrative session between an admin tool and an IceGrid registry.
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.AdminSessionPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   AdminSessionPrx Methods:
    %     finishUpdate - Finishes updating the registry and releases the exclusive lock.
    %     finishUpdateAsync - An asynchronous finishUpdate.
    %     getAdmin - Gets a proxy to the IceGrid admin object.
    %     getAdminAsync - An asynchronous getAdmin.
    %     getAdminCallbackTemplate - Gets a "template" proxy for admin callback objects.
    %     getAdminCallbackTemplateAsync - An asynchronous getAdminCallbackTemplate.
    %     getReplicaName - Gets the name of the registry replica hosting this session.
    %     getReplicaNameAsync - An asynchronous getReplicaName.
    %     keepAlive - Keeps the session alive.
    %     keepAliveAsync - An asynchronous keepAlive.
    %     openNodeStdErr - Opens a node stderr file for reading.
    %     openNodeStdErrAsync - An asynchronous openNodeStdErr.
    %     openNodeStdOut - Opens a node stdout file for reading.
    %     openNodeStdOutAsync - An asynchronous openNodeStdOut.
    %     openRegistryStdErr - Opens a registry stderr file for reading.
    %     openRegistryStdErrAsync - An asynchronous openRegistryStdErr.
    %     openRegistryStdOut - Opens a registry stdout file for reading.
    %     openRegistryStdOutAsync - An asynchronous openRegistryStdOut.
    %     openServerLog - Opens a server log file for reading.
    %     openServerLogAsync - An asynchronous openServerLog.
    %     openServerStdErr - Opens a server stderr file for reading.
    %     openServerStdErrAsync - An asynchronous openServerStdErr.
    %     openServerStdOut - Opens a server stdout file for reading.
    %     openServerStdOutAsync - An asynchronous openServerStdOut.
    %     setObservers - Sets the observer proxies that receive notifications when the state of the registry or nodes changes.
    %     setObserversAsync - An asynchronous setObservers.
    %     setObserversByIdentity - Sets the observer identities that receive notifications when the state of the registry or nodes changes.
    %     setObserversByIdentityAsync - An asynchronous setObserversByIdentity.
    %     startUpdate - Acquires an exclusive lock to start updating the registry applications.
    %     startUpdateAsync - An asynchronous startUpdate.
    %
    %   AdminSessionPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::AdminSession.
    %     uncheckedCast - Creates a AdminSessionPrx from another proxy without any validation.
    %
    %   See also IceGrid.Registry
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function keepAlive(obj, context)
            %KEEPALIVE Keeps the session alive.
            %
            %   Deprecated: As of Ice 3.8, there is no need to call this operation, and its implementation does nothing.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('keepAlive', 2, false, [], false, {}, context);
        end

        function future = keepAliveAsync(obj, context)
            %KEEPALIVEASYNC Keeps the session alive.
            %
            %   Deprecated: As of Ice 3.8, there is no need to call this operation, and its implementation does nothing.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also keepAlive, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('keepAlive', 2, false, [], 0, [], {}, context);
        end

        function returnValue = getAdmin(obj, context)
            %GETADMIN Gets a proxy to the IceGrid admin object. The admin object returned by this operation can only be accessed
            %   by the session.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to the IceGrid admin object. This proxy is never null.
            %       IceGrid.AdminPrx scalar | empty array of IceGrid.AdminPrx
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getAdmin', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = IceGrid.AdminPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getAdminAsync(obj, context)
            %GETADMINASYNC Gets a proxy to the IceGrid admin object. The admin object returned by this operation can only be accessed
            %   by the session.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getAdmin, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.AdminPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getAdmin', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getAdminCallbackTemplate(obj, context)
            %GETADMINCALLBACKTEMPLATE Gets a "template" proxy for admin callback objects. An Admin client uses this proxy to set the category of
            %   its callback objects, and the published endpoints of the object adapter hosting the admin callback objects.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A template proxy. The returned proxy is null when the Admin session was established using Glacier2.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getAdminCallbackTemplate', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = getAdminCallbackTemplateAsync(obj, context)
            %GETADMINCALLBACKTEMPLATEASYNC Gets a "template" proxy for admin callback objects. An Admin client uses this proxy to set the category of
            %   its callback objects, and the published endpoints of the object adapter hosting the admin callback objects.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getAdminCallbackTemplate, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getAdminCallbackTemplate', 2, true, [], 1, @unmarshal, {}, context);
        end

        function setObservers(obj, registryObs, nodeObs, appObs, adptObs, objObs, context)
            %SETOBSERVERS Sets the observer proxies that receive notifications when the state of the registry or nodes changes.
            %
            %   Input Arguments
            %     registryObs - The registry observer.
            %       IceGrid.RegistryObserverPrx scalar | empty array of IceGrid.RegistryObserverPrx
            %     nodeObs - The node observer.
            %       IceGrid.NodeObserverPrx scalar | empty array of IceGrid.NodeObserverPrx
            %     appObs - The application observer.
            %       IceGrid.ApplicationObserverPrx scalar | empty array of IceGrid.ApplicationObserverPrx
            %     adptObs - The adapter observer.
            %       IceGrid.AdapterObserverPrx scalar | empty array of IceGrid.AdapterObserverPrx
            %     objObs - The object observer.
            %       IceGrid.ObjectObserverPrx scalar | empty array of IceGrid.ObjectObserverPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.ObserverAlreadyRegisteredException - Thrown when an observer is already registered with this registry.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                registryObs IceGrid.RegistryObserverPrx {mustBeScalarOrEmpty}
                nodeObs IceGrid.NodeObserverPrx {mustBeScalarOrEmpty}
                appObs IceGrid.ApplicationObserverPrx {mustBeScalarOrEmpty}
                adptObs IceGrid.AdapterObserverPrx {mustBeScalarOrEmpty}
                objObs IceGrid.ObjectObserverPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(registryObs);
            os_.writeProxy(nodeObs);
            os_.writeProxy(appObs);
            os_.writeProxy(adptObs);
            os_.writeProxy(objObs);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setObservers', 2, true, os_, false, IceGrid.AdminSessionPrx.setObservers_ex_, context);
        end

        function future = setObserversAsync(obj, registryObs, nodeObs, appObs, adptObs, objObs, context)
            %SETOBSERVERSASYNC Sets the observer proxies that receive notifications when the state of the registry or nodes changes.
            %
            %   Input Arguments
            %     registryObs - The registry observer.
            %       IceGrid.RegistryObserverPrx scalar | empty array of IceGrid.RegistryObserverPrx
            %     nodeObs - The node observer.
            %       IceGrid.NodeObserverPrx scalar | empty array of IceGrid.NodeObserverPrx
            %     appObs - The application observer.
            %       IceGrid.ApplicationObserverPrx scalar | empty array of IceGrid.ApplicationObserverPrx
            %     adptObs - The adapter observer.
            %       IceGrid.AdapterObserverPrx scalar | empty array of IceGrid.AdapterObserverPrx
            %     objObs - The object observer.
            %       IceGrid.ObjectObserverPrx scalar | empty array of IceGrid.ObjectObserverPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setObservers, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                registryObs IceGrid.RegistryObserverPrx {mustBeScalarOrEmpty}
                nodeObs IceGrid.NodeObserverPrx {mustBeScalarOrEmpty}
                appObs IceGrid.ApplicationObserverPrx {mustBeScalarOrEmpty}
                adptObs IceGrid.AdapterObserverPrx {mustBeScalarOrEmpty}
                objObs IceGrid.ObjectObserverPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(registryObs);
            os_.writeProxy(nodeObs);
            os_.writeProxy(appObs);
            os_.writeProxy(adptObs);
            os_.writeProxy(objObs);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setObservers', 2, true, os_, 0, [], IceGrid.AdminSessionPrx.setObservers_ex_, context);
        end

        function setObserversByIdentity(obj, registryObs, nodeObs, appObs, adptObs, objObs, context)
            %SETOBSERVERSBYIDENTITY Sets the observer identities that receive notifications when the state of the registry or nodes changes.
            %   This operation should be used by clients that are using a bidirectional connection to communicate with the
            %   session.
            %
            %   Input Arguments
            %     registryObs - The registry observer identity.
            %       Ice.Identity scalar
            %     nodeObs - The node observer identity.
            %       Ice.Identity scalar
            %     appObs - The application observer.
            %       Ice.Identity scalar
            %     adptObs - The adapter observer.
            %       Ice.Identity scalar
            %     objObs - The object observer.
            %       Ice.Identity scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.ObserverAlreadyRegisteredException - Thrown when an observer is already registered with this registry.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                registryObs (1, 1) Ice.Identity
                nodeObs (1, 1) Ice.Identity
                appObs (1, 1) Ice.Identity
                adptObs (1, 1) Ice.Identity
                objObs (1, 1) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, registryObs);
            Ice.Identity.ice_write(os_, nodeObs);
            Ice.Identity.ice_write(os_, appObs);
            Ice.Identity.ice_write(os_, adptObs);
            Ice.Identity.ice_write(os_, objObs);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setObserversByIdentity', 2, true, os_, false, IceGrid.AdminSessionPrx.setObserversByIdentity_ex_, context);
        end

        function future = setObserversByIdentityAsync(obj, registryObs, nodeObs, appObs, adptObs, objObs, context)
            %SETOBSERVERSBYIDENTITYASYNC Sets the observer identities that receive notifications when the state of the registry or nodes changes.
            %   This operation should be used by clients that are using a bidirectional connection to communicate with the
            %   session.
            %
            %   Input Arguments
            %     registryObs - The registry observer identity.
            %       Ice.Identity scalar
            %     nodeObs - The node observer identity.
            %       Ice.Identity scalar
            %     appObs - The application observer.
            %       Ice.Identity scalar
            %     adptObs - The adapter observer.
            %       Ice.Identity scalar
            %     objObs - The object observer.
            %       Ice.Identity scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setObserversByIdentity, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                registryObs (1, 1) Ice.Identity
                nodeObs (1, 1) Ice.Identity
                appObs (1, 1) Ice.Identity
                adptObs (1, 1) Ice.Identity
                objObs (1, 1) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, registryObs);
            Ice.Identity.ice_write(os_, nodeObs);
            Ice.Identity.ice_write(os_, appObs);
            Ice.Identity.ice_write(os_, adptObs);
            Ice.Identity.ice_write(os_, objObs);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setObserversByIdentity', 2, true, os_, 0, [], IceGrid.AdminSessionPrx.setObserversByIdentity_ex_, context);
        end

        function returnValue = startUpdate(obj, context)
            %STARTUPDATE Acquires an exclusive lock to start updating the registry applications.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The current serial.
            %       int32 scalar
            %
            %   Exceptions
            %     IceGrid.AccessDeniedException - Thrown when the exclusive lock can't be acquired. This might happen if the
            %       lock is currently acquired by another session.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('startUpdate', 0, true, [], true, IceGrid.AdminSessionPrx.startUpdate_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = startUpdateAsync(obj, context)
            %STARTUPDATEASYNC Acquires an exclusive lock to start updating the registry applications.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also startUpdate, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('startUpdate', 0, true, [], 1, @unmarshal, IceGrid.AdminSessionPrx.startUpdate_ex_, context);
        end

        function finishUpdate(obj, context)
            %FINISHUPDATE Finishes updating the registry and releases the exclusive lock.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.AccessDeniedException - Thrown when the session doesn't hold the exclusive lock.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('finishUpdate', 0, true, [], false, IceGrid.AdminSessionPrx.finishUpdate_ex_, context);
        end

        function future = finishUpdateAsync(obj, context)
            %FINISHUPDATEASYNC Finishes updating the registry and releases the exclusive lock.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also finishUpdate, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('finishUpdate', 0, true, [], 0, [], IceGrid.AdminSessionPrx.finishUpdate_ex_, context);
        end

        function returnValue = getReplicaName(obj, context)
            %GETREPLICANAME Gets the name of the registry replica hosting this session.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The replica name of the registry.
            %       character vector
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getReplicaName', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getReplicaNameAsync(obj, context)
            %GETREPLICANAMEASYNC Gets the name of the registry replica hosting this session.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getReplicaName, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getReplicaName', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = openServerLog(obj, id, path, count, context)
            %OPENSERVERLOG Opens a server log file for reading.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     path - The path of the log file. A log file can be opened only if it's declared in the server or
            %       service deployment descriptor.
            %       character vector
            %     count - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %       Otherwise, the file is read from the last |count| lines.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - An iterator to read the file. This proxy is never null.
            %       IceGrid.FileIteratorPrx scalar | empty array of IceGrid.FileIteratorPrx
            %
            %   Exceptions
            %     IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %     IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %     IceGrid.DeploymentException - Thrown when the server couldn't be deployed on the node.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                id (1, :) char
                path (1, :) char
                count (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeString(path);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('openServerLog', 0, true, os_, true, IceGrid.AdminSessionPrx.openServerLog_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.FileIteratorPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = openServerLogAsync(obj, id, path, count, context)
            %OPENSERVERLOGASYNC Opens a server log file for reading.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     path - The path of the log file. A log file can be opened only if it's declared in the server or
            %       service deployment descriptor.
            %       character vector
            %     count - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %       Otherwise, the file is read from the last |count| lines.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also openServerLog, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                id (1, :) char
                path (1, :) char
                count (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeString(path);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.FileIteratorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('openServerLog', 0, true, os_, 1, @unmarshal, IceGrid.AdminSessionPrx.openServerLog_ex_, context);
        end

        function returnValue = openServerStdErr(obj, id, count, context)
            %OPENSERVERSTDERR Opens a server stderr file for reading.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     count - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %       Otherwise, the file is read from the last |count| lines.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - An iterator to read the file. This proxy is never null.
            %       IceGrid.FileIteratorPrx scalar | empty array of IceGrid.FileIteratorPrx
            %
            %   Exceptions
            %     IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %     IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %     IceGrid.DeploymentException - Thrown when the server couldn't be deployed on the node.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                id (1, :) char
                count (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('openServerStdErr', 0, true, os_, true, IceGrid.AdminSessionPrx.openServerStdErr_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.FileIteratorPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = openServerStdErrAsync(obj, id, count, context)
            %OPENSERVERSTDERRASYNC Opens a server stderr file for reading.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     count - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %       Otherwise, the file is read from the last |count| lines.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also openServerStdErr, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                id (1, :) char
                count (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.FileIteratorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('openServerStdErr', 0, true, os_, 1, @unmarshal, IceGrid.AdminSessionPrx.openServerStdErr_ex_, context);
        end

        function returnValue = openServerStdOut(obj, id, count, context)
            %OPENSERVERSTDOUT Opens a server stdout file for reading.
            %
            %   Input Arguments
            %     id - The server id.
            %       character vector
            %     count - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %       Otherwise, the file is read from the last |count| lines.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - An iterator to read the file. This proxy is never null.
            %       IceGrid.FileIteratorPrx scalar | empty array of IceGrid.FileIteratorPrx
            %
            %   Exceptions
            %     IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %     IceGrid.ServerNotExistException - Thrown when the server doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            %     IceGrid.DeploymentException - Thrown when the server couldn't be deployed on the node.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                id (1, :) char
                count (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('openServerStdOut', 0, true, os_, true, IceGrid.AdminSessionPrx.openServerStdOut_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.FileIteratorPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = openServerStdOutAsync(obj, id, count, context)
            %OPENSERVERSTDOUTASYNC Opens a server stdout file for reading.
            %
            %   Input Arguments
            %     id - The server id.
            %       character vector
            %     count - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %       Otherwise, the file is read from the last |count| lines.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also openServerStdOut, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                id (1, :) char
                count (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.FileIteratorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('openServerStdOut', 0, true, os_, 1, @unmarshal, IceGrid.AdminSessionPrx.openServerStdOut_ex_, context);
        end

        function returnValue = openNodeStdErr(obj, name, count, context)
            %OPENNODESTDERR Opens a node stderr file for reading.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     count - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %       Otherwise, the file is read from the last |count| lines.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - An iterator to read the file. This proxy is never null.
            %       IceGrid.FileIteratorPrx scalar | empty array of IceGrid.FileIteratorPrx
            %
            %   Exceptions
            %     IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %     IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                name (1, :) char
                count (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('openNodeStdErr', 0, true, os_, true, IceGrid.AdminSessionPrx.openNodeStdErr_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.FileIteratorPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = openNodeStdErrAsync(obj, name, count, context)
            %OPENNODESTDERRASYNC Opens a node stderr file for reading.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     count - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %       Otherwise, the file is read from the last |count| lines.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also openNodeStdErr, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                name (1, :) char
                count (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.FileIteratorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('openNodeStdErr', 0, true, os_, 1, @unmarshal, IceGrid.AdminSessionPrx.openNodeStdErr_ex_, context);
        end

        function returnValue = openNodeStdOut(obj, name, count, context)
            %OPENNODESTDOUT Opens a node stdout file for reading.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     count - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %       Otherwise, the file is read from the last |count| lines.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - An iterator to read the file. This proxy is never null.
            %       IceGrid.FileIteratorPrx scalar | empty array of IceGrid.FileIteratorPrx
            %
            %   Exceptions
            %     IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %     IceGrid.NodeNotExistException - Thrown when the node doesn't exist.
            %     IceGrid.NodeUnreachableException - Thrown when the node is unreachable.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                name (1, :) char
                count (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('openNodeStdOut', 0, true, os_, true, IceGrid.AdminSessionPrx.openNodeStdOut_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.FileIteratorPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = openNodeStdOutAsync(obj, name, count, context)
            %OPENNODESTDOUTASYNC Opens a node stdout file for reading.
            %
            %   Input Arguments
            %     name - The node name.
            %       character vector
            %     count - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %       Otherwise, the file is read from the last |count| lines.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also openNodeStdOut, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                name (1, :) char
                count (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.FileIteratorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('openNodeStdOut', 0, true, os_, 1, @unmarshal, IceGrid.AdminSessionPrx.openNodeStdOut_ex_, context);
        end

        function returnValue = openRegistryStdErr(obj, name, count, context)
            %OPENREGISTRYSTDERR Opens a registry stderr file for reading.
            %
            %   Input Arguments
            %     name - The registry name.
            %       character vector
            %     count - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %       Otherwise, the file is read from the last |count| lines.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - An iterator to read the file. This proxy is never null.
            %       IceGrid.FileIteratorPrx scalar | empty array of IceGrid.FileIteratorPrx
            %
            %   Exceptions
            %     IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %     IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            %     IceGrid.RegistryUnreachableException - Thrown when the registry is unreachable.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                name (1, :) char
                count (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('openRegistryStdErr', 0, true, os_, true, IceGrid.AdminSessionPrx.openRegistryStdErr_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.FileIteratorPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = openRegistryStdErrAsync(obj, name, count, context)
            %OPENREGISTRYSTDERRASYNC Opens a registry stderr file for reading.
            %
            %   Input Arguments
            %     name - The registry name.
            %       character vector
            %     count - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %       Otherwise, the file is read from the last |count| lines.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also openRegistryStdErr, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                name (1, :) char
                count (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.FileIteratorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('openRegistryStdErr', 0, true, os_, 1, @unmarshal, IceGrid.AdminSessionPrx.openRegistryStdErr_ex_, context);
        end

        function returnValue = openRegistryStdOut(obj, name, count, context)
            %OPENREGISTRYSTDOUT Opens a registry stdout file for reading.
            %
            %   Input Arguments
            %     name - The registry name.
            %       character vector
            %     count - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %       Otherwise, the file is read from the last |count| lines.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - An iterator to read the file. This proxy is never null.
            %       IceGrid.FileIteratorPrx scalar | empty array of IceGrid.FileIteratorPrx
            %
            %   Exceptions
            %     IceGrid.FileNotAvailableException - Thrown when the file can't be read.
            %     IceGrid.RegistryNotExistException - Thrown when the registry doesn't exist.
            %     IceGrid.RegistryUnreachableException - Thrown when the registry is unreachable.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                name (1, :) char
                count (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('openRegistryStdOut', 0, true, os_, true, IceGrid.AdminSessionPrx.openRegistryStdOut_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.FileIteratorPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = openRegistryStdOutAsync(obj, name, count, context)
            %OPENREGISTRYSTDOUTASYNC Opens a registry stdout file for reading.
            %
            %   Input Arguments
            %     name - The registry name.
            %       character vector
            %     count - Specifies where to start reading the file. If negative, the file is read from the beginning.
            %       Otherwise, the file is read from the last |count| lines.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also openRegistryStdOut, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdminSessionPrx
                name (1, :) char
                count (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.FileIteratorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('openRegistryStdOut', 0, true, os_, 1, @unmarshal, IceGrid.AdminSessionPrx.openRegistryStdOut_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::AdminSession';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.AdminSessionPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::AdminSession.
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
            %     r - A IceGrid.AdminSessionPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::AdminSession; otherwise, an empty array of IceGrid.AdminSessionPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.AdminSessionPrx.ice_staticId(), 'IceGrid.AdminSessionPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.AdminSessionPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.AdminSessionPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.AdminSessionPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
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
