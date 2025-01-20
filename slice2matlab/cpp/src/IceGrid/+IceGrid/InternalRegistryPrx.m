
% Copyright (c) ZeroC, Inc.
% Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

classdef InternalRegistryPrx < IceGrid.FileReaderPrx
    methods
        function result = registerNode(obj, info, prx, loadInf, varargin)
            % registerNode   Register a node with the registry. If a node with the same name is already registered,
            % registerNode overrides the existing registration only when the previously
            % registered node is not active.
            %
            % Parameters:
            %   info (IceGrid.InternalNodeInfo) - Some information on the node.
            %   prx (IceGrid.NodePrx) - The proxy of the node.
            %   loadInf (IceGrid.LoadInfo) - The load information of the node.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.NodeSessionPrx) - The node session proxy.
            %
            % Exceptions:
            %   IceGrid.NodeActiveException - Raised if the node is already registered and currently active.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(info);
            os_.writeProxy(prx);
            IceGrid.LoadInfo.ice_write(os_, loadInf);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('registerNode', 0, true, os_, true, IceGrid.InternalRegistryPrx.registerNode_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.NodeSessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = registerNodeAsync(obj, info, prx, loadInf, varargin)
            % registerNodeAsync   Register a node with the registry. If a node with the same name is already registered,
            % registerNode overrides the existing registration only when the previously
            % registered node is not active.
            %
            % Parameters:
            %   info (IceGrid.InternalNodeInfo) - Some information on the node.
            %   prx (IceGrid.NodePrx) - The proxy of the node.
            %   loadInf (IceGrid.LoadInfo) - The load information of the node.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.NodeActiveException - Raised if the node is already registered and currently active.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(info);
            os_.writeProxy(prx);
            IceGrid.LoadInfo.ice_write(os_, loadInf);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.NodeSessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('registerNode', 0, true, os_, 1, @unmarshal, IceGrid.InternalRegistryPrx.registerNode_ex_, varargin{:});
        end
        function result = registerReplica(obj, info, prx, varargin)
            % registerReplica   Register a replica with the registry. If a replica with the same name is already registered,
            % registerReplica overrides the existing registration only when the previously
            % registered node is not active.
            %
            % Parameters:
            %   info (IceGrid.InternalReplicaInfo) - Some information on the replica.
            %   prx (IceGrid.InternalRegistryPrx) - The proxy of the replica.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ReplicaSessionPrx) - The replica session proxy.
            %
            % Exceptions:
            %   IceGrid.ReplicaActiveException - Raised if the replica is already registered and currently active.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(info);
            os_.writeProxy(prx);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('registerReplica', 0, true, os_, true, IceGrid.InternalRegistryPrx.registerReplica_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ReplicaSessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = registerReplicaAsync(obj, info, prx, varargin)
            % registerReplicaAsync   Register a replica with the registry. If a replica with the same name is already registered,
            % registerReplica overrides the existing registration only when the previously
            % registered node is not active.
            %
            % Parameters:
            %   info (IceGrid.InternalReplicaInfo) - Some information on the replica.
            %   prx (IceGrid.InternalRegistryPrx) - The proxy of the replica.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.ReplicaActiveException - Raised if the replica is already registered and currently active.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(info);
            os_.writeProxy(prx);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.ReplicaSessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('registerReplica', 0, true, os_, 1, @unmarshal, IceGrid.InternalRegistryPrx.registerReplica_ex_, varargin{:});
        end
        function registerWithReplica(obj, prx, varargin)
            % registerWithReplica   Create a session with the given registry replica. This method returns only once the session creation has been
            % attempted.
            %
            % Parameters:
            %   prx (IceGrid.InternalRegistryPrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(prx);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('registerWithReplica', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = registerWithReplicaAsync(obj, prx, varargin)
            % registerWithReplicaAsync   Create a session with the given registry replica. This method returns only once the session creation has been
            % attempted.
            %
            % Parameters:
            %   prx (IceGrid.InternalRegistryPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(prx);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('registerWithReplica', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = getNodes(obj, varargin)
            % getNodes   Return the proxies of all the nodes known by this registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.NodePrxSeq)
            
            is_ = obj.iceInvoke('getNodes', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.NodePrxSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getNodesAsync(obj, varargin)
            % getNodesAsync   Return the proxies of all the nodes known by this registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.NodePrxSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getNodes', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getReplicas(obj, varargin)
            % getReplicas   Return the proxies of all the registry replicas known by this registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.InternalRegistryPrxSeq)
            
            is_ = obj.iceInvoke('getReplicas', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.InternalRegistryPrxSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getReplicasAsync(obj, varargin)
            % getReplicasAsync   Return the proxies of all the registry replicas known by this registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.InternalRegistryPrxSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getReplicas', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function [result, serial] = getApplications(obj, varargin)
            % getApplications   Return applications, adapters, objects from this replica.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (IceGrid.ApplicationInfoSeq)
            %   serial (int64)
            
            is_ = obj.iceInvoke('getApplications', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            serial = is_.readLong();
            result = IceGrid.ApplicationInfoSeq.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            result = IceGrid.ApplicationInfoSeq.convert(result);
        end
        function r_ = getApplicationsAsync(obj, varargin)
            % getApplicationsAsync   Return applications, adapters, objects from this replica.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                serial = is_.readLong();
                result = IceGrid.ApplicationInfoSeq.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = IceGrid.ApplicationInfoSeq.convert(result);
                varargout{2} = serial;
            end
            r_ = obj.iceInvokeAsync('getApplications', 2, true, [], 2, @unmarshal, {}, varargin{:});
        end
        function [result, serial] = getAdapters(obj, varargin)
            is_ = obj.iceInvoke('getAdapters', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            serial = is_.readLong();
            result = IceGrid.AdapterInfoSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getAdaptersAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                serial = is_.readLong();
                result = IceGrid.AdapterInfoSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = serial;
            end
            r_ = obj.iceInvokeAsync('getAdapters', 2, true, [], 2, @unmarshal, {}, varargin{:});
        end
        function [result, serial] = getObjects(obj, varargin)
            is_ = obj.iceInvoke('getObjects', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            serial = is_.readLong();
            result = IceGrid.ObjectInfoSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getObjectsAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                serial = is_.readLong();
                result = IceGrid.ObjectInfoSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = serial;
            end
            r_ = obj.iceInvokeAsync('getObjects', 2, true, [], 2, @unmarshal, {}, varargin{:});
        end
        function shutdown(obj, varargin)
            % shutdown   Shutdown this registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('shutdown', 2, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            % shutdownAsync   Shutdown this registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('shutdown', 2, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::InternalRegistry';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.InternalRegistryPrx');
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
            % Returns (IceGrid.InternalRegistryPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.InternalRegistryPrx.ice_staticId(), 'IceGrid.InternalRegistryPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.InternalRegistryPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.InternalRegistryPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        registerNode_ex_ = { 'IceGrid.NodeActiveException', 'IceGrid.PermissionDeniedException' }
        registerReplica_ex_ = { 'IceGrid.ReplicaActiveException', 'IceGrid.PermissionDeniedException' }
    end
end
