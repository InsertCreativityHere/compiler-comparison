classdef LocatorPrx < Ice.LocatorPrx
    %LOCATORPRX Provides access to the <a href="matlab:help IceGrid.QueryPrx -displayBanner">QueryPrx</a> and <a href="matlab:help IceGrid.RegistryPrx -displayBanner">RegistryPrx</a> objects implemented by the IceGrid registry.
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.LocatorPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   LocatorPrx Methods:
    %     getLocalQuery - Gets a proxy to the query object hosted by this IceGrid registry.
    %     getLocalQueryAsync - An asynchronous getLocalQuery.
    %     getLocalRegistry - Gets a proxy to the registry object hosted by this IceGrid registry.
    %     getLocalRegistryAsync - An asynchronous getLocalRegistry.
    %
    %   LocatorPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::Locator.
    %     uncheckedCast - Creates a LocatorPrx from another proxy without any validation.
    %
    %   Generated from Registry.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getLocalRegistry(obj, context)
            %GETLOCALREGISTRY Gets a proxy to the registry object hosted by this IceGrid registry.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to the registry object. This proxy is never null.
            %       IceGrid.RegistryPrx scalar | empty array of IceGrid.RegistryPrx
            
            arguments
                obj (1, 1) IceGrid.LocatorPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getLocalRegistry', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = IceGrid.RegistryPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getLocalRegistryAsync(obj, context)
            %GETLOCALREGISTRYASYNC Gets a proxy to the registry object hosted by this IceGrid registry.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getLocalRegistry, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.LocatorPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.RegistryPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getLocalRegistry', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getLocalQuery(obj, context)
            %GETLOCALQUERY Gets a proxy to the query object hosted by this IceGrid registry.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to the query object. This proxy is never null.
            %       IceGrid.QueryPrx scalar | empty array of IceGrid.QueryPrx
            
            arguments
                obj (1, 1) IceGrid.LocatorPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getLocalQuery', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = IceGrid.QueryPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getLocalQueryAsync(obj, context)
            %GETLOCALQUERYASYNC Gets a proxy to the query object hosted by this IceGrid registry.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getLocalQuery, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.LocatorPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.QueryPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getLocalQuery', 2, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::Locator';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.LocatorPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::Locator.
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
            %     r - A IceGrid.LocatorPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::Locator; otherwise, an empty array of IceGrid.LocatorPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.LocatorPrx.ice_staticId(), 'IceGrid.LocatorPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.LocatorPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.LocatorPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.LocatorPrx', varargin{:});
        end
    end
end
