classdef LocatorRegistryPrx < Ice.ObjectPrx
    %LOCATORREGISTRYPRX A server application registers the endpoints of its indirect object adapters with the LocatorRegistry object.
    %
    %   Creation
    %     Syntax
    %       prx = Ice.LocatorRegistryPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   LocatorRegistryPrx Methods:
    %     setAdapterDirectProxy - Registers or unregisters the endpoints of an object adapter.
    %     setAdapterDirectProxyAsync - An asynchronous setAdapterDirectProxy.
    %     setReplicatedAdapterDirectProxy - Registers or unregisters the endpoints of an object adapter.
    %     setReplicatedAdapterDirectProxyAsync - An asynchronous setReplicatedAdapterDirectProxy.
    %     setServerProcessProxy - Registers a proxy to the <a href="matlab:help Ice.ProcessPrx -displayBanner">ProcessPrx</a> object of a server application.
    %     setServerProcessProxyAsync - An asynchronous setServerProcessProxy.
    %
    %   LocatorRegistryPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Ice::LocatorRegistry.
    %     uncheckedCast - Creates a LocatorRegistryPrx from another proxy without any validation.
    %
    %   Generated from LocatorRegistry.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function setAdapterDirectProxy(obj, id, proxy, context)
            %SETADAPTERDIRECTPROXY Registers or unregisters the endpoints of an object adapter.
            %
            %   Input Arguments
            %     id - The adapter ID.
            %       character vector
            %     proxy - A dummy proxy created by the object adapter. |proxy| carries the object adapter's endpoints.
            %       The locator considers an object adapter to be active after it has registered its endpoints.
            %       When |proxy| is null, the endpoints are unregistered and the locator considers the object adapter inactive.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Ice.AdapterNotFoundException - Thrown when the locator only allows registered object adapters to register
            %       their endpoints and no object adapter with this adapter ID was registered with the locator.
            %     Ice.AdapterAlreadyActiveException - Thrown when an object adapter with the same adapter ID has already
            %       registered its endpoints. Since this operation is marked idempotent, this exception may be thrown when the
            %       Ice client runtime retries an invocation with a non-null |proxy|.
            
            arguments
                obj (1, 1) Ice.LocatorRegistryPrx
                id (1, :) char
                proxy Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setAdapterDirectProxy', 2, true, os_, false, Ice.LocatorRegistryPrx.setAdapterDirectProxy_ex_, context);
        end

        function future = setAdapterDirectProxyAsync(obj, id, proxy, context)
            %SETADAPTERDIRECTPROXYASYNC Registers or unregisters the endpoints of an object adapter.
            %
            %   Input Arguments
            %     id - The adapter ID.
            %       character vector
            %     proxy - A dummy proxy created by the object adapter. |proxy| carries the object adapter's endpoints.
            %       The locator considers an object adapter to be active after it has registered its endpoints.
            %       When |proxy| is null, the endpoints are unregistered and the locator considers the object adapter inactive.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setAdapterDirectProxy, Ice.Future.
            
            arguments
                obj (1, 1) Ice.LocatorRegistryPrx
                id (1, :) char
                proxy Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setAdapterDirectProxy', 2, true, os_, 0, [], Ice.LocatorRegistryPrx.setAdapterDirectProxy_ex_, context);
        end

        function setReplicatedAdapterDirectProxy(obj, adapterId, replicaGroupId, proxy, context)
            %SETREPLICATEDADAPTERDIRECTPROXY Registers or unregisters the endpoints of an object adapter. This object adapter is a member of a replica
            %   group.
            %
            %   Input Arguments
            %     adapterId - The adapter ID.
            %       character vector
            %     replicaGroupId - The replica group ID.
            %       character vector
            %     proxy - A dummy proxy created by the object adapter. |proxy| carries the object adapter's endpoints.
            %       The locator considers an object adapter to be active after it has registered its endpoints. When |proxy| is
            %       null, the endpoints are unregistered and the locator considers the object adapter inactive.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Ice.AdapterNotFoundException - Thrown when the locator only allows registered object adapters to register
            %       their endpoints and no object adapter with this adapter ID was registered with the locator.
            %     Ice.AdapterAlreadyActiveException - Thrown when an object adapter with the same adapter ID has already
            %       registered its endpoints. Since this operation is marked idempotent, this exception may be thrown when the
            %       Ice client runtime retries an invocation with a non-null |proxy|.
            %     Ice.InvalidReplicaGroupIdException - Thrown when the given replica group does not match the replica group
            %       associated with the adapter ID in the locator's database.
            
            arguments
                obj (1, 1) Ice.LocatorRegistryPrx
                adapterId (1, :) char
                replicaGroupId (1, :) char
                proxy Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(adapterId);
            os_.writeString(replicaGroupId);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setReplicatedAdapterDirectProxy', 2, true, os_, false, Ice.LocatorRegistryPrx.setReplicatedAdapterDirectProxy_ex_, context);
        end

        function future = setReplicatedAdapterDirectProxyAsync(obj, adapterId, replicaGroupId, proxy, context)
            %SETREPLICATEDADAPTERDIRECTPROXYASYNC Registers or unregisters the endpoints of an object adapter. This object adapter is a member of a replica
            %   group.
            %
            %   Input Arguments
            %     adapterId - The adapter ID.
            %       character vector
            %     replicaGroupId - The replica group ID.
            %       character vector
            %     proxy - A dummy proxy created by the object adapter. |proxy| carries the object adapter's endpoints.
            %       The locator considers an object adapter to be active after it has registered its endpoints. When |proxy| is
            %       null, the endpoints are unregistered and the locator considers the object adapter inactive.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setReplicatedAdapterDirectProxy, Ice.Future.
            
            arguments
                obj (1, 1) Ice.LocatorRegistryPrx
                adapterId (1, :) char
                replicaGroupId (1, :) char
                proxy Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(adapterId);
            os_.writeString(replicaGroupId);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setReplicatedAdapterDirectProxy', 2, true, os_, 0, [], Ice.LocatorRegistryPrx.setReplicatedAdapterDirectProxy_ex_, context);
        end

        function setServerProcessProxy(obj, id, proxy, context)
            %SETSERVERPROCESSPROXY Registers a proxy to the <a href="matlab:help Ice.ProcessPrx -displayBanner">ProcessPrx</a> object of a server application.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     proxy - A proxy to the Process object of the server. This proxy is never null.
            %       Ice.ProcessPrx scalar | empty array of Ice.ProcessPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Ice.ServerNotFoundException - Thrown when the locator does not know a server application with this server
            %       ID.
            
            arguments
                obj (1, 1) Ice.LocatorRegistryPrx
                id (1, :) char
                proxy Ice.ProcessPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setServerProcessProxy', 2, true, os_, false, Ice.LocatorRegistryPrx.setServerProcessProxy_ex_, context);
        end

        function future = setServerProcessProxyAsync(obj, id, proxy, context)
            %SETSERVERPROCESSPROXYASYNC Registers a proxy to the <a href="matlab:help Ice.ProcessPrx -displayBanner">ProcessPrx</a> object of a server application.
            %
            %   Input Arguments
            %     id - The server ID.
            %       character vector
            %     proxy - A proxy to the Process object of the server. This proxy is never null.
            %       Ice.ProcessPrx scalar | empty array of Ice.ProcessPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setServerProcessProxy, Ice.Future.
            
            arguments
                obj (1, 1) Ice.LocatorRegistryPrx
                id (1, :) char
                proxy Ice.ProcessPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setServerProcessProxy', 2, true, os_, 0, [], Ice.LocatorRegistryPrx.setServerProcessProxy_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Ice::LocatorRegistry';
        end

        function r = ice_read(is)
            r = is.readProxy('Ice.LocatorRegistryPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Ice::LocatorRegistry.
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
            %     r - A Ice.LocatorRegistryPrx scalar if the target object implements Slice interface 
            %       ::Ice::LocatorRegistry; otherwise, an empty array of Ice.LocatorRegistryPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.LocatorRegistryPrx.ice_staticId(), 'Ice.LocatorRegistryPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Ice.LocatorRegistryPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Ice.LocatorRegistryPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.LocatorRegistryPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        setAdapterDirectProxy_ex_ = { 'Ice.AdapterNotFoundException', 'Ice.AdapterAlreadyActiveException' }
        setReplicatedAdapterDirectProxy_ex_ = { 'Ice.AdapterNotFoundException', 'Ice.AdapterAlreadyActiveException', 'Ice.InvalidReplicaGroupIdException' }
        setServerProcessProxy_ex_ = { 'Ice.ServerNotFoundException' }
    end
end
