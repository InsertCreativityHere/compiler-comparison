classdef RouterFinderPrx < Ice.ObjectPrx
    %ROUTERFINDERPRX Provides access to a <a href="matlab:help Ice.RouterPrx -displayBanner">RouterPrx</a> object via a fixed identity.
    %   A RouterFinder is always registered with identity |Ice/RouterFinder|. This allows clients to obtain the
    %   associated Router proxy with just the endpoint information of the object. For example, you can use the
    %   RouterFinder proxy |Ice/RouterFinder:tcp -h somehost -p 4061| to get the Router proxy
    %   |MyGlacier2/Router:tcp -h somehost -p 4061|.
    %
    %   Creation
    %     Syntax
    %       prx = Ice.RouterFinderPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   RouterFinderPrx Methods:
    %     getRouter - Gets a proxy to the associated <a href="matlab:help Ice.RouterPrx -displayBanner">RouterPrx</a>.
    %     getRouterAsync - An asynchronous getRouter.
    %
    %   RouterFinderPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Ice::RouterFinder.
    %     uncheckedCast - Creates a RouterFinderPrx from another proxy without any validation.
    %
    %   Generated from Router.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getRouter(obj, context)
            %GETROUTER Gets a proxy to the associated <a href="matlab:help Ice.RouterPrx -displayBanner">RouterPrx</a>. The proxy might point to several replicas.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The router proxy. This proxy is never null.
            %       Ice.RouterPrx scalar | empty array of Ice.RouterPrx
            
            arguments
                obj (1, 1) Ice.RouterFinderPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getRouter', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Ice.RouterPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getRouterAsync(obj, context)
            %GETROUTERASYNC Gets a proxy to the associated <a href="matlab:help Ice.RouterPrx -displayBanner">RouterPrx</a>. The proxy might point to several replicas.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getRouter, Ice.Future.
            
            arguments
                obj (1, 1) Ice.RouterFinderPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Ice.RouterPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getRouter', 0, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Ice::RouterFinder';
        end

        function r = ice_read(is)
            r = is.readProxy('Ice.RouterFinderPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Ice::RouterFinder.
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
            %     r - A Ice.RouterFinderPrx scalar if the target object implements Slice interface 
            %       ::Ice::RouterFinder; otherwise, an empty array of Ice.RouterFinderPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.RouterFinderPrx.ice_staticId(), 'Ice.RouterFinderPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Ice.RouterFinderPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Ice.RouterFinderPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.RouterFinderPrx', varargin{:});
        end
    end
end
