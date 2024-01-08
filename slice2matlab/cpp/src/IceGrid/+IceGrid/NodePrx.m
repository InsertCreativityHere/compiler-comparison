% NodePrx   Summary of NodePrx
%
% NodePrx Methods:
%   loadServer - Load the given server.
%   loadServerAsync - Load the given server.
%   loadServerWithoutRestart - Load the given server and ensure the server won't be restarted.
%   loadServerWithoutRestartAsync - Load the given server and ensure the server won't be restarted.
%   destroyServer - Destroy the given server.
%   destroyServerAsync - Destroy the given server.
%   destroyServerWithoutRestart - Destroy the server if it's not active.
%   destroyServerWithoutRestartAsync - Destroy the server if it's not active.
%   patch - Patch application and server distributions.
%   patchAsync - Patch application and server distributions.
%   registerWithReplica - Establish a session to the given replica, this method only returns once the registration was attempted (unlike replicaAdded below).
%   registerWithReplicaAsync - Establish a session to the given replica, this method only returns once the registration was attempted (unlike replicaAdded below).
%   getName - Get the node name.
%   getNameAsync - Get the node name.
%   getHostname - Get the node hostname.
%   getHostnameAsync - Get the node hostname.
%   getLoad - Get the node load.
%   getLoadAsync - Get the node load.
%   getProcessorSocketCount - Get the number of processor sockets for the machine where this node is running.
%   getProcessorSocketCountAsync - Get the number of processor sockets for the machine where this node is running.
%   shutdown - Shutdown the node.
%   shutdownAsync - Shutdown the node.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.7.10

