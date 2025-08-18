classdef ReplicaSessionPrx < Ice.ObjectPrx
    %REPLICASESSIONPRX
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.ReplicaSessionPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ReplicaSessionPrx Methods:
    %     destroy - Destroy the session.
    %     destroyAsync - An asynchronous destroy.
    %     getTimeout - Return the replica session timeout.
    %     getTimeoutAsync - An asynchronous getTimeout.
    %     keepAlive - The replica call this method to keep the session alive.
    %     keepAliveAsync - An asynchronous keepAlive.
    %     receivedUpdate - Notify the master that an update was received.
    %     receivedUpdateAsync - An asynchronous receivedUpdate.
    %     registerWellKnownObjects - Registers the replica well-known objects with the master.
    %     registerWellKnownObjectsAsync - An asynchronous registerWellKnownObjects.
    %     setAdapterDirectProxy - Set the adapter direct proxy of the given adapter in the master.
    %     setAdapterDirectProxyAsync - An asynchronous setAdapterDirectProxy.
    %     setDatabaseObserver - Set the database observer.
    %     setDatabaseObserverAsync - An asynchronous setDatabaseObserver.
    %     setEndpoints - This method sets the endpoints of the replica.
    %     setEndpointsAsync - An asynchronous setEndpoints.
    %
    %   ReplicaSessionPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::ReplicaSession.
    %     uncheckedCast - Creates a ReplicaSessionPrx from another proxy without any validation.
    %
    %   Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function keepAlive(obj, context)
            %KEEPALIVE The replica call this method to keep the session alive.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ReplicaSessionPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('keepAlive', 0, false, [], false, {}, context);
        end

        function future = keepAliveAsync(obj, context)
            %KEEPALIVEASYNC The replica call this method to keep the session alive.
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
                obj (1, 1) IceGrid.ReplicaSessionPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('keepAlive', 0, false, [], 0, [], {}, context);
        end

        function returnValue = getTimeout(obj, context)
            %GETTIMEOUT Return the replica session timeout.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) IceGrid.ReplicaSessionPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getTimeout', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getTimeoutAsync(obj, context)
            %GETTIMEOUTASYNC Return the replica session timeout.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getTimeout, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ReplicaSessionPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getTimeout', 2, true, [], 1, @unmarshal, {}, context);
        end

        function setDatabaseObserver(obj, dbObs, serials, context)
            %SETDATABASEOBSERVER Set the database observer. Once the observer is subscribed, it will receive the database and database updates.
            %
            %   Input Arguments
            %     dbObs
            %       IceGrid.DatabaseObserverPrx scalar | empty array of IceGrid.DatabaseObserverPrx
            %     serials
            %       string, int64) scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.ObserverAlreadyRegisteredException
            %     IceGrid.DeploymentException
            
            arguments
                obj (1, 1) IceGrid.ReplicaSessionPrx
                dbObs IceGrid.DatabaseObserverPrx {mustBeScalarOrEmpty}
                serials (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(dbObs);
            IceGrid.StringLongDict.writeOpt(os_, 1, serials);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setDatabaseObserver', 2, true, os_, false, IceGrid.ReplicaSessionPrx.setDatabaseObserver_ex_, context);
        end

        function future = setDatabaseObserverAsync(obj, dbObs, serials, context)
            %SETDATABASEOBSERVERASYNC Set the database observer. Once the observer is subscribed, it will receive the database and database updates.
            %
            %   Input Arguments
            %     dbObs
            %       IceGrid.DatabaseObserverPrx scalar | empty array of IceGrid.DatabaseObserverPrx
            %     serials
            %       string, int64) scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setDatabaseObserver, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ReplicaSessionPrx
                dbObs IceGrid.DatabaseObserverPrx {mustBeScalarOrEmpty}
                serials (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(dbObs);
            IceGrid.StringLongDict.writeOpt(os_, 1, serials);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setDatabaseObserver', 2, true, os_, 0, [], IceGrid.ReplicaSessionPrx.setDatabaseObserver_ex_, context);
        end

        function setEndpoints(obj, endpoints, context)
            %SETENDPOINTS This method sets the endpoints of the replica. This allows the master to create proxies with multiple endpoints
            %   for replicated objects (e.g.: IceGrid::Query object).
            %
            %   Input Arguments
            %     endpoints
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ReplicaSessionPrx
                endpoints (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.StringObjectProxyDict.write(os_, endpoints);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setEndpoints', 2, false, os_, false, {}, context);
        end

        function future = setEndpointsAsync(obj, endpoints, context)
            %SETENDPOINTSASYNC This method sets the endpoints of the replica. This allows the master to create proxies with multiple endpoints
            %   for replicated objects (e.g.: IceGrid::Query object).
            %
            %   Input Arguments
            %     endpoints
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setEndpoints, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ReplicaSessionPrx
                endpoints (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.StringObjectProxyDict.write(os_, endpoints);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setEndpoints', 2, false, os_, 0, [], {}, context);
        end

        function registerWellKnownObjects(obj, objects, context)
            %REGISTERWELLKNOWNOBJECTS Registers the replica well-known objects with the master.
            %
            %   Input Arguments
            %     objects
            %       IceGrid.ObjectInfo vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ReplicaSessionPrx
                objects (1, :) IceGrid.ObjectInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfoSeq.write(os_, objects);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('registerWellKnownObjects', 2, false, os_, false, {}, context);
        end

        function future = registerWellKnownObjectsAsync(obj, objects, context)
            %REGISTERWELLKNOWNOBJECTSASYNC Registers the replica well-known objects with the master.
            %
            %   Input Arguments
            %     objects
            %       IceGrid.ObjectInfo vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also registerWellKnownObjects, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ReplicaSessionPrx
                objects (1, :) IceGrid.ObjectInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfoSeq.write(os_, objects);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('registerWellKnownObjects', 2, false, os_, 0, [], {}, context);
        end

        function setAdapterDirectProxy(obj, adapterId, replicaGroupId, proxy, context)
            %SETADAPTERDIRECTPROXY Set the adapter direct proxy of the given adapter in the master. This is used to support dynamic registration
            %   with the locator registry interface.
            %
            %   Input Arguments
            %     adapterId
            %       character vector
            %     replicaGroupId
            %       character vector
            %     proxy
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.AdapterNotExistException
            %     IceGrid.AdapterExistsException
            
            arguments
                obj (1, 1) IceGrid.ReplicaSessionPrx
                adapterId (1, :) char
                replicaGroupId (1, :) char
                proxy Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(adapterId);
            os_.writeString(replicaGroupId);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setAdapterDirectProxy', 2, true, os_, false, IceGrid.ReplicaSessionPrx.setAdapterDirectProxy_ex_, context);
        end

        function future = setAdapterDirectProxyAsync(obj, adapterId, replicaGroupId, proxy, context)
            %SETADAPTERDIRECTPROXYASYNC Set the adapter direct proxy of the given adapter in the master. This is used to support dynamic registration
            %   with the locator registry interface.
            %
            %   Input Arguments
            %     adapterId
            %       character vector
            %     replicaGroupId
            %       character vector
            %     proxy
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setAdapterDirectProxy, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ReplicaSessionPrx
                adapterId (1, :) char
                replicaGroupId (1, :) char
                proxy Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(adapterId);
            os_.writeString(replicaGroupId);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setAdapterDirectProxy', 2, true, os_, 0, [], IceGrid.ReplicaSessionPrx.setAdapterDirectProxy_ex_, context);
        end

        function receivedUpdate(obj, name, serial, failure, context)
            %RECEIVEDUPDATE Notify the master that an update was received. The master might wait for replication updates to be received by
            %   all the replicas before to continue.
            %
            %   Input Arguments
            %     name
            %       IceGrid.TopicName scalar
            %     serial
            %       int32 scalar
            %     failure
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ReplicaSessionPrx
                name (1, 1) IceGrid.TopicName
                serial (1, 1) int32
                failure (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.TopicName.ice_write(os_, name);
            os_.writeInt(serial);
            os_.writeString(failure);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('receivedUpdate', 0, false, os_, false, {}, context);
        end

        function future = receivedUpdateAsync(obj, name, serial, failure, context)
            %RECEIVEDUPDATEASYNC Notify the master that an update was received. The master might wait for replication updates to be received by
            %   all the replicas before to continue.
            %
            %   Input Arguments
            %     name
            %       IceGrid.TopicName scalar
            %     serial
            %       int32 scalar
            %     failure
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also receivedUpdate, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ReplicaSessionPrx
                name (1, 1) IceGrid.TopicName
                serial (1, 1) int32
                failure (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.TopicName.ice_write(os_, name);
            os_.writeInt(serial);
            os_.writeString(failure);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('receivedUpdate', 0, false, os_, 0, [], {}, context);
        end

        function destroy(obj, context)
            %DESTROY Destroy the session.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ReplicaSessionPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('destroy', 0, false, [], false, {}, context);
        end

        function future = destroyAsync(obj, context)
            %DESTROYASYNC Destroy the session.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also destroy, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ReplicaSessionPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('destroy', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::ReplicaSession';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.ReplicaSessionPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::ReplicaSession.
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
            %     r - A IceGrid.ReplicaSessionPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::ReplicaSession; otherwise, an empty array of IceGrid.ReplicaSessionPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.ReplicaSessionPrx.ice_staticId(), 'IceGrid.ReplicaSessionPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.ReplicaSessionPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.ReplicaSessionPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.ReplicaSessionPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        setDatabaseObserver_ex_ = { 'IceGrid.ObserverAlreadyRegisteredException', 'IceGrid.DeploymentException' }
        setAdapterDirectProxy_ex_ = { 'IceGrid.AdapterNotExistException', 'IceGrid.AdapterExistsException' }
    end
end
