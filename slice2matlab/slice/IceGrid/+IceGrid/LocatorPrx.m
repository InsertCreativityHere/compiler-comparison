% LocatorPrx   Summary of LocatorPrx
%
% Provides access to the Query and Registry objects implemented by the IceGrid registry.
%
% LocatorPrx Methods:
%   getLocalRegistry - Gets a proxy to the registry object hosted by this IceGrid registry.
%   getLocalRegistryAsync - Gets a proxy to the registry object hosted by this IceGrid registry.
%   getLocalQuery - Gets a proxy to the query object hosted by this IceGrid registry.
%   getLocalQueryAsync - Gets a proxy to the query object hosted by this IceGrid registry.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from Registry.ice by slice2matlab version 3.8.0-alpha.0

classdef LocatorPrx < Ice.LocatorPrx
    methods
        function result = getLocalRegistry(obj, varargin)
            % getLocalRegistry   Gets a proxy to the registry object hosted by this IceGrid registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.RegistryPrx) - A proxy to the registry object. This proxy is never null.
            
            is_ = obj.iceInvoke('getLocalRegistry', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.RegistryPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getLocalRegistryAsync(obj, varargin)
            % getLocalRegistryAsync   Gets a proxy to the registry object hosted by this IceGrid registry.
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
            % getLocalQuery   Gets a proxy to the query object hosted by this IceGrid registry.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.QueryPrx) - A proxy to the query object. This proxy is never null.
            
            is_ = obj.iceInvoke('getLocalQuery', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.QueryPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getLocalQueryAsync(obj, varargin)
            % getLocalQueryAsync   Gets a proxy to the query object hosted by this IceGrid registry.
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
