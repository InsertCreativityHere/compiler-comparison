classdef NodePrx < IceGrid.FileReaderPrx & IceGrid.ReplicaObserverPrx
    %NODEPRX
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.NodePrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   NodePrx Methods:
    %     destroyServer - Destroy the given server.
    %     destroyServerAsync - An asynchronous destroyServer.
    %     destroyServerWithoutRestart - Destroy the server if it's not active.
    %     destroyServerWithoutRestartAsync - An asynchronous destroyServerWithoutRestart.
    %     getHostname - Get the node hostname.
    %     getHostnameAsync - An asynchronous getHostname.
    %     getLoad - Get the node load.
    %     getLoadAsync - An asynchronous getLoad.
    %     getName - Get the node name.
    %     getNameAsync - An asynchronous getName.
    %     getProcessorSocketCount - Get the number of processor sockets for the machine where this node is running.
    %     getProcessorSocketCountAsync - An asynchronous getProcessorSocketCount.
    %     loadServer - Load the given server.
    %     loadServerAsync - An asynchronous loadServer.
    %     loadServerWithoutRestart - Load the given server and ensure the server won't be restarted.
    %     loadServerWithoutRestartAsync - An asynchronous loadServerWithoutRestart.
    %     registerWithReplica - Establish a session to the given replica, this method only returns once the registration was attempted (unlike replicaAdded below).
    %     registerWithReplicaAsync - An asynchronous registerWithReplica.
    %     shutdown - Shutdown the node.
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   NodePrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::Node.
    %     uncheckedCast - Creates a NodePrx from another proxy without any validation.
    %
    %   Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [returnValue, adapters, activateTimeout, deactivateTimeout] = loadServer(obj, svr, replicaName, context)
            %LOADSERVER Load the given server. If the server resources weren't already created (database environment directories,
            %   property files, etc), they will be created. The returned proxy is never null.
            %
            %   Input Arguments
            %     svr
            %       IceGrid.InternalServerDescriptor scalar | empty array of IceGrid.InternalServerDescriptor
            %     replicaName
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       IceGrid.ServerPrx scalar | empty array of IceGrid.ServerPrx
            %     adapters
            %       string, cell) scalar
            %     activateTimeout
            %       int32 scalar
            %     deactivateTimeout
            %       int32 scalar
            %
            %   Exceptions
            %     IceGrid.DeploymentException
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                svr IceGrid.InternalServerDescriptor {mustBeScalarOrEmpty}
                replicaName (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(svr);
            os_.writeString(replicaName);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('loadServer', 2, true, os_, true, IceGrid.NodePrx.loadServer_ex_, context);
            is_.startEncapsulation();
            adapters = IceGrid.AdapterPrxDict.read(is_);
            activateTimeout = is_.readInt();
            deactivateTimeout = is_.readInt();
            returnValue = IceGrid.ServerPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = loadServerAsync(obj, svr, replicaName, context)
            %LOADSERVERASYNC Load the given server. If the server resources weren't already created (database environment directories,
            %   property files, etc), they will be created. The returned proxy is never null.
            %
            %   Input Arguments
            %     svr
            %       IceGrid.InternalServerDescriptor scalar | empty array of IceGrid.InternalServerDescriptor
            %     replicaName
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also loadServer, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                svr IceGrid.InternalServerDescriptor {mustBeScalarOrEmpty}
                replicaName (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(svr);
            os_.writeString(replicaName);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                adapters = IceGrid.AdapterPrxDict.read(is_);
                activateTimeout = is_.readInt();
                deactivateTimeout = is_.readInt();
                returnValue = IceGrid.ServerPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = adapters;
                varargout{3} = activateTimeout;
                varargout{4} = deactivateTimeout;
            end
            future = obj.iceInvokeAsync('loadServer', 2, true, os_, 4, @unmarshal, IceGrid.NodePrx.loadServer_ex_, context);
        end

        function [returnValue, adapters, activateTimeout, deactivateTimeout] = loadServerWithoutRestart(obj, svr, replicaName, context)
            %LOADSERVERWITHOUTRESTART Load the given server and ensure the server won't be restarted. If the server resources weren't already created
            %   (database environment directories, property files, etc), they will be created. If the server can't be updated
            %   without a restart, a DeploymentException is raised. The returned proxy is never null.
            %
            %   Input Arguments
            %     svr
            %       IceGrid.InternalServerDescriptor scalar | empty array of IceGrid.InternalServerDescriptor
            %     replicaName
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       IceGrid.ServerPrx scalar | empty array of IceGrid.ServerPrx
            %     adapters
            %       string, cell) scalar
            %     activateTimeout
            %       int32 scalar
            %     deactivateTimeout
            %       int32 scalar
            %
            %   Exceptions
            %     IceGrid.DeploymentException
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                svr IceGrid.InternalServerDescriptor {mustBeScalarOrEmpty}
                replicaName (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(svr);
            os_.writeString(replicaName);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('loadServerWithoutRestart', 2, true, os_, true, IceGrid.NodePrx.loadServerWithoutRestart_ex_, context);
            is_.startEncapsulation();
            adapters = IceGrid.AdapterPrxDict.read(is_);
            activateTimeout = is_.readInt();
            deactivateTimeout = is_.readInt();
            returnValue = IceGrid.ServerPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = loadServerWithoutRestartAsync(obj, svr, replicaName, context)
            %LOADSERVERWITHOUTRESTARTASYNC Load the given server and ensure the server won't be restarted. If the server resources weren't already created
            %   (database environment directories, property files, etc), they will be created. If the server can't be updated
            %   without a restart, a DeploymentException is raised. The returned proxy is never null.
            %
            %   Input Arguments
            %     svr
            %       IceGrid.InternalServerDescriptor scalar | empty array of IceGrid.InternalServerDescriptor
            %     replicaName
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also loadServerWithoutRestart, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                svr IceGrid.InternalServerDescriptor {mustBeScalarOrEmpty}
                replicaName (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(svr);
            os_.writeString(replicaName);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                adapters = IceGrid.AdapterPrxDict.read(is_);
                activateTimeout = is_.readInt();
                deactivateTimeout = is_.readInt();
                returnValue = IceGrid.ServerPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = adapters;
                varargout{3} = activateTimeout;
                varargout{4} = deactivateTimeout;
            end
            future = obj.iceInvokeAsync('loadServerWithoutRestart', 2, true, os_, 4, @unmarshal, IceGrid.NodePrx.loadServerWithoutRestart_ex_, context);
        end

        function destroyServer(obj, name, uuid, revision, replicaName, context)
            %DESTROYSERVER Destroy the given server.
            %
            %   Input Arguments
            %     name
            %       character vector
            %     uuid
            %       character vector
            %     revision
            %       int32 scalar
            %     replicaName
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.DeploymentException
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                name (1, :) char
                uuid (1, :) char
                revision (1, 1) int32
                replicaName (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeString(uuid);
            os_.writeInt(revision);
            os_.writeString(replicaName);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('destroyServer', 2, true, os_, false, IceGrid.NodePrx.destroyServer_ex_, context);
        end

        function future = destroyServerAsync(obj, name, uuid, revision, replicaName, context)
            %DESTROYSERVERASYNC Destroy the given server.
            %
            %   Input Arguments
            %     name
            %       character vector
            %     uuid
            %       character vector
            %     revision
            %       int32 scalar
            %     replicaName
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also destroyServer, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                name (1, :) char
                uuid (1, :) char
                revision (1, 1) int32
                replicaName (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeString(uuid);
            os_.writeInt(revision);
            os_.writeString(replicaName);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('destroyServer', 2, true, os_, 0, [], IceGrid.NodePrx.destroyServer_ex_, context);
        end

        function destroyServerWithoutRestart(obj, name, uuid, revision, replicaName, context)
            %DESTROYSERVERWITHOUTRESTART Destroy the server if it's not active.
            %
            %   Input Arguments
            %     name
            %       character vector
            %     uuid
            %       character vector
            %     revision
            %       int32 scalar
            %     replicaName
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.DeploymentException
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                name (1, :) char
                uuid (1, :) char
                revision (1, 1) int32
                replicaName (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeString(uuid);
            os_.writeInt(revision);
            os_.writeString(replicaName);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('destroyServerWithoutRestart', 2, true, os_, false, IceGrid.NodePrx.destroyServerWithoutRestart_ex_, context);
        end

        function future = destroyServerWithoutRestartAsync(obj, name, uuid, revision, replicaName, context)
            %DESTROYSERVERWITHOUTRESTARTASYNC Destroy the server if it's not active.
            %
            %   Input Arguments
            %     name
            %       character vector
            %     uuid
            %       character vector
            %     revision
            %       int32 scalar
            %     replicaName
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also destroyServerWithoutRestart, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                name (1, :) char
                uuid (1, :) char
                revision (1, 1) int32
                replicaName (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeString(uuid);
            os_.writeInt(revision);
            os_.writeString(replicaName);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('destroyServerWithoutRestart', 2, true, os_, 0, [], IceGrid.NodePrx.destroyServerWithoutRestart_ex_, context);
        end

        function registerWithReplica(obj, replica, context)
            %REGISTERWITHREPLICA Establish a session to the given replica, this method only returns once the registration was attempted (unlike
            %   replicaAdded below).
            %
            %   Input Arguments
            %     replica
            %       IceGrid.InternalRegistryPrx scalar | empty array of IceGrid.InternalRegistryPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                replica IceGrid.InternalRegistryPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(replica);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('registerWithReplica', 0, false, os_, false, {}, context);
        end

        function future = registerWithReplicaAsync(obj, replica, context)
            %REGISTERWITHREPLICAASYNC Establish a session to the given replica, this method only returns once the registration was attempted (unlike
            %   replicaAdded below).
            %
            %   Input Arguments
            %     replica
            %       IceGrid.InternalRegistryPrx scalar | empty array of IceGrid.InternalRegistryPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also registerWithReplica, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                replica IceGrid.InternalRegistryPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(replica);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('registerWithReplica', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = getName(obj, context)
            %GETNAME Get the node name.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getName', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getNameAsync(obj, context)
            %GETNAMEASYNC Get the node name.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getName, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getName', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getHostname(obj, context)
            %GETHOSTNAME Get the node hostname.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getHostname', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getHostnameAsync(obj, context)
            %GETHOSTNAMEASYNC Get the node hostname.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getHostname, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getHostname', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getLoad(obj, context)
            %GETLOAD Get the node load.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       IceGrid.LoadInfo scalar
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getLoad', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = IceGrid.LoadInfo.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getLoadAsync(obj, context)
            %GETLOADASYNC Get the node load.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getLoad, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.LoadInfo.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getLoad', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getProcessorSocketCount(obj, context)
            %GETPROCESSORSOCKETCOUNT Get the number of processor sockets for the machine where this node is running.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getProcessorSocketCount', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getProcessorSocketCountAsync(obj, context)
            %GETPROCESSORSOCKETCOUNTASYNC Get the number of processor sockets for the machine where this node is running.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getProcessorSocketCount, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getProcessorSocketCount', 2, true, [], 1, @unmarshal, {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN Shutdown the node.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.NodePrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('shutdown', 2, false, [], false, {}, context);
        end

        function future = shutdownAsync(obj, context)
            %SHUTDOWNASYNC Shutdown the node.
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
                obj (1, 1) IceGrid.NodePrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 2, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::Node';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.NodePrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::Node.
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
            %     r - A IceGrid.NodePrx scalar if the target object implements Slice interface 
            %       ::IceGrid::Node; otherwise, an empty array of IceGrid.NodePrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.NodePrx.ice_staticId(), 'IceGrid.NodePrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.NodePrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.NodePrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.NodePrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        loadServer_ex_ = { 'IceGrid.DeploymentException' }
        loadServerWithoutRestart_ex_ = { 'IceGrid.DeploymentException' }
        destroyServer_ex_ = { 'IceGrid.DeploymentException' }
        destroyServerWithoutRestart_ex_ = { 'IceGrid.DeploymentException' }
    end
end
