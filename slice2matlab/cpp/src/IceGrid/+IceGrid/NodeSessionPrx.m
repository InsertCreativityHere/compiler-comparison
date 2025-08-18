classdef NodeSessionPrx < Ice.ObjectPrx
    %NODESESSIONPRX
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.NodeSessionPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   NodeSessionPrx Methods:
    %     destroy - Destroy the session.
    %     destroyAsync - An asynchronous destroy.
    %     getObserver - Return the node observer.
    %     getObserverAsync - An asynchronous getObserver.
    %     getServers - Get the name of the servers deployed on the node.
    %     getServersAsync - An asynchronous getServers.
    %     getTimeout - Return the node session timeout.
    %     getTimeoutAsync - An asynchronous getTimeout.
    %     keepAlive - The node call this method to keep the session alive.
    %     keepAliveAsync - An asynchronous keepAlive.
    %     loadServers - Ask the registry to load the servers on the node.
    %     loadServersAsync - An asynchronous loadServers.
    %     setReplicaObserver - Set the replica observer.
    %     setReplicaObserverAsync - An asynchronous setReplicaObserver.
    %     waitForApplicationUpdate - Wait for the application update to complete (the application is completely updated once all the registry replicas have been updated).
    %     waitForApplicationUpdateAsync - An asynchronous waitForApplicationUpdate.
    %
    %   NodeSessionPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::NodeSession.
    %     uncheckedCast - Creates a NodeSessionPrx from another proxy without any validation.
    %
    %   Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function keepAlive(obj, load, context)
            %KEEPALIVE The node call this method to keep the session alive.
            %
            %   Input Arguments
            %     load
            %       IceGrid.LoadInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.NodeSessionPrx
                load (1, 1) IceGrid.LoadInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.LoadInfo.ice_write(os_, load);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('keepAlive', 0, false, os_, false, {}, context);
        end

        function future = keepAliveAsync(obj, load, context)
            %KEEPALIVEASYNC The node call this method to keep the session alive.
            %
            %   Input Arguments
            %     load
            %       IceGrid.LoadInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also keepAlive, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodeSessionPrx
                load (1, 1) IceGrid.LoadInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.LoadInfo.ice_write(os_, load);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('keepAlive', 0, false, os_, 0, [], {}, context);
        end

        function setReplicaObserver(obj, observer, context)
            %SETREPLICAOBSERVER Set the replica observer. The node calls this method when it's ready to receive notifications for the replicas.
            %   It only calls this for the session with the master.
            %
            %   Input Arguments
            %     observer
            %       IceGrid.ReplicaObserverPrx scalar | empty array of IceGrid.ReplicaObserverPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.NodeSessionPrx
                observer IceGrid.ReplicaObserverPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(observer);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setReplicaObserver', 0, false, os_, false, {}, context);
        end

        function future = setReplicaObserverAsync(obj, observer, context)
            %SETREPLICAOBSERVERASYNC Set the replica observer. The node calls this method when it's ready to receive notifications for the replicas.
            %   It only calls this for the session with the master.
            %
            %   Input Arguments
            %     observer
            %       IceGrid.ReplicaObserverPrx scalar | empty array of IceGrid.ReplicaObserverPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setReplicaObserver, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodeSessionPrx
                observer IceGrid.ReplicaObserverPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(observer);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setReplicaObserver', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = getTimeout(obj, context)
            %GETTIMEOUT Return the node session timeout.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) IceGrid.NodeSessionPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getTimeout', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getTimeoutAsync(obj, context)
            %GETTIMEOUTASYNC Return the node session timeout.
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
                obj (1, 1) IceGrid.NodeSessionPrx
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

        function returnValue = getObserver(obj, context)
            %GETOBSERVER Return the node observer.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       IceGrid.NodeObserverPrx scalar | empty array of IceGrid.NodeObserverPrx
            
            arguments
                obj (1, 1) IceGrid.NodeSessionPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getObserver', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = IceGrid.NodeObserverPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getObserverAsync(obj, context)
            %GETOBSERVERASYNC Return the node observer.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getObserver, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodeSessionPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.NodeObserverPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getObserver', 2, true, [], 1, @unmarshal, {}, context);
        end

        function loadServers(obj, context)
            %LOADSERVERS Ask the registry to load the servers on the node.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.NodeSessionPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('loadServers', 2, false, [], false, {}, context);
        end

        function future = loadServersAsync(obj, context)
            %LOADSERVERSASYNC Ask the registry to load the servers on the node.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also loadServers, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodeSessionPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('loadServers', 2, false, [], 0, [], {}, context);
        end

        function returnValue = getServers(obj, context)
            %GETSERVERS Get the name of the servers deployed on the node.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            
            arguments
                obj (1, 1) IceGrid.NodeSessionPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getServers', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = getServersAsync(obj, context)
            %GETSERVERSASYNC Get the name of the servers deployed on the node.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getServers, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodeSessionPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getServers', 2, true, [], 1, @unmarshal, {}, context);
        end

        function waitForApplicationUpdate(obj, application, revision, context)
            %WAITFORAPPLICATIONUPDATE Wait for the application update to complete (the application is completely updated once all the registry
            %   replicas have been updated). This is used by the node to ensure that before to start a server all the
            %   replicas have the up-to-date descriptor of the server.
            %
            %   Input Arguments
            %     application
            %       character vector
            %     revision
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.NodeSessionPrx
                application (1, :) char
                revision (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(application);
            os_.writeInt(revision);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('waitForApplicationUpdate', 0, false, os_, false, {}, context);
        end

        function future = waitForApplicationUpdateAsync(obj, application, revision, context)
            %WAITFORAPPLICATIONUPDATEASYNC Wait for the application update to complete (the application is completely updated once all the registry
            %   replicas have been updated). This is used by the node to ensure that before to start a server all the
            %   replicas have the up-to-date descriptor of the server.
            %
            %   Input Arguments
            %     application
            %       character vector
            %     revision
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also waitForApplicationUpdate, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.NodeSessionPrx
                application (1, :) char
                revision (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(application);
            os_.writeInt(revision);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('waitForApplicationUpdate', 0, false, os_, 0, [], {}, context);
        end

        function destroy(obj, context)
            %DESTROY Destroy the session.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.NodeSessionPrx
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
                obj (1, 1) IceGrid.NodeSessionPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('destroy', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::NodeSession';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.NodeSessionPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::NodeSession.
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
            %     r - A IceGrid.NodeSessionPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::NodeSession; otherwise, an empty array of IceGrid.NodeSessionPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.NodeSessionPrx.ice_staticId(), 'IceGrid.NodeSessionPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.NodeSessionPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.NodeSessionPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.NodeSessionPrx', varargin{:});
        end
    end
end
