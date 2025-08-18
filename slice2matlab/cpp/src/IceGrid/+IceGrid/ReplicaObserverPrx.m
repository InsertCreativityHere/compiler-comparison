classdef ReplicaObserverPrx < Ice.ObjectPrx
    %REPLICAOBSERVERPRX
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.ReplicaObserverPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ReplicaObserverPrx Methods:
    %     replicaAdded - Notification that a replica has been added.
    %     replicaAddedAsync - An asynchronous replicaAdded.
    %     replicaInit - Initialization of the replica observer.
    %     replicaInitAsync - An asynchronous replicaInit.
    %     replicaRemoved - Notification that a replica has been removed.
    %     replicaRemovedAsync - An asynchronous replicaRemoved.
    %
    %   ReplicaObserverPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::ReplicaObserver.
    %     uncheckedCast - Creates a ReplicaObserverPrx from another proxy without any validation.
    %
    %   Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function replicaInit(obj, replicas, context)
            %REPLICAINIT Initialization of the replica observer.
            %
            %   Input Arguments
            %     replicas
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ReplicaObserverPrx
                replicas (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.InternalRegistryPrxSeq.write(os_, replicas);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('replicaInit', 0, false, os_, false, {}, context);
        end

        function future = replicaInitAsync(obj, replicas, context)
            %REPLICAINITASYNC Initialization of the replica observer.
            %
            %   Input Arguments
            %     replicas
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also replicaInit, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ReplicaObserverPrx
                replicas (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.InternalRegistryPrxSeq.write(os_, replicas);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('replicaInit', 0, false, os_, 0, [], {}, context);
        end

        function replicaAdded(obj, replica, context)
            %REPLICAADDED Notification that a replica has been added. The node should establish a session with this new replica.
            %
            %   Input Arguments
            %     replica
            %       IceGrid.InternalRegistryPrx scalar | empty array of IceGrid.InternalRegistryPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ReplicaObserverPrx
                replica IceGrid.InternalRegistryPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(replica);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('replicaAdded', 0, false, os_, false, {}, context);
        end

        function future = replicaAddedAsync(obj, replica, context)
            %REPLICAADDEDASYNC Notification that a replica has been added. The node should establish a session with this new replica.
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
            %   See also replicaAdded, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ReplicaObserverPrx
                replica IceGrid.InternalRegistryPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(replica);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('replicaAdded', 0, false, os_, 0, [], {}, context);
        end

        function replicaRemoved(obj, replica, context)
            %REPLICAREMOVED Notification that a replica has been removed. The node should destroy the session to this replica.
            %
            %   Input Arguments
            %     replica
            %       IceGrid.InternalRegistryPrx scalar | empty array of IceGrid.InternalRegistryPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ReplicaObserverPrx
                replica IceGrid.InternalRegistryPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(replica);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('replicaRemoved', 0, false, os_, false, {}, context);
        end

        function future = replicaRemovedAsync(obj, replica, context)
            %REPLICAREMOVEDASYNC Notification that a replica has been removed. The node should destroy the session to this replica.
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
            %   See also replicaRemoved, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ReplicaObserverPrx
                replica IceGrid.InternalRegistryPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(replica);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('replicaRemoved', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::ReplicaObserver';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.ReplicaObserverPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::ReplicaObserver.
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
            %     r - A IceGrid.ReplicaObserverPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::ReplicaObserver; otherwise, an empty array of IceGrid.ReplicaObserverPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.ReplicaObserverPrx.ice_staticId(), 'IceGrid.ReplicaObserverPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.ReplicaObserverPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.ReplicaObserverPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.ReplicaObserverPrx', varargin{:});
        end
    end
end
