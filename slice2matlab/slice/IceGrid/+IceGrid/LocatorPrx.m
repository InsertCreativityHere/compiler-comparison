% LocatorPrx   Summary of LocatorPrx
%
% The IceGrid locator interface provides access to the {@link Query} and {@link Registry} object of the IceGrid
% registry.
%
% LocatorPrx Methods:
%   getLocalRegistry - Get the proxy of the registry object hosted by this IceGrid registry.
%   getLocalRegistryAsync - Get the proxy of the registry object hosted by this IceGrid registry.
%   getLocalQuery - Get the proxy of the query object hosted by this IceGrid registry.
%   getLocalQueryAsync - Get the proxy of the query object hosted by this IceGrid registry.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also IceGrid.Query, IceGrid.Registry

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Registry.ice by slice2matlab version 3.8.0-alpha.0

classdef LocatorPrx < Ice.LocatorPrx
    methods
        function result = getLocalRegistry(obj, varargin)
            % getLocalRegistry   Get the proxy of the registry object hosted by this IceGrid registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.RegistryPrx) - The proxy of the registry object. The returned proxy is never null.
            
            is_ = obj.iceInvoke('getLocalRegistry', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.RegistryPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getLocalRegistryAsync(obj, varargin)
            % getLocalRegistryAsync   Get the proxy of the registry object hosted by this IceGrid registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.RegistryPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getLocalRegistry', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getLocalQuery(obj, varargin)
            % getLocalQuery   Get the proxy of the query object hosted by this IceGrid registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.QueryPrx) - The proxy of the query object. The returned proxy is never null.
            
            is_ = obj.iceInvoke('getLocalQuery', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.QueryPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getLocalQueryAsync(obj, varargin)
            % getLocalQueryAsync   Get the proxy of the query object hosted by this IceGrid registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.QueryPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getLocalQuery', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::Locator';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.LocatorPrx');
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
            % Returns (IceGrid.LocatorPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.LocatorPrx.ice_staticId(), 'IceGrid.LocatorPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.LocatorPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.LocatorPrx', varargin{:});
        end
    end
end
