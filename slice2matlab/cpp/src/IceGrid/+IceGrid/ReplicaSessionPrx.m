% ReplicaSessionPrx   Summary of ReplicaSessionPrx
%
% ReplicaSessionPrx Methods:
%   keepAlive - The replica call this method to keep the session alive.
%   keepAliveAsync - The replica call this method to keep the session alive.
%   getTimeout - Return the replica session timeout.
%   getTimeoutAsync - Return the replica session timeout.
%   setDatabaseObserver - Set the database observer.
%   setDatabaseObserverAsync - Set the database observer.
%   setEndpoints - This method sets the endpoints of the replica.
%   setEndpointsAsync - This method sets the endpoints of the replica.
%   registerWellKnownObjects - Registers the replica well-known objects with the master.
%   registerWellKnownObjectsAsync - Registers the replica well-known objects with the master.
%   setAdapterDirectProxy - Set the adapter direct proxy of the given adapter in the master.
%   setAdapterDirectProxyAsync - Set the adapter direct proxy of the given adapter in the master.
%   receivedUpdate - Notify the master that an update was received.
%   receivedUpdateAsync - Notify the master that an update was received.
%   destroy - Destroy the session.
%   destroyAsync - Destroy the session.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.7.10

classdef ReplicaSessionPrx < Ice.ObjectPrx
    methods
        function keepAlive(obj, varargin)
            % keepAlive   The replica call this method to keep the session alive.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('keepAlive', 0, false, [], false, {}, varargin{:});
        end
        function r_ = keepAliveAsync(obj, varargin)
            % keepAliveAsync   The replica call this method to keep the session alive.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('keepAlive', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = getTimeout(obj, varargin)
            % getTimeout   Return the replica session timeout.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            is_ = obj.iceInvoke('getTimeout', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getTimeoutAsync(obj, varargin)
            % getTimeoutAsync   Return the replica session timeout.
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
            r_ = obj.iceInvokeAsync('getTimeout', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function setDatabaseObserver(obj, dbObs, serials, varargin)
            % setDatabaseObserver   Set the database observer. Once the observer is subscribed, it will receive the database and database updates.
            %
            % Parameters:
            %   dbObs (IceGrid.DatabaseObserverPrx)
            %   serials (containers.Map)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(dbObs);
            IceGrid.StringLongDict.writeOpt(os_, 1, serials);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setDatabaseObserver', 2, true, os_, false, IceGrid.ReplicaSessionPrx.setDatabaseObserver_ex_, varargin{:});
        end
        function r_ = setDatabaseObserverAsync(obj, dbObs, serials, varargin)
            % setDatabaseObserverAsync   Set the database observer. Once the observer is subscribed, it will receive the database and database updates.
            %
            % Parameters:
            %   dbObs (IceGrid.DatabaseObserverPrx)
            %   serials (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(dbObs);
            IceGrid.StringLongDict.writeOpt(os_, 1, serials);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setDatabaseObserver', 2, true, os_, 0, [], IceGrid.ReplicaSessionPrx.setDatabaseObserver_ex_, varargin{:});
        end
        function setEndpoints(obj, endpoints, varargin)
            % setEndpoints   This method sets the endpoints of the replica. This allows the master to create proxies with multiple endpoints
            % for replicated objects (e.g.: IceGrid::Query object).
            %
            % Parameters:
            %   endpoints (containers.Map)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.StringObjectProxyDict.write(os_, endpoints);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setEndpoints', 2, false, os_, false, {}, varargin{:});
        end
        function r_ = setEndpointsAsync(obj, endpoints, varargin)
            % setEndpointsAsync   This method sets the endpoints of the replica. This allows the master to create proxies with multiple endpoints
            % for replicated objects (e.g.: IceGrid::Query object).
            %
            % Parameters:
            %   endpoints (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.StringObjectProxyDict.write(os_, endpoints);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setEndpoints', 2, false, os_, 0, [], {}, varargin{:});
        end
        function registerWellKnownObjects(obj, objects, varargin)
            % registerWellKnownObjects   Registers the replica well-known objects with the master.
            %
            % Parameters:
            %   objects (IceGrid.ObjectInfoSeq)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfoSeq.write(os_, objects);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('registerWellKnownObjects', 2, false, os_, false, {}, varargin{:});
        end
        function r_ = registerWellKnownObjectsAsync(obj, objects, varargin)
            % registerWellKnownObjectsAsync   Registers the replica well-known objects with the master.
            %
            % Parameters:
            %   objects (IceGrid.ObjectInfoSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfoSeq.write(os_, objects);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('registerWellKnownObjects', 2, false, os_, 0, [], {}, varargin{:});
        end
        function setAdapterDirectProxy(obj, adapterId, replicaGroupId, proxy, varargin)
            % setAdapterDirectProxy   Set the adapter direct proxy of the given adapter in the master. This is used to support dynamic registration
            % with the locator registry interface.
            %
            % Parameters:
            %   adapterId (char)
            %   replicaGroupId (char)
            %   proxy (Ice.ObjectPrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(adapterId);
            os_.writeString(replicaGroupId);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setAdapterDirectProxy', 2, true, os_, false, IceGrid.ReplicaSessionPrx.setAdapterDirectProxy_ex_, varargin{:});
        end
        function r_ = setAdapterDirectProxyAsync(obj, adapterId, replicaGroupId, proxy, varargin)
            % setAdapterDirectProxyAsync   Set the adapter direct proxy of the given adapter in the master. This is used to support dynamic registration
            % with the locator registry interface.
            %
            % Parameters:
            %   adapterId (char)
            %   replicaGroupId (char)
            %   proxy (Ice.ObjectPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(adapterId);
            os_.writeString(replicaGroupId);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setAdapterDirectProxy', 2, true, os_, 0, [], IceGrid.ReplicaSessionPrx.setAdapterDirectProxy_ex_, varargin{:});
        end
        function receivedUpdate(obj, name, serial, failure, varargin)
            % receivedUpdate   Notify the master that an update was received. The master might wait for replication updates to be received by
            % all the replicas before to continue.
            %
            % Parameters:
            %   name (IceGrid.TopicName)
            %   serial (int32)
            %   failure (char)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.TopicName.ice_write(os_, name);
            os_.writeInt(serial);
            os_.writeString(failure);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('receivedUpdate', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = receivedUpdateAsync(obj, name, serial, failure, varargin)
            % receivedUpdateAsync   Notify the master that an update was received. The master might wait for replication updates to be received by
            % all the replicas before to continue.
            %
            % Parameters:
            %   name (IceGrid.TopicName)
            %   serial (int32)
            %   failure (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.TopicName.ice_write(os_, name);
            os_.writeInt(serial);
            os_.writeString(failure);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('receivedUpdate', 0, false, os_, 0, [], {}, varargin{:});
        end
        function destroy(obj, varargin)
            % destroy   Destroy the session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('destroy', 0, false, [], false, {}, varargin{:});
        end
        function r_ = destroyAsync(obj, varargin)
            % destroyAsync   Destroy the session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('destroy', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::ReplicaSession';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.ReplicaSessionPrx');
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
            % Returns (IceGrid.ReplicaSessionPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.ReplicaSessionPrx.ice_staticId(), 'IceGrid.ReplicaSessionPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.ReplicaSessionPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.ReplicaSessionPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = ReplicaSessionPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        setDatabaseObserver_ex_ = { 'IceGrid.DeploymentException', 'IceGrid.ObserverAlreadyRegisteredException' }
        setAdapterDirectProxy_ex_ = { 'IceGrid.AdapterExistsException', 'IceGrid.AdapterNotExistException' }
    end
end