classdef NodePrx < IceGrid.FileReaderPrx & IceGrid.ReplicaObserverPrx
    methods
        function [result, adapters, actTimeout, deactTimeout] = loadServer(obj, svr, replicaName, varargin)
            % loadServer   Load the given server. If the server resources weren't already created (database environment directories,
            % property files, etc), they will be created.
            %
            % Parameters:
            %   svr (IceGrid.InternalServerDescriptor)
            %   replicaName (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (IceGrid.ServerPrx)
            %   adapters (containers.Map)
            %   actTimeout (int32)
            %   deactTimeout (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(svr);
            os_.writeString(replicaName);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('loadServer', 2, true, os_, true, IceGrid.NodePrx.loadServer_ex_, varargin{:});
            is_.startEncapsulation();
            adapters = IceGrid.AdapterPrxDict.read(is_);
            actTimeout = is_.readInt();
            deactTimeout = is_.readInt();
            result = IceGrid.ServerPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = loadServerAsync(obj, svr, replicaName, varargin)
            % loadServerAsync   Load the given server. If the server resources weren't already created (database environment directories,
            % property files, etc), they will be created.
            %
            % Parameters:
            %   svr (IceGrid.InternalServerDescriptor)
            %   replicaName (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(svr);
            os_.writeString(replicaName);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                adapters = IceGrid.AdapterPrxDict.read(is_);
                actTimeout = is_.readInt();
                deactTimeout = is_.readInt();
                result = IceGrid.ServerPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = adapters;
                varargout{3} = actTimeout;
                varargout{4} = deactTimeout;
            end
            r_ = obj.iceInvokeAsync('loadServer', 2, true, os_, 4, @unmarshal, IceGrid.NodePrx.loadServer_ex_, varargin{:});
        end
        function [result, adapters, actTimeout, deactTimeout] = loadServerWithoutRestart(obj, svr, replicaName, varargin)
            % loadServerWithoutRestart   Load the given server and ensure the server won't be restarted. If the server resources weren't already created
            % (database environment directories, property files, etc), they will be created. If the server can't be updated
            % without a restart, a DeploymentException is raised.
            %
            % Parameters:
            %   svr (IceGrid.InternalServerDescriptor)
            %   replicaName (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (IceGrid.ServerPrx)
            %   adapters (containers.Map)
            %   actTimeout (int32)
            %   deactTimeout (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(svr);
            os_.writeString(replicaName);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('loadServerWithoutRestart', 2, true, os_, true, IceGrid.NodePrx.loadServerWithoutRestart_ex_, varargin{:});
            is_.startEncapsulation();
            adapters = IceGrid.AdapterPrxDict.read(is_);
            actTimeout = is_.readInt();
            deactTimeout = is_.readInt();
            result = IceGrid.ServerPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = loadServerWithoutRestartAsync(obj, svr, replicaName, varargin)
            % loadServerWithoutRestartAsync   Load the given server and ensure the server won't be restarted. If the server resources weren't already created
            % (database environment directories, property files, etc), they will be created. If the server can't be updated
            % without a restart, a DeploymentException is raised.
            %
            % Parameters:
            %   svr (IceGrid.InternalServerDescriptor)
            %   replicaName (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(svr);
            os_.writeString(replicaName);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                adapters = IceGrid.AdapterPrxDict.read(is_);
                actTimeout = is_.readInt();
                deactTimeout = is_.readInt();
                result = IceGrid.ServerPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = adapters;
                varargout{3} = actTimeout;
                varargout{4} = deactTimeout;
            end
            r_ = obj.iceInvokeAsync('loadServerWithoutRestart', 2, true, os_, 4, @unmarshal, IceGrid.NodePrx.loadServerWithoutRestart_ex_, varargin{:});
        end
        function destroyServer(obj, name, uuid, revision, replicaName, varargin)
            % destroyServer   Destroy the given server.
            %
            % Parameters:
            %   name (char)
            %   uuid (char)
            %   revision (int32)
            %   replicaName (char)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeString(uuid);
            os_.writeInt(revision);
            os_.writeString(replicaName);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('destroyServer', 2, true, os_, false, IceGrid.NodePrx.destroyServer_ex_, varargin{:});
        end
        function r_ = destroyServerAsync(obj, name, uuid, revision, replicaName, varargin)
            % destroyServerAsync   Destroy the given server.
            %
            % Parameters:
            %   name (char)
            %   uuid (char)
            %   revision (int32)
            %   replicaName (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeString(uuid);
            os_.writeInt(revision);
            os_.writeString(replicaName);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('destroyServer', 2, true, os_, 0, [], IceGrid.NodePrx.destroyServer_ex_, varargin{:});
        end
        function destroyServerWithoutRestart(obj, name, uuid, revision, replicaName, varargin)
            % destroyServerWithoutRestart   Destroy the server if it's not active.
            %
            % Parameters:
            %   name (char)
            %   uuid (char)
            %   revision (int32)
            %   replicaName (char)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeString(uuid);
            os_.writeInt(revision);
            os_.writeString(replicaName);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('destroyServerWithoutRestart', 2, true, os_, false, IceGrid.NodePrx.destroyServerWithoutRestart_ex_, varargin{:});
        end
        function r_ = destroyServerWithoutRestartAsync(obj, name, uuid, revision, replicaName, varargin)
            % destroyServerWithoutRestartAsync   Destroy the server if it's not active.
            %
            % Parameters:
            %   name (char)
            %   uuid (char)
            %   revision (int32)
            %   replicaName (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeString(uuid);
            os_.writeInt(revision);
            os_.writeString(replicaName);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('destroyServerWithoutRestart', 2, true, os_, 0, [], IceGrid.NodePrx.destroyServerWithoutRestart_ex_, varargin{:});
        end
        function patch(obj, feedback, application, server, appDistrib, shutdown, varargin)
            % patch   Patch application and server distributions. If some servers using a distribution directory to patch are active,
            % this method will raise a PatchException unless shutdown is set to true. In which case the servers will be
            % shutdown.
            %
            % Parameters:
            %   feedback (IceGrid.PatcherFeedbackPrx)
            %   application (char)
            %   server (char)
            %   appDistrib (IceGrid.InternalDistributionDescriptor)
            %   shutdown (logical)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(feedback);
            os_.writeString(application);
            os_.writeString(server);
            os_.writeValue(appDistrib);
            os_.writeBool(shutdown);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('patch', 2, false, os_, false, {}, varargin{:});
        end
        function r_ = patchAsync(obj, feedback, application, server, appDistrib, shutdown, varargin)
            % patchAsync   Patch application and server distributions. If some servers using a distribution directory to patch are active,
            % this method will raise a PatchException unless shutdown is set to true. In which case the servers will be
            % shutdown.
            %
            % Parameters:
            %   feedback (IceGrid.PatcherFeedbackPrx)
            %   application (char)
            %   server (char)
            %   appDistrib (IceGrid.InternalDistributionDescriptor)
            %   shutdown (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(feedback);
            os_.writeString(application);
            os_.writeString(server);
            os_.writeValue(appDistrib);
            os_.writeBool(shutdown);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('patch', 2, false, os_, 0, [], {}, varargin{:});
        end
        function registerWithReplica(obj, replica, varargin)
            % registerWithReplica   Establish a session to the given replica, this method only returns once the registration was attempted (unlike
            % replicaAdded below).
            %
            % Parameters:
            %   replica (IceGrid.InternalRegistryPrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(replica);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('registerWithReplica', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = registerWithReplicaAsync(obj, replica, varargin)
            % registerWithReplicaAsync   Establish a session to the given replica, this method only returns once the registration was attempted (unlike
            % replicaAdded below).
            %
            % Parameters:
            %   replica (IceGrid.InternalRegistryPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(replica);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('registerWithReplica', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = getName(obj, varargin)
            % getName   Get the node name.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char)
            
            is_ = obj.iceInvoke('getName', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getNameAsync(obj, varargin)
            % getNameAsync   Get the node name.
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
            r_ = obj.iceInvokeAsync('getName', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getHostname(obj, varargin)
            % getHostname   Get the node hostname.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char)
            
            is_ = obj.iceInvoke('getHostname', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getHostnameAsync(obj, varargin)
            % getHostnameAsync   Get the node hostname.
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
            r_ = obj.iceInvokeAsync('getHostname', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getLoad(obj, varargin)
            % getLoad   Get the node load.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.LoadInfo)
            
            is_ = obj.iceInvoke('getLoad', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.LoadInfo.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getLoadAsync(obj, varargin)
            % getLoadAsync   Get the node load.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.LoadInfo.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getLoad', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getProcessorSocketCount(obj, varargin)
            % getProcessorSocketCount   Get the number of processor sockets for the machine where this node is running.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            is_ = obj.iceInvoke('getProcessorSocketCount', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getProcessorSocketCountAsync(obj, varargin)
            % getProcessorSocketCountAsync   Get the number of processor sockets for the machine where this node is running.
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
            r_ = obj.iceInvokeAsync('getProcessorSocketCount', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function shutdown(obj, varargin)
            % shutdown   Shutdown the node.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('shutdown', 1, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            % shutdownAsync   Shutdown the node.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('shutdown', 1, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::Node';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.NodePrx');
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
            % Returns (IceGrid.NodePrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.NodePrx.ice_staticId(), 'IceGrid.NodePrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.NodePrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.NodePrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = NodePrx(communicator, encoding, impl, bytes)
            obj = obj@IceGrid.FileReaderPrx(communicator, encoding, impl, bytes);
            obj = obj@IceGrid.ReplicaObserverPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        loadServer_ex_ = { 'IceGrid.DeploymentException' }
        loadServerWithoutRestart_ex_ = { 'IceGrid.DeploymentException' }
        destroyServer_ex_ = { 'IceGrid.DeploymentException' }
        destroyServerWithoutRestart_ex_ = { 'IceGrid.DeploymentException' }
    end
end
