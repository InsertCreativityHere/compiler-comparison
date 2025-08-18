classdef InternalRegistryPrx < IceGrid.FileReaderPrx
    %INTERNALREGISTRYPRX
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.InternalRegistryPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   InternalRegistryPrx Methods:
    %     getAdapters
    %     getAdaptersAsync - An asynchronous getAdapters.
    %     getApplications - Return applications, adapters, objects from this replica.
    %     getApplicationsAsync - An asynchronous getApplications.
    %     getNodes - Return the proxies of all the nodes known by this registry.
    %     getNodesAsync - An asynchronous getNodes.
    %     getObjects
    %     getObjectsAsync - An asynchronous getObjects.
    %     getReplicas - Return the proxies of all the registry replicas known by this registry.
    %     getReplicasAsync - An asynchronous getReplicas.
    %     registerNode - Register a node with the registry.
    %     registerNodeAsync - An asynchronous registerNode.
    %     registerReplica - Register a replica with the registry.
    %     registerReplicaAsync - An asynchronous registerReplica.
    %     registerWithReplica - Create a session with the given registry replica.
    %     registerWithReplicaAsync - An asynchronous registerWithReplica.
    %     shutdown - Shutdown this registry.
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   InternalRegistryPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::InternalRegistry.
    %     uncheckedCast - Creates a InternalRegistryPrx from another proxy without any validation.
    %
    %   Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = registerNode(obj, info, prx, loadInf, context)
            %REGISTERNODE Register a node with the registry. If a node with the same name is already registered,
            %   this operation overrides the existing registration only when the previously
            %   registered node is not active.
            %
            %   Input Arguments
            %     info - Some information on the node.
            %       IceGrid.InternalNodeInfo scalar | empty array of IceGrid.InternalNodeInfo
            %     prx - The proxy of the node.
            %       IceGrid.NodePrx scalar | empty array of IceGrid.NodePrx
            %     loadInf - The load information of the node.
            %       IceGrid.LoadInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The node session proxy.
            %       IceGrid.NodeSessionPrx scalar | empty array of IceGrid.NodeSessionPrx
            %
            %   Exceptions
            %     IceGrid.NodeActiveException - Raised if the node is already registered and currently active.
            %     IceGrid.PermissionDeniedException
            
            arguments
                obj (1, 1) IceGrid.InternalRegistryPrx
                info IceGrid.InternalNodeInfo {mustBeScalarOrEmpty}
                prx IceGrid.NodePrx {mustBeScalarOrEmpty}
                loadInf (1, 1) IceGrid.LoadInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(info);
            os_.writeProxy(prx);
            IceGrid.LoadInfo.ice_write(os_, loadInf);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('registerNode', 0, true, os_, true, IceGrid.InternalRegistryPrx.registerNode_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.NodeSessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = registerNodeAsync(obj, info, prx, loadInf, context)
            %REGISTERNODEASYNC Register a node with the registry. If a node with the same name is already registered,
            %   this operation overrides the existing registration only when the previously
            %   registered node is not active.
            %
            %   Input Arguments
            %     info - Some information on the node.
            %       IceGrid.InternalNodeInfo scalar | empty array of IceGrid.InternalNodeInfo
            %     prx - The proxy of the node.
            %       IceGrid.NodePrx scalar | empty array of IceGrid.NodePrx
            %     loadInf - The load information of the node.
            %       IceGrid.LoadInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also registerNode, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.InternalRegistryPrx
                info IceGrid.InternalNodeInfo {mustBeScalarOrEmpty}
                prx IceGrid.NodePrx {mustBeScalarOrEmpty}
                loadInf (1, 1) IceGrid.LoadInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(info);
            os_.writeProxy(prx);
            IceGrid.LoadInfo.ice_write(os_, loadInf);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.NodeSessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('registerNode', 0, true, os_, 1, @unmarshal, IceGrid.InternalRegistryPrx.registerNode_ex_, context);
        end

        function returnValue = registerReplica(obj, info, prx, context)
            %REGISTERREPLICA Register a replica with the registry. If a replica with the same name is already registered,
            %   this operation overrides the existing registration only when the previously
            %   registered node is not active.
            %
            %   Input Arguments
            %     info - Some information on the replica.
            %       IceGrid.InternalReplicaInfo scalar | empty array of IceGrid.InternalReplicaInfo
            %     prx - The proxy of the replica.
            %       IceGrid.InternalRegistryPrx scalar | empty array of IceGrid.InternalRegistryPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The replica session proxy.
            %       IceGrid.ReplicaSessionPrx scalar | empty array of IceGrid.ReplicaSessionPrx
            %
            %   Exceptions
            %     IceGrid.ReplicaActiveException - Raised if the replica is already registered and currently active.
            %     IceGrid.PermissionDeniedException
            
            arguments
                obj (1, 1) IceGrid.InternalRegistryPrx
                info IceGrid.InternalReplicaInfo {mustBeScalarOrEmpty}
                prx IceGrid.InternalRegistryPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(info);
            os_.writeProxy(prx);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('registerReplica', 0, true, os_, true, IceGrid.InternalRegistryPrx.registerReplica_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.ReplicaSessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = registerReplicaAsync(obj, info, prx, context)
            %REGISTERREPLICAASYNC Register a replica with the registry. If a replica with the same name is already registered,
            %   this operation overrides the existing registration only when the previously
            %   registered node is not active.
            %
            %   Input Arguments
            %     info - Some information on the replica.
            %       IceGrid.InternalReplicaInfo scalar | empty array of IceGrid.InternalReplicaInfo
            %     prx - The proxy of the replica.
            %       IceGrid.InternalRegistryPrx scalar | empty array of IceGrid.InternalRegistryPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also registerReplica, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.InternalRegistryPrx
                info IceGrid.InternalReplicaInfo {mustBeScalarOrEmpty}
                prx IceGrid.InternalRegistryPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(info);
            os_.writeProxy(prx);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.ReplicaSessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('registerReplica', 0, true, os_, 1, @unmarshal, IceGrid.InternalRegistryPrx.registerReplica_ex_, context);
        end

        function registerWithReplica(obj, prx, context)
            %REGISTERWITHREPLICA Create a session with the given registry replica. This method returns only once the session creation has been
            %   attempted.
            %
            %   Input Arguments
            %     prx
            %       IceGrid.InternalRegistryPrx scalar | empty array of IceGrid.InternalRegistryPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.InternalRegistryPrx
                prx IceGrid.InternalRegistryPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(prx);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('registerWithReplica', 0, false, os_, false, {}, context);
        end

        function future = registerWithReplicaAsync(obj, prx, context)
            %REGISTERWITHREPLICAASYNC Create a session with the given registry replica. This method returns only once the session creation has been
            %   attempted.
            %
            %   Input Arguments
            %     prx
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
                obj (1, 1) IceGrid.InternalRegistryPrx
                prx IceGrid.InternalRegistryPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(prx);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('registerWithReplica', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = getNodes(obj, context)
            %GETNODES Return the proxies of all the nodes known by this registry.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            
            arguments
                obj (1, 1) IceGrid.InternalRegistryPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getNodes', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = IceGrid.NodePrxSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = getNodesAsync(obj, context)
            %GETNODESASYNC Return the proxies of all the nodes known by this registry.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getNodes, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.InternalRegistryPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.NodePrxSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getNodes', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getReplicas(obj, context)
            %GETREPLICAS Return the proxies of all the registry replicas known by this registry.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            
            arguments
                obj (1, 1) IceGrid.InternalRegistryPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getReplicas', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = IceGrid.InternalRegistryPrxSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = getReplicasAsync(obj, context)
            %GETREPLICASASYNC Return the proxies of all the registry replicas known by this registry.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getReplicas, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.InternalRegistryPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.InternalRegistryPrxSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getReplicas', 2, true, [], 1, @unmarshal, {}, context);
        end

        function [returnValue, serial] = getApplications(obj, context)
            %GETAPPLICATIONS Return applications, adapters, objects from this replica.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       IceGrid.ApplicationInfo vector
            %     serial
            %       int64 scalar
            
            arguments
                obj (1, 1) IceGrid.InternalRegistryPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getApplications', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            serial = is_.readLong();
            returnValue = IceGrid.ApplicationInfoSeq.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = IceGrid.ApplicationInfoSeq.convert(returnValue);
        end

        function future = getApplicationsAsync(obj, context)
            %GETAPPLICATIONSASYNC Return applications, adapters, objects from this replica.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getApplications, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.InternalRegistryPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                serial = is_.readLong();
                returnValue = IceGrid.ApplicationInfoSeq.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = IceGrid.ApplicationInfoSeq.convert(returnValue);
                varargout{2} = serial;
            end
            future = obj.iceInvokeAsync('getApplications', 2, true, [], 2, @unmarshal, {}, context);
        end

        function [returnValue, serial] = getAdapters(obj, context)
            %GETADAPTERS
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       IceGrid.AdapterInfo vector
            %     serial
            %       int64 scalar
            
            arguments
                obj (1, 1) IceGrid.InternalRegistryPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getAdapters', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            serial = is_.readLong();
            returnValue = IceGrid.AdapterInfoSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = getAdaptersAsync(obj, context)
            %GETADAPTERSASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getAdapters, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.InternalRegistryPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                serial = is_.readLong();
                returnValue = IceGrid.AdapterInfoSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = serial;
            end
            future = obj.iceInvokeAsync('getAdapters', 2, true, [], 2, @unmarshal, {}, context);
        end

        function [returnValue, serial] = getObjects(obj, context)
            %GETOBJECTS
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       IceGrid.ObjectInfo vector
            %     serial
            %       int64 scalar
            
            arguments
                obj (1, 1) IceGrid.InternalRegistryPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getObjects', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            serial = is_.readLong();
            returnValue = IceGrid.ObjectInfoSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = getObjectsAsync(obj, context)
            %GETOBJECTSASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getObjects, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.InternalRegistryPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                serial = is_.readLong();
                returnValue = IceGrid.ObjectInfoSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = serial;
            end
            future = obj.iceInvokeAsync('getObjects', 2, true, [], 2, @unmarshal, {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN Shutdown this registry.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.InternalRegistryPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('shutdown', 2, false, [], false, {}, context);
        end

        function future = shutdownAsync(obj, context)
            %SHUTDOWNASYNC Shutdown this registry.
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
                obj (1, 1) IceGrid.InternalRegistryPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 2, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::InternalRegistry';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.InternalRegistryPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::InternalRegistry.
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
            %     r - A IceGrid.InternalRegistryPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::InternalRegistry; otherwise, an empty array of IceGrid.InternalRegistryPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.InternalRegistryPrx.ice_staticId(), 'IceGrid.InternalRegistryPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.InternalRegistryPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.InternalRegistryPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.InternalRegistryPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        registerNode_ex_ = { 'IceGrid.NodeActiveException', 'IceGrid.PermissionDeniedException' }
        registerReplica_ex_ = { 'IceGrid.ReplicaActiveException', 'IceGrid.PermissionDeniedException' }
    end
end
