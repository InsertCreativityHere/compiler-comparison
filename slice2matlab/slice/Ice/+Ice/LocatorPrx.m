% LocatorPrx   Summary of LocatorPrx
%
% Client applications use the Locator object to resolve Ice indirect proxies. This object also allows
% server applications to retrieve a proxy to the associated LocatorRegistry object where they can register
% their object adapters.
%
% LocatorPrx Methods:
%   findObjectById - Finds an object by identity and returns a dummy proxy with the endpoint(s) that can be used to reach this object.
%   findObjectByIdAsync - Finds an object by identity and returns a dummy proxy with the endpoint(s) that can be used to reach this object.
%   findAdapterById - Finds an object adapter by adapter ID and returns a dummy proxy with the object adapter's endpoint(s).
%   findAdapterByIdAsync - Finds an object adapter by adapter ID and returns a dummy proxy with the object adapter's endpoint(s).
%   getRegistry - Gets a proxy to the locator registry.
%   getRegistryAsync - Gets a proxy to the locator registry.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from Locator.ice by slice2matlab version 3.8.0-alpha.0

classdef LocatorPrx < Ice.ObjectPrx
    methods
        function result = findObjectById(obj, id, varargin)
            % findObjectById   Finds an object by identity and returns a dummy proxy with the endpoint(s) that can be used to reach this
            % object. This dummy proxy may be an indirect proxy that requires further resolution using
            % findAdapterById.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - A dummy proxy, or null if an object with the requested identity was not found.
            %
            % Exceptions:
            %   Ice.ObjectNotFoundException - Thrown when an object with the requested identity was not found. The caller
            %     should treat this exception like a null return value.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('findObjectById', 2, true, os_, true, Ice.LocatorPrx.findObjectById_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = findObjectByIdAsync(obj, id, varargin)
            % findObjectByIdAsync   Finds an object by identity and returns a dummy proxy with the endpoint(s) that can be used to reach this
            % object. This dummy proxy may be an indirect proxy that requires further resolution using
            % findAdapterById.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Ice.ObjectNotFoundException - Thrown when an object with the requested identity was not found. The caller
            %     should treat this exception like a null return value.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('findObjectById', 2, true, os_, 1, @unmarshal, Ice.LocatorPrx.findObjectById_ex_, varargin{:});
        end
        function result = findAdapterById(obj, id, varargin)
            % findAdapterById   Finds an object adapter by adapter ID and returns a dummy proxy with the object adapter's endpoint(s).
            %
            % Parameters:
            %   id (char) - The adapter ID.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - A dummy proxy with the adapter's endpoints, or null if an object adapter with @p id was not found.
            %
            % Exceptions:
            %   Ice.AdapterNotFoundException - Thrown when an object adapter with this adapter ID was not found. The
            %     caller should treat this exception like a null return value.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('findAdapterById', 2, true, os_, true, Ice.LocatorPrx.findAdapterById_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = findAdapterByIdAsync(obj, id, varargin)
            % findAdapterByIdAsync   Finds an object adapter by adapter ID and returns a dummy proxy with the object adapter's endpoint(s).
            %
            % Parameters:
            %   id (char) - The adapter ID.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Ice.AdapterNotFoundException - Thrown when an object adapter with this adapter ID was not found. The
            %     caller should treat this exception like a null return value.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('findAdapterById', 2, true, os_, 1, @unmarshal, Ice.LocatorPrx.findAdapterById_ex_, varargin{:});
        end
        function result = getRegistry(obj, varargin)
            % getRegistry   Gets a proxy to the locator registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.LocatorRegistryPrx) - A proxy to the locator registry, or null if this locator has no associated registry.
            
            is_ = obj.iceInvoke('getRegistry', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.LocatorRegistryPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getRegistryAsync(obj, varargin)
            % getRegistryAsync   Gets a proxy to the locator registry.
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
            r_ = obj.iceInvokeAsync('getRegistry', 2, true, [], 1, @unmarshal, {}, varargin{:});
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
    properties(Constant,Access=private)
        findObjectById_ex_ = { 'Ice.ObjectNotFoundException' }
        findAdapterById_ex_ = { 'Ice.AdapterNotFoundException' }
    end
end
