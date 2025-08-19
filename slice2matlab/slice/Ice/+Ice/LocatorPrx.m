classdef LocatorPrx < Ice.ObjectPrx
    %LOCATORPRX Client applications use the <a href="matlab:help Ice.LocatorPrx -displayBanner">LocatorPrx</a> object to resolve Ice indirect proxies. This object also allows
    %   server applications to retrieve a proxy to the associated <a href="matlab:help Ice.LocatorRegistryPrx -displayBanner">LocatorRegistryPrx</a> object where they can register
    %   their object adapters.
    %
    %   Creation
    %     Syntax
    %       prx = Ice.LocatorPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   LocatorPrx Methods:
    %     findAdapterById - Finds an object adapter by adapter ID and returns a dummy proxy with the object adapter's endpoint(s).
    %     findAdapterByIdAsync - An asynchronous findAdapterById.
    %     findObjectById - Finds an object by identity and returns a dummy proxy with the endpoint(s) that can be used to reach this object.
    %     findObjectByIdAsync - An asynchronous findObjectById.
    %     getRegistry - Gets a proxy to the locator registry.
    %     getRegistryAsync - An asynchronous getRegistry.
    %
    %   LocatorPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Ice::Locator.
    %     uncheckedCast - Creates a LocatorPrx from another proxy without any validation.
    %
    %   Generated from Locator.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = findObjectById(obj, id, context)
            %FINDOBJECTBYID Finds an object by identity and returns a dummy proxy with the endpoint(s) that can be used to reach this
            %   object. This dummy proxy may be an indirect proxy that requires further resolution using
            %   <a href="matlab:help Ice.LocatorPrx/findAdapterById -displayBanner">findAdapterById</a>.
            %
            %   Input Arguments
            %     id - The identity.
            %       Ice.Identity scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A dummy proxy, or null if an object with the requested identity was not found.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %
            %   Exceptions
            %     Ice.ObjectNotFoundException - Thrown when an object with the requested identity was not found. The caller
            %       should treat this exception like a null return value.
            
            arguments
                obj (1, 1) Ice.LocatorPrx
                id (1, 1) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('findObjectById', 2, true, os_, true, Ice.LocatorPrx.findObjectById_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = findObjectByIdAsync(obj, id, context)
            %FINDOBJECTBYIDASYNC Finds an object by identity and returns a dummy proxy with the endpoint(s) that can be used to reach this
            %   object. This dummy proxy may be an indirect proxy that requires further resolution using
            %   <a href="matlab:help Ice.LocatorPrx/findAdapterById -displayBanner">findAdapterById</a>.
            %
            %   Input Arguments
            %     id - The identity.
            %       Ice.Identity scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also findObjectById, Ice.Future.
            
            arguments
                obj (1, 1) Ice.LocatorPrx
                id (1, 1) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('findObjectById', 2, true, os_, 1, @unmarshal, Ice.LocatorPrx.findObjectById_ex_, context);
        end

        function returnValue = findAdapterById(obj, id, context)
            %FINDADAPTERBYID Finds an object adapter by adapter ID and returns a dummy proxy with the object adapter's endpoint(s).
            %
            %   Input Arguments
            %     id - The adapter ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A dummy proxy with the adapter's endpoints, or null if an object adapter with |id| was not found.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %
            %   Exceptions
            %     Ice.AdapterNotFoundException - Thrown when an object adapter with this adapter ID was not found. The
            %       caller should treat this exception like a null return value.
            
            arguments
                obj (1, 1) Ice.LocatorPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('findAdapterById', 2, true, os_, true, Ice.LocatorPrx.findAdapterById_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = findAdapterByIdAsync(obj, id, context)
            %FINDADAPTERBYIDASYNC Finds an object adapter by adapter ID and returns a dummy proxy with the object adapter's endpoint(s).
            %
            %   Input Arguments
            %     id - The adapter ID.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also findAdapterById, Ice.Future.
            
            arguments
                obj (1, 1) Ice.LocatorPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('findAdapterById', 2, true, os_, 1, @unmarshal, Ice.LocatorPrx.findAdapterById_ex_, context);
        end

        function returnValue = getRegistry(obj, context)
            %GETREGISTRY Gets a proxy to the locator registry.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to the locator registry, or null if this locator has no associated registry.
            %       Ice.LocatorRegistryPrx scalar | empty array of Ice.LocatorRegistryPrx
            
            arguments
                obj (1, 1) Ice.LocatorPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getRegistry', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Ice.LocatorRegistryPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getRegistryAsync(obj, context)
            %GETREGISTRYASYNC Gets a proxy to the locator registry.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getRegistry, Ice.Future.
            
            arguments
                obj (1, 1) Ice.LocatorPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Ice.LocatorRegistryPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getRegistry', 2, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Ice::Locator';
        end

        function r = ice_read(is)
            r = is.readProxy('Ice.LocatorPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Ice::Locator.
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
            %     r - A Ice.LocatorPrx scalar if the target object implements Slice interface 
            %       ::Ice::Locator; otherwise, an empty array of Ice.LocatorPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.LocatorPrx.ice_staticId(), 'Ice.LocatorPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Ice.LocatorPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Ice.LocatorPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.LocatorPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        findObjectById_ex_ = { 'Ice.ObjectNotFoundException' }
        findAdapterById_ex_ = { 'Ice.AdapterNotFoundException' }
    end
end
