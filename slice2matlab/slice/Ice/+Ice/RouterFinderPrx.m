% RouterFinderPrx   Summary of RouterFinderPrx
%
% This interface should be implemented by services implementing the
% Ice::Router interface. It should be advertised through an Ice
% object with the identity `Ice/RouterFinder'. This allows clients to
% retrieve the router proxy with just the endpoint information of the
% service.
%
% RouterFinderPrx Methods:
%   getRouter - Get the router proxy implemented by the process hosting this finder object.
%   getRouterAsync - Get the router proxy implemented by the process hosting this finder object.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Router.ice by slice2matlab version 3.7.10

classdef RouterFinderPrx < Ice.ObjectPrx
    methods
        function result = getRouter(obj, varargin)
            % getRouter   Get the router proxy implemented by the process hosting this
            % finder object. The proxy might point to several replicas.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.RouterPrx) - The router proxy.
            
            is_ = obj.iceInvoke('getRouter', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.RouterPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getRouterAsync(obj, varargin)
            % getRouterAsync   Get the router proxy implemented by the process hosting this
            % finder object. The proxy might point to several replicas.
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
    methods(Hidden=true)
        function obj = RouterFinderPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
