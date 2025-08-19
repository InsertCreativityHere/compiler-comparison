classdef RouterPrx < Ice.ObjectPrx
    %ROUTERPRX Represents an intermediary object that routes requests and replies between clients and Ice objects that are not
    %   directly reachable from these clients.
    %
    %   Creation
    %     Syntax
    %       prx = Ice.RouterPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   RouterPrx Methods:
    %     addProxies - Adds new proxy information to the router's routing table.
    %     addProxiesAsync - An asynchronous addProxies.
    %     getClientProxy - Gets the router's client proxy, i.e., the proxy to use for forwarding requests from the client to the router.
    %     getClientProxyAsync - An asynchronous getClientProxy.
    %     getServerProxy - Gets the router's server proxy, i.e., the proxy to use for forwarding requests from the server to the router.
    %     getServerProxyAsync - An asynchronous getServerProxy.
    %
    %   RouterPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Ice::Router.
    %     uncheckedCast - Creates a RouterPrx from another proxy without any validation.
    %
    %   Generated from Router.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [returnValue, hasRoutingTable] = getClientProxy(obj, context)
            %GETCLIENTPROXY Gets the router's client proxy, i.e., the proxy to use for forwarding requests from the client to the
            %   router. If a null proxy is returned, the client will forward requests to the router's endpoints.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The router's client proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     hasRoutingTable - Indicates whether or not the router supports a routing table. If |true|, the Ice
            %       runtime will call <a href="matlab:help Ice.RouterPrx/addProxies -displayBanner">addProxies</a> to populate the routing table. The Ice runtime assumes the router has
            %       a routing table when |hasRoutingTable| is not set. Introduced in Ice 3.7.
            %       logical scalar | Ice.Unset
            
            arguments
                obj (1, 1) Ice.RouterPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getClientProxy', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            hasRoutingTable = is_.readBoolOpt(1);
            is_.endEncapsulation();
        end

        function future = getClientProxyAsync(obj, context)
            %GETCLIENTPROXYASYNC Gets the router's client proxy, i.e., the proxy to use for forwarding requests from the client to the
            %   router. If a null proxy is returned, the client will forward requests to the router's endpoints.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getClientProxy, Ice.Future.
            
            arguments
                obj (1, 1) Ice.RouterPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                hasRoutingTable = is_.readBoolOpt(1);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = hasRoutingTable;
            end
            future = obj.iceInvokeAsync('getClientProxy', 2, true, [], 2, @unmarshal, {}, context);
        end

        function returnValue = getServerProxy(obj, context)
            %GETSERVERPROXY Gets the router's server proxy, i.e., the proxy to use for forwarding requests from the server to the
            %   router. The Ice runtime uses the endpoints of this proxy as the published endpoints of bi-dir object
            %   adapters.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The router's server proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            
            arguments
                obj (1, 1) Ice.RouterPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getServerProxy', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = getServerProxyAsync(obj, context)
            %GETSERVERPROXYASYNC Gets the router's server proxy, i.e., the proxy to use for forwarding requests from the server to the
            %   router. The Ice runtime uses the endpoints of this proxy as the published endpoints of bi-dir object
            %   adapters.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getServerProxy, Ice.Future.
            
            arguments
                obj (1, 1) Ice.RouterPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getServerProxy', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = addProxies(obj, proxies, context)
            %ADDPROXIES Adds new proxy information to the router's routing table.
            %
            %   Input Arguments
            %     proxies - The proxies to add. Adding a null proxy is an error.
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - Proxies discarded by the router. These proxies are all non-null.
            %       cell array
            
            arguments
                obj (1, 1) Ice.RouterPrx
                proxies (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.ObjectProxySeq.write(os_, proxies);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('addProxies', 2, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Ice.ObjectProxySeq.read(is_);
            is_.endEncapsulation();
        end

        function future = addProxiesAsync(obj, proxies, context)
            %ADDPROXIESASYNC Adds new proxy information to the router's routing table.
            %
            %   Input Arguments
            %     proxies - The proxies to add. Adding a null proxy is an error.
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also addProxies, Ice.Future.
            
            arguments
                obj (1, 1) Ice.RouterPrx
                proxies (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.ObjectProxySeq.write(os_, proxies);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Ice.ObjectProxySeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('addProxies', 2, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Ice::Router';
        end

        function r = ice_read(is)
            r = is.readProxy('Ice.RouterPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Ice::Router.
            %
            %   Input Arguments
            %     p - The proxy to check.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %     context - The request context (optional).
            %       dictionary(string, string) scalar
            %
            %   Output Arguments
            %     r - A Ice.RouterPrx scalar if the target object implements Slice interface 
            %       ::Ice::Router; otherwise, an empty array of Ice.RouterPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.RouterPrx.ice_staticId(), 'Ice.RouterPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Ice.RouterPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Ice.RouterPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.RouterPrx', varargin{:});
        end
    end
end
