% LocatorPrx   Summary of LocatorPrx
%
% The Ice locator interface. This interface is used by clients to
% lookup adapters and objects. It is also used by servers to get the
% locator registry proxy.
%
% The Locator interface is intended to be used by
% Ice internals and by locator implementations. Regular user code
% should not attempt to use any functionality of this interface
% directly.
%
% LocatorPrx Methods:
%   findObjectById - Find an object by identity and return a proxy that contains the adapter ID or endpoints which can be used to access the object.
%   findObjectByIdAsync - Find an object by identity and return a proxy that contains the adapter ID or endpoints which can be used to access the object.
%   findAdapterById - Find an adapter by id and return a proxy that contains its endpoints.
%   findAdapterByIdAsync - Find an adapter by id and return a proxy that contains its endpoints.
%   getRegistry - Get the locator registry.
%   getRegistryAsync - Get the locator registry.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Locator.ice by slice2matlab version 3.7.10

classdef LocatorPrx < Ice.ObjectPrx
    methods
        function result = findObjectById(obj, id, varargin)
            % findObjectById   Find an object by identity and return a proxy that contains
            % the adapter ID or endpoints which can be used to access the
            % object.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - The proxy, or null if the object is not active.
            %
            % Exceptions:
            %   Ice.ObjectNotFoundException - Raised if the object cannot
            %     be found.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('findObjectById', 1, true, os_, true, Ice.LocatorPrx.findObjectById_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = findObjectByIdAsync(obj, id, varargin)
            % findObjectByIdAsync   Find an object by identity and return a proxy that contains
            % the adapter ID or endpoints which can be used to access the
            % object.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Ice.ObjectNotFoundException - Raised if the object cannot
            %     be found.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('findObjectById', 1, true, os_, 1, @unmarshal, Ice.LocatorPrx.findObjectById_ex_, varargin{:});
        end
        function result = findAdapterById(obj, id, varargin)
            % findAdapterById   Find an adapter by id and return a proxy that contains
            % its endpoints.
            %
            % Parameters:
            %   id (char) - The adapter id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - The adapter proxy, or null if the adapter is not active.
            %
            % Exceptions:
            %   Ice.AdapterNotFoundException - Raised if the adapter cannot be
            %     found.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('findAdapterById', 1, true, os_, true, Ice.LocatorPrx.findAdapterById_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = findAdapterByIdAsync(obj, id, varargin)
            % findAdapterByIdAsync   Find an adapter by id and return a proxy that contains
            % its endpoints.
            %
            % Parameters:
            %   id (char) - The adapter id.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Ice.AdapterNotFoundException - Raised if the adapter cannot be
            %     found.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('findAdapterById', 1, true, os_, 1, @unmarshal, Ice.LocatorPrx.findAdapterById_ex_, varargin{:});
        end
        function result = getRegistry(obj, varargin)
            % getRegistry   Get the locator registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.LocatorRegistryPrx) - The locator registry.
            
            is_ = obj.iceInvoke('getRegistry', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.LocatorRegistryPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getRegistryAsync(obj, varargin)
            % getRegistryAsync   Get the locator registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Ice.LocatorRegistryPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getRegistry', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Ice::Locator';
        end
        function r = ice_read(is)
            r = is.readProxy('Ice.LocatorPrx');
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
            % Returns (Ice.LocatorPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.LocatorPrx.ice_staticId(), 'Ice.LocatorPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Ice.LocatorPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.LocatorPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = LocatorPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        findObjectById_ex_ = { 'Ice.ObjectNotFoundException' }
        findAdapterById_ex_ = { 'Ice.AdapterNotFoundException' }
    end
end
