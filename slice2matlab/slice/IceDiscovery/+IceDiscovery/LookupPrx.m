classdef LookupPrx < Ice.ObjectPrx
    %LOOKUPPRX Looks up objects and object adapters using UDP multicast.
    %
    %   Creation
    %     Syntax
    %       prx = IceDiscovery.LookupPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   LookupPrx Methods:
    %     findAdapterById - Finds an object adapter.
    %     findAdapterByIdAsync - An asynchronous findAdapterById.
    %     findObjectById - Finds a well-known Ice object.
    %     findObjectByIdAsync - An asynchronous findObjectById.
    %
    %   LookupPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceDiscovery::Lookup.
    %     uncheckedCast - Creates a LookupPrx from another proxy without any validation.
    %
    %   Generated from Lookup.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function findObjectById(obj, domainId, id, reply, context)
            %FINDOBJECTBYID Finds a well-known Ice object.
            %
            %   Input Arguments
            %     domainId - The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
            %       matching domain identifier.
            %       character vector
            %     id - The well-known object identity.
            %       Ice.Identity scalar
            %     reply - The proxy of the LookupReply interface that should be used to send the reply if a matching
            %       object is found. The reply proxy is never null.
            %       IceDiscovery.LookupReplyPrx scalar | empty array of IceDiscovery.LookupReplyPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceDiscovery.LookupPrx
                domainId (1, :) char
                id (1, 1) Ice.Identity
                reply IceDiscovery.LookupReplyPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(domainId);
            Ice.Identity.ice_write(os_, id);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('findObjectById', 2, false, os_, false, {}, context);
        end

        function future = findObjectByIdAsync(obj, domainId, id, reply, context)
            %FINDOBJECTBYIDASYNC Finds a well-known Ice object.
            %
            %   Input Arguments
            %     domainId - The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
            %       matching domain identifier.
            %       character vector
            %     id - The well-known object identity.
            %       Ice.Identity scalar
            %     reply - The proxy of the LookupReply interface that should be used to send the reply if a matching
            %       object is found. The reply proxy is never null.
            %       IceDiscovery.LookupReplyPrx scalar | empty array of IceDiscovery.LookupReplyPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also findObjectById, Ice.Future.
            
            arguments
                obj (1, 1) IceDiscovery.LookupPrx
                domainId (1, :) char
                id (1, 1) Ice.Identity
                reply IceDiscovery.LookupReplyPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(domainId);
            Ice.Identity.ice_write(os_, id);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('findObjectById', 2, false, os_, 0, [], {}, context);
        end

        function findAdapterById(obj, domainId, id, reply, context)
            %FINDADAPTERBYID Finds an object adapter.
            %
            %   Input Arguments
            %     domainId - The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
            %       matching domain identifier.
            %       character vector
            %     id - The adapter ID.
            %       character vector
            %     reply - The proxy of the LookupReply interface that should be used to send the reply if a matching
            %       adapter is found. The reply proxy is never null.
            %       IceDiscovery.LookupReplyPrx scalar | empty array of IceDiscovery.LookupReplyPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceDiscovery.LookupPrx
                domainId (1, :) char
                id (1, :) char
                reply IceDiscovery.LookupReplyPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(domainId);
            os_.writeString(id);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('findAdapterById', 2, false, os_, false, {}, context);
        end

        function future = findAdapterByIdAsync(obj, domainId, id, reply, context)
            %FINDADAPTERBYIDASYNC Finds an object adapter.
            %
            %   Input Arguments
            %     domainId - The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
            %       matching domain identifier.
            %       character vector
            %     id - The adapter ID.
            %       character vector
            %     reply - The proxy of the LookupReply interface that should be used to send the reply if a matching
            %       adapter is found. The reply proxy is never null.
            %       IceDiscovery.LookupReplyPrx scalar | empty array of IceDiscovery.LookupReplyPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also findAdapterById, Ice.Future.
            
            arguments
                obj (1, 1) IceDiscovery.LookupPrx
                domainId (1, :) char
                id (1, :) char
                reply IceDiscovery.LookupReplyPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(domainId);
            os_.writeString(id);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('findAdapterById', 2, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceDiscovery::Lookup';
        end

        function r = ice_read(is)
            r = is.readProxy('IceDiscovery.LookupPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceDiscovery::Lookup.
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
            %     r - A IceDiscovery.LookupPrx scalar if the target object implements Slice interface 
            %       ::IceDiscovery::Lookup; otherwise, an empty array of IceDiscovery.LookupPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceDiscovery.LookupPrx.ice_staticId(), 'IceDiscovery.LookupPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceDiscovery.LookupPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceDiscovery.LookupPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceDiscovery.LookupPrx', varargin{:});
        end
    end
end
