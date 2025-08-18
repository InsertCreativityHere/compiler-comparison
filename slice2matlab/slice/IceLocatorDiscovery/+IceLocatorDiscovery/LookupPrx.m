classdef LookupPrx < Ice.ObjectPrx
    %LOOKUPPRX Looks for a locator using UDP multicast.
    %
    %   Creation
    %     Syntax
    %       prx = IceLocatorDiscovery.LookupPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   LookupPrx Methods:
    %     findLocator - Finds a locator proxy with the given instance name.
    %     findLocatorAsync - An asynchronous findLocator.
    %
    %   LookupPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceLocatorDiscovery::Lookup.
    %     uncheckedCast - Creates a LookupPrx from another proxy without any validation.
    %
    %   See also IceLocatorDiscovery.LookupReply
    %
    %   Remarks
    %     This interface is implemented by Ice locator implementations and can be used by clients to find
    %     available Ice locators on the network.
    %     Ice locator implementations provide a well-known 'Ice/LocatorLookup' object accessible through UDP multicast.
    %     Clients typically make a multicast findLocator request to find the locator proxy.
    %
    %   Generated from Lookup.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function findLocator(obj, instanceName, reply, context)
            %FINDLOCATOR Finds a locator proxy with the given instance name.
            %
            %   Input Arguments
            %     instanceName - Restrict the search to Ice registries configured with the given instance name. If
            %       empty, all the available registries will reply.
            %       character vector
            %     reply - The reply object to use to send the reply.
            %       IceLocatorDiscovery.LookupReplyPrx scalar | empty array of IceLocatorDiscovery.LookupReplyPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceLocatorDiscovery.LookupPrx
                instanceName (1, :) char
                reply IceLocatorDiscovery.LookupReplyPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(instanceName);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('findLocator', 2, false, os_, false, {}, context);
        end

        function future = findLocatorAsync(obj, instanceName, reply, context)
            %FINDLOCATORASYNC Finds a locator proxy with the given instance name.
            %
            %   Input Arguments
            %     instanceName - Restrict the search to Ice registries configured with the given instance name. If
            %       empty, all the available registries will reply.
            %       character vector
            %     reply - The reply object to use to send the reply.
            %       IceLocatorDiscovery.LookupReplyPrx scalar | empty array of IceLocatorDiscovery.LookupReplyPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also findLocator, Ice.Future.
            
            arguments
                obj (1, 1) IceLocatorDiscovery.LookupPrx
                instanceName (1, :) char
                reply IceLocatorDiscovery.LookupReplyPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(instanceName);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('findLocator', 2, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceLocatorDiscovery::Lookup';
        end

        function r = ice_read(is)
            r = is.readProxy('IceLocatorDiscovery.LookupPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceLocatorDiscovery::Lookup.
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
            %     r - A IceLocatorDiscovery.LookupPrx scalar if the target object implements Slice interface 
            %       ::IceLocatorDiscovery::Lookup; otherwise, an empty array of IceLocatorDiscovery.LookupPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceLocatorDiscovery.LookupPrx.ice_staticId(), 'IceLocatorDiscovery.LookupPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceLocatorDiscovery.LookupPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceLocatorDiscovery.LookupPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceLocatorDiscovery.LookupPrx', varargin{:});
        end
    end
end
