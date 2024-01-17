% LocatorRegistryPrx   Summary of LocatorRegistryPrx
%
% The Ice locator registry interface. This interface is used by servers to register adapter endpoints with the
% locator.  The LocatorRegistry interface is intended to be used by Ice internals and by
% locator implementations. Regular user code should not attempt to use any functionality of this interface directly.
%
% LocatorRegistryPrx Methods:
%   setAdapterDirectProxy - Set the adapter endpoints with the locator registry.
%   setAdapterDirectProxyAsync - Set the adapter endpoints with the locator registry.
%   setReplicatedAdapterDirectProxy - Set the adapter endpoints with the locator registry.
%   setReplicatedAdapterDirectProxyAsync - Set the adapter endpoints with the locator registry.
%   setServerProcessProxy - Set the process proxy for a server.
%   setServerProcessProxyAsync - Set the process proxy for a server.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Locator.ice by slice2matlab version 3.7.10

classdef LocatorRegistryPrx < Ice.ObjectPrx
    methods
        function setAdapterDirectProxy(obj, id, proxy, varargin)
            % setAdapterDirectProxy   Set the adapter endpoints with the locator registry.
            %
            % Parameters:
            %   id (char) - The adapter id.
            %   proxy (Ice.ObjectPrx) - The adapter proxy (a dummy direct proxy created by the adapter). The direct proxy contains the
            %     adapter endpoints.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   Ice.AdapterAlreadyActiveException - Raised if an adapter with the same id is already active.
            %   Ice.AdapterNotFoundException - Raised if the adapter cannot be found, or if the locator only allows
            %     registered adapters to set their active proxy and the adapter is not registered with the locator.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setAdapterDirectProxy', 2, true, os_, false, Ice.LocatorRegistryPrx.setAdapterDirectProxy_ex_, varargin{:});
        end
        function r_ = setAdapterDirectProxyAsync(obj, id, proxy, varargin)
            % setAdapterDirectProxyAsync   Set the adapter endpoints with the locator registry.
            %
            % Parameters:
            %   id (char) - The adapter id.
            %   proxy (Ice.ObjectPrx) - The adapter proxy (a dummy direct proxy created by the adapter). The direct proxy contains the
            %     adapter endpoints.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Ice.AdapterAlreadyActiveException - Raised if an adapter with the same id is already active.
            %   Ice.AdapterNotFoundException - Raised if the adapter cannot be found, or if the locator only allows
            %     registered adapters to set their active proxy and the adapter is not registered with the locator.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setAdapterDirectProxy', 2, true, os_, 0, [], Ice.LocatorRegistryPrx.setAdapterDirectProxy_ex_, varargin{:});
        end
        function setReplicatedAdapterDirectProxy(obj, adapterId, replicaGroupId, p, varargin)
            % setReplicatedAdapterDirectProxy   Set the adapter endpoints with the locator registry.
            %
            % Parameters:
            %   adapterId (char) - The adapter id.
            %   replicaGroupId (char) - The replica group id.
            %   p (Ice.ObjectPrx) - The adapter proxy (a dummy direct proxy created by the adapter). The direct proxy contains the adapter
            %     endpoints.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   Ice.AdapterAlreadyActiveException - Raised if an adapter with the same id is already active.
            %   Ice.AdapterNotFoundException - Raised if the adapter cannot be found, or if the locator only allows
            %     registered adapters to set their active proxy and the adapter is not registered with the locator.
            %   Ice.InvalidReplicaGroupIdException - Raised if the given replica group doesn't match the one registered with
            %     the locator registry for this object adapter.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(adapterId);
            os_.writeString(replicaGroupId);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setReplicatedAdapterDirectProxy', 2, true, os_, false, Ice.LocatorRegistryPrx.setReplicatedAdapterDirectProxy_ex_, varargin{:});
        end
        function r_ = setReplicatedAdapterDirectProxyAsync(obj, adapterId, replicaGroupId, p, varargin)
            % setReplicatedAdapterDirectProxyAsync   Set the adapter endpoints with the locator registry.
            %
            % Parameters:
            %   adapterId (char) - The adapter id.
            %   replicaGroupId (char) - The replica group id.
            %   p (Ice.ObjectPrx) - The adapter proxy (a dummy direct proxy created by the adapter). The direct proxy contains the adapter
            %     endpoints.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Ice.AdapterAlreadyActiveException - Raised if an adapter with the same id is already active.
            %   Ice.AdapterNotFoundException - Raised if the adapter cannot be found, or if the locator only allows
            %     registered adapters to set their active proxy and the adapter is not registered with the locator.
            %   Ice.InvalidReplicaGroupIdException - Raised if the given replica group doesn't match the one registered with
            %     the locator registry for this object adapter.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(adapterId);
            os_.writeString(replicaGroupId);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setReplicatedAdapterDirectProxy', 2, true, os_, 0, [], Ice.LocatorRegistryPrx.setReplicatedAdapterDirectProxy_ex_, varargin{:});
        end
        function setServerProcessProxy(obj, id, proxy, varargin)
            % setServerProcessProxy   Set the process proxy for a server.
            %
            % Parameters:
            %   id (char) - The server id.
            %   proxy (Ice.ProcessPrx) - The process proxy.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   Ice.ServerNotFoundException - Raised if the server cannot be found.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setServerProcessProxy', 2, true, os_, false, Ice.LocatorRegistryPrx.setServerProcessProxy_ex_, varargin{:});
        end
        function r_ = setServerProcessProxyAsync(obj, id, proxy, varargin)
            % setServerProcessProxyAsync   Set the process proxy for a server.
            %
            % Parameters:
            %   id (char) - The server id.
            %   proxy (Ice.ProcessPrx) - The process proxy.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Ice.ServerNotFoundException - Raised if the server cannot be found.
            
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
    methods(Hidden=true)
        function obj = LocatorRegistryPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        setAdapterDirectProxy_ex_ = { 'Ice.AdapterNotFoundException', 'Ice.AdapterAlreadyActiveException' }
        setReplicatedAdapterDirectProxy_ex_ = { 'Ice.AdapterNotFoundException', 'Ice.InvalidReplicaGroupIdException', 'Ice.AdapterAlreadyActiveException' }
        setServerProcessProxy_ex_ = { 'Ice.ServerNotFoundException' }
    end
end
