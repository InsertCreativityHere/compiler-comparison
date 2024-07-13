% ReplicaObserverPrx   Summary of ReplicaObserverPrx
%
% ReplicaObserverPrx Methods:
%   replicaInit - Initialization of the replica observer.
%   replicaInitAsync - Initialization of the replica observer.
%   replicaAdded - Notification that a replica has been added.
%   replicaAddedAsync - Notification that a replica has been added.
%   replicaRemoved - Notification that a replica has been removed.
%   replicaRemovedAsync - Notification that a replica has been removed.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

classdef ReplicaObserverPrx < Ice.ObjectPrx
    methods
        function replicaInit(obj, replicas, varargin)
            % replicaInit   Initialization of the replica observer.
            %
            % Parameters:
            %   replicas (IceGrid.InternalRegistryPrxSeq)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.InternalRegistryPrxSeq.write(os_, replicas);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('replicaInit', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = replicaInitAsync(obj, replicas, varargin)
            % replicaInitAsync   Initialization of the replica observer.
            %
            % Parameters:
            %   replicas (IceGrid.InternalRegistryPrxSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.InternalRegistryPrxSeq.write(os_, replicas);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('replicaInit', 0, false, os_, 0, [], {}, varargin{:});
        end
        function replicaAdded(obj, replica, varargin)
            % replicaAdded   Notification that a replica has been added. The node should establish a session with this new replica.
            %
            % Parameters:
            %   replica (IceGrid.InternalRegistryPrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(replica);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('replicaAdded', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = replicaAddedAsync(obj, replica, varargin)
            % replicaAddedAsync   Notification that a replica has been added. The node should establish a session with this new replica.
            %
            % Parameters:
            %   replica (IceGrid.InternalRegistryPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(replica);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('replicaAdded', 0, false, os_, 0, [], {}, varargin{:});
        end
        function replicaRemoved(obj, replica, varargin)
            % replicaRemoved   Notification that a replica has been removed. The node should destroy the session to this replica.
            %
            % Parameters:
            %   replica (IceGrid.InternalRegistryPrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(replica);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('replicaRemoved', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = replicaRemovedAsync(obj, replica, varargin)
            % replicaRemovedAsync   Notification that a replica has been removed. The node should destroy the session to this replica.
            %
            % Parameters:
            %   replica (IceGrid.InternalRegistryPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(replica);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('replicaRemoved', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::ReplicaObserver';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.ReplicaObserverPrx');
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
            % Returns (IceGrid.ReplicaObserverPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.ReplicaObserverPrx.ice_staticId(), 'IceGrid.ReplicaObserverPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.ReplicaObserverPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.ReplicaObserverPrx', varargin{:});
        end
    end
end
