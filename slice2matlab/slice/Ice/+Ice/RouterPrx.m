% RouterPrx   Summary of RouterPrx
%
% The Ice router interface. Routers can be set either globally though the Communicator, or with
% ice_router on specific proxies.
%
% RouterPrx Methods:
%   getClientProxy - Get the router's client proxy, i.e., the proxy to use for forwarding requests from the client to the router. If a null proxy is returned, the client will forward requests to the router's endpoints.
%   getClientProxyAsync - Get the router's client proxy, i.e., the proxy to use for forwarding requests from the client to the router. If a null proxy is returned, the client will forward requests to the router's endpoints.
%   getServerProxy - Get the router's server proxy, i.e., the proxy to use for forwarding requests from the server to the router.
%   getServerProxyAsync - Get the router's server proxy, i.e., the proxy to use for forwarding requests from the server to the router.
%   addProxies - Add new proxy information to the router's routing table.
%   addProxiesAsync - Add new proxy information to the router's routing table.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Router.ice by slice2matlab version 3.8.0-alpha.0

classdef RouterPrx < Ice.ObjectPrx
    methods
        function [result, hasRoutingTable] = getClientProxy(obj, varargin)
            % getClientProxy   Get the router's client proxy, i.e., the proxy to use for forwarding requests from the client to the router.
            % If a null proxy is returned, the client will forward requests to the router's endpoints.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Ice.ObjectPrx) - The router's client proxy.
            %   hasRoutingTable (logical) - Indicates whether or not the router supports a routing table. If it is supported, the
            %     Ice runtime will call addProxies to populate the routing table. This out parameter is only supported
            %     starting with Ice 3.7.
            %     The Ice runtime assumes the router has a routing table if the hasRoutingTable is not set.
            
            is_ = obj.iceInvoke('getClientProxy', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            hasRoutingTable = is_.readBoolOpt(1);
            is_.endEncapsulation();
        end
        function r_ = getClientProxyAsync(obj, varargin)
            % getClientProxyAsync   Get the router's client proxy, i.e., the proxy to use for forwarding requests from the client to the router.
            % If a null proxy is returned, the client will forward requests to the router's endpoints.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                hasRoutingTable = is_.readBoolOpt(1);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = hasRoutingTable;
            end
            r_ = obj.iceInvokeAsync('getClientProxy', 1, true, [], 2, @unmarshal, {}, varargin{:});
        end
        function result = getServerProxy(obj, varargin)
            % getServerProxy   Get the router's server proxy, i.e., the proxy to use for forwarding requests from the server to the router.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - The router's server proxy.
            
            is_ = obj.iceInvoke('getServerProxy', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = getServerProxyAsync(obj, varargin)
            % getServerProxyAsync   Get the router's server proxy, i.e., the proxy to use for forwarding requests from the server to the router.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getServerProxy', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = addProxies(obj, proxies, varargin)
            % addProxies   Add new proxy information to the router's routing table.
            %
            % Parameters:
            %   proxies (Ice.ObjectProxySeq) - The proxies to add. Adding a null proxy is an error.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectProxySeq) - Proxies discarded by the router. These proxies are all non-null.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.ObjectProxySeq.write(os_, proxies);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('addProxies', 1, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.ObjectProxySeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = addProxiesAsync(obj, proxies, varargin)
            % addProxiesAsync   Add new proxy information to the router's routing table.
            %
            % Parameters:
            %   proxies (Ice.ObjectProxySeq) - The proxies to add. Adding a null proxy is an error.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.ObjectProxySeq.write(os_, proxies);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Ice.ObjectProxySeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('addProxies', 1, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Ice::Router';
        end
        function r = ice_read(is)
            r = is.readProxy('Ice.RouterPrx');
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
            % Returns (Ice.RouterPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.RouterPrx.ice_staticId(), 'Ice.RouterPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Ice.RouterPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.RouterPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = RouterPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
