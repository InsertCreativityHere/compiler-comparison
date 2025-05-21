% LocatorRegistryPrx   Summary of LocatorRegistryPrx
%
% A server application registers the endpoints of its indirect object adapters with the LocatorRegistry object.
%
% LocatorRegistryPrx Methods:
%   setAdapterDirectProxy - Registers or unregisters the endpoints of an object adapter.
%   setAdapterDirectProxyAsync - Registers or unregisters the endpoints of an object adapter.
%   setReplicatedAdapterDirectProxy - Registers or unregisters the endpoints of an object adapter.
%   setReplicatedAdapterDirectProxyAsync - Registers or unregisters the endpoints of an object adapter.
%   setServerProcessProxy - Registers a proxy to the Process object of a server application.
%   setServerProcessProxyAsync - Registers a proxy to the Process object of a server application.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from LocatorRegistry.ice by slice2matlab version 3.8.0-alpha.0

classdef LocatorRegistryPrx < Ice.ObjectPrx
    methods
        function setAdapterDirectProxy(obj, id, proxy, varargin)
            % setAdapterDirectProxy   Registers or unregisters the endpoints of an object adapter.
            %
            % Parameters:
            %   id (char) - The adapter ID.
            %   proxy (Ice.ObjectPrx) - A dummy proxy created by the object adapter. @p proxy carries the object adapter's endpoints.
            %     The locator considers an object adapter to be active after it has registered its endpoints.
            %     When @p proxy is null, the endpoints are unregistered and the locator considers the object adapter inactive.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   Ice.AdapterAlreadyActiveException - Thrown when an object adapter with the same adapter ID has already
            %     registered its endpoints. Since this operation is marked idempotent, this exception may be thrown when the
            %     Ice client runtime retries an invocation with a non-null @p proxy.
            %   Ice.AdapterNotFoundException - Thrown when the locator only allows registered object adapters to register
            %     their endpoints and no object adapter with this adapter ID was registered with the locator.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setAdapterDirectProxy', 2, true, os_, false, Ice.LocatorRegistryPrx.setAdapterDirectProxy_ex_, varargin{:});
        end
        function r_ = setAdapterDirectProxyAsync(obj, id, proxy, varargin)
            % setAdapterDirectProxyAsync   Registers or unregisters the endpoints of an object adapter.
            %
            % Parameters:
            %   id (char) - The adapter ID.
            %   proxy (Ice.ObjectPrx) - A dummy proxy created by the object adapter. @p proxy carries the object adapter's endpoints.
            %     The locator considers an object adapter to be active after it has registered its endpoints.
            %     When @p proxy is null, the endpoints are unregistered and the locator considers the object adapter inactive.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Ice.AdapterAlreadyActiveException - Thrown when an object adapter with the same adapter ID has already
            %     registered its endpoints. Since this operation is marked idempotent, this exception may be thrown when the
            %     Ice client runtime retries an invocation with a non-null @p proxy.
            %   Ice.AdapterNotFoundException - Thrown when the locator only allows registered object adapters to register
            %     their endpoints and no object adapter with this adapter ID was registered with the locator.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setAdapterDirectProxy', 2, true, os_, 0, [], Ice.LocatorRegistryPrx.setAdapterDirectProxy_ex_, varargin{:});
        end
        function setReplicatedAdapterDirectProxy(obj, adapterId, replicaGroupId, proxy, varargin)
            % setReplicatedAdapterDirectProxy   Registers or unregisters the endpoints of an object adapter. This object adapter is a member of a replica
            % group.
            %
            % Parameters:
            %   adapterId (char) - The adapter ID.
            %   replicaGroupId (char) - The replica group ID.
            %   proxy (Ice.ObjectPrx) - A dummy proxy created by the object adapter. @p proxy carries the object adapter's endpoints.
            %     The locator considers an object adapter to be active after it has registered its endpoints. When @p proxy is
            %     null, the endpoints are unregistered and the locator considers the object adapter inactive.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   Ice.AdapterAlreadyActiveException - Thrown when an object adapter with the same adapter ID has already
            %     registered its endpoints. Since this operation is marked idempotent, this exception may be thrown when the
            %     Ice client runtime retries an invocation with a non-null @p proxy.
            %   Ice.AdapterNotFoundException - Thrown when the locator only allows registered object adapters to register
            %     their endpoints and no object adapter with this adapter ID was registered with the locator.
            %   Ice.InvalidReplicaGroupIdException - Thrown when the given replica group does not match the replica group
            %     associated with the adapter ID in the locator's database.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(adapterId);
            os_.writeString(replicaGroupId);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setReplicatedAdapterDirectProxy', 2, true, os_, false, Ice.LocatorRegistryPrx.setReplicatedAdapterDirectProxy_ex_, varargin{:});
        end
        function r_ = setReplicatedAdapterDirectProxyAsync(obj, adapterId, replicaGroupId, proxy, varargin)
            % setReplicatedAdapterDirectProxyAsync   Registers or unregisters the endpoints of an object adapter. This object adapter is a member of a replica
            % group.
            %
            % Parameters:
            %   adapterId (char) - The adapter ID.
            %   replicaGroupId (char) - The replica group ID.
            %   proxy (Ice.ObjectPrx) - A dummy proxy created by the object adapter. @p proxy carries the object adapter's endpoints.
            %     The locator considers an object adapter to be active after it has registered its endpoints. When @p proxy is
            %     null, the endpoints are unregistered and the locator considers the object adapter inactive.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Ice.AdapterAlreadyActiveException - Thrown when an object adapter with the same adapter ID has already
            %     registered its endpoints. Since this operation is marked idempotent, this exception may be thrown when the
            %     Ice client runtime retries an invocation with a non-null @p proxy.
            %   Ice.AdapterNotFoundException - Thrown when the locator only allows registered object adapters to register
            %     their endpoints and no object adapter with this adapter ID was registered with the locator.
            %   Ice.InvalidReplicaGroupIdException - Thrown when the given replica group does not match the replica group
            %     associated with the adapter ID in the locator's database.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(adapterId);
            os_.writeString(replicaGroupId);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setReplicatedAdapterDirectProxy', 2, true, os_, 0, [], Ice.LocatorRegistryPrx.setReplicatedAdapterDirectProxy_ex_, varargin{:});
        end
        function setServerProcessProxy(obj, id, proxy, varargin)
            % setServerProcessProxy   Registers a proxy to the Process object of a server application.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   proxy (Ice.ProcessPrx) - A proxy to the Process object of the server. This proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   Ice.ServerNotFoundException - Thrown when the locator does not know a server application with this server
            %     ID.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setServerProcessProxy', 2, true, os_, false, Ice.LocatorRegistryPrx.setServerProcessProxy_ex_, varargin{:});
        end
        function r_ = setServerProcessProxyAsync(obj, id, proxy, varargin)
            % setServerProcessProxyAsync   Registers a proxy to the Process object of a server application.
            %
            % Parameters:
            %   id (char) - The server ID.
            %   proxy (Ice.ProcessPrx) - A proxy to the Process object of the server. This proxy is never null.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Ice.ServerNotFoundException - Thrown when the locator does not know a server application with this server
            %     ID.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setServerProcessProxy', 2, true, os_, 0, [], Ice.LocatorRegistryPrx.setServerProcessProxy_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Ice::LocatorRegistry';
        end
        function r = ice_read(is)
            r = is.readProxy('Ice.LocatorRegistryPrx');
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
            % Returns (Ice.LocatorRegistryPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.LocatorRegistryPrx.ice_staticId(), 'Ice.LocatorRegistryPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Ice.LocatorRegistryPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.LocatorRegistryPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        setAdapterDirectProxy_ex_ = { 'Ice.AdapterNotFoundException', 'Ice.AdapterAlreadyActiveException' }
        setReplicatedAdapterDirectProxy_ex_ = { 'Ice.AdapterNotFoundException', 'Ice.AdapterAlreadyActiveException', 'Ice.InvalidReplicaGroupIdException' }
        setServerProcessProxy_ex_ = { 'Ice.ServerNotFoundException' }
    end
end
