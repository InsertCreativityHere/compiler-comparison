% NodeSessionPrx   Summary of NodeSessionPrx
%
% NodeSessionPrx Methods:
%   keepAlive - The node call this method to keep the session alive.
%   keepAliveAsync - The node call this method to keep the session alive.
%   setReplicaObserver - Set the replica observer.
%   setReplicaObserverAsync - Set the replica observer.
%   getTimeout - Return the node session timeout.
%   getTimeoutAsync - Return the node session timeout.
%   getObserver - Return the node observer.
%   getObserverAsync - Return the node observer.
%   loadServers - Ask the registry to load the servers on the node.
%   loadServersAsync - Ask the registry to load the servers on the node.
%   getServers - Get the name of the servers deployed on the node.
%   getServersAsync - Get the name of the servers deployed on the node.
%   waitForApplicationUpdate - Wait for the application update to complete (the application is completely updated once all the registry replicas have been updated).
%   waitForApplicationUpdateAsync - Wait for the application update to complete (the application is completely updated once all the registry replicas have been updated).
%   destroy - Destroy the session.
%   destroyAsync - Destroy the session.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

classdef NodeSessionPrx < Ice.ObjectPrx
    methods
        function keepAlive(obj, load, varargin)
            % keepAlive   The node call this method to keep the session alive.
            %
            % Parameters:
            %   load (IceGrid.LoadInfo)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.LoadInfo.ice_write(os_, load);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('keepAlive', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = keepAliveAsync(obj, load, varargin)
            % keepAliveAsync   The node call this method to keep the session alive.
            %
            % Parameters:
            %   load (IceGrid.LoadInfo)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.LoadInfo.ice_write(os_, load);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('keepAlive', 0, false, os_, 0, [], {}, varargin{:});
        end
        function setReplicaObserver(obj, observer, varargin)
            % setReplicaObserver   Set the replica observer. The node calls this method when it's ready to receive notifications for the replicas.
            % It only calls this for the session with the master.
            %
            % Parameters:
            %   observer (IceGrid.ReplicaObserverPrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(observer);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setReplicaObserver', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = setReplicaObserverAsync(obj, observer, varargin)
            % setReplicaObserverAsync   Set the replica observer. The node calls this method when it's ready to receive notifications for the replicas.
            % It only calls this for the session with the master.
            %
            % Parameters:
            %   observer (IceGrid.ReplicaObserverPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(observer);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setReplicaObserver', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = getTimeout(obj, varargin)
            % getTimeout   Return the node session timeout.
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
            % getTimeoutAsync   Return the node session timeout.
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
        function result = getObserver(obj, varargin)
            % getObserver   Return the node observer.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.NodeObserverPrx)
            
            is_ = obj.iceInvoke('getObserver', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.NodeObserverPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getObserverAsync(obj, varargin)
            % getObserverAsync   Return the node observer.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.NodeObserverPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getObserver', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function loadServers(obj, varargin)
            % loadServers   Ask the registry to load the servers on the node.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('loadServers', 2, false, [], false, {}, varargin{:});
        end
        function r_ = loadServersAsync(obj, varargin)
            % loadServersAsync   Ask the registry to load the servers on the node.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('loadServers', 2, false, [], 0, [], {}, varargin{:});
        end
        function result = getServers(obj, varargin)
            % getServers   Get the name of the servers deployed on the node.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.StringSeq)
            
            is_ = obj.iceInvoke('getServers', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = getServersAsync(obj, varargin)
            % getServersAsync   Get the name of the servers deployed on the node.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getServers', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function waitForApplicationUpdate(obj, application, revision, varargin)
            % waitForApplicationUpdate   Wait for the application update to complete (the application is completely updated once all the registry
            % replicas have been updated). This is used by the node to ensure that before to start a server all the
            % replicas have the up-to-date descriptor of the server.
            %
            % Parameters:
            %   application (char)
            %   revision (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(application);
            os_.writeInt(revision);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('waitForApplicationUpdate', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = waitForApplicationUpdateAsync(obj, application, revision, varargin)
            % waitForApplicationUpdateAsync   Wait for the application update to complete (the application is completely updated once all the registry
            % replicas have been updated). This is used by the node to ensure that before to start a server all the
            % replicas have the up-to-date descriptor of the server.
            %
            % Parameters:
            %   application (char)
            %   revision (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(application);
            os_.writeInt(revision);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('waitForApplicationUpdate', 0, false, os_, 0, [], {}, varargin{:});
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
            id = '::IceGrid::NodeSession';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.NodeSessionPrx');
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
            % Returns (IceGrid.NodeSessionPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.NodeSessionPrx.ice_staticId(), 'IceGrid.NodeSessionPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.NodeSessionPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.NodeSessionPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = NodeSessionPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
