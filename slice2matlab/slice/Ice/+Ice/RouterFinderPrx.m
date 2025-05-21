% RouterFinderPrx   Summary of RouterFinderPrx
%
% Provides access to a Router object via a fixed identity.
% A RouterFinder is always registered with identity `Ice/RouterFinder`. This allows clients to obtain the
% associated Router proxy with just the endpoint information of the object. For example, you can use the
% RouterFinder proxy `Ice/RouterFinder:tcp -h somehost -p 4061` to get the Router proxy
% `MyGlacier2/Router:tcp -h somehost -p 4061`.
%
% RouterFinderPrx Methods:
%   getRouter - Gets a proxy to the associated Router.
%   getRouterAsync - Gets a proxy to the associated Router.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from Router.ice by slice2matlab version 3.8.0-alpha.0

classdef RouterFinderPrx < Ice.ObjectPrx
    methods
        function result = getRouter(obj, varargin)
            % getRouter   Gets a proxy to the associated Router. The proxy might point to several replicas.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.RouterPrx) - The router proxy. This proxy is never null.
            
            is_ = obj.iceInvoke('getRouter', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.RouterPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getRouterAsync(obj, varargin)
            % getRouterAsync   Gets a proxy to the associated Router. The proxy might point to several replicas.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Ice.RouterPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getRouter', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Ice::RouterFinder';
        end
        function r = ice_read(is)
            r = is.readProxy('Ice.RouterFinderPrx');
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
            % Returns (Ice.RouterFinderPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.RouterFinderPrx.ice_staticId(), 'Ice.RouterFinderPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Ice.RouterFinderPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.RouterFinderPrx', varargin{:});
        end
    end
end
