classdef LookupReplyPrx < Ice.ObjectPrx
    %LOOKUPREPLYPRX Represents a callback object implemented by IceDiscovery clients. It allows IceDiscovery clients to receive
    %   replies to Lookup requests.
    %
    %   Creation
    %     Syntax
    %       prx = IceDiscovery.LookupReplyPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   LookupReplyPrx Methods:
    %     foundAdapterById - Provides a reply to a <a href="matlab:help IceDiscovery.LookupPrx/findAdapterById -displayBanner">findAdapterById</a> request.
    %     foundAdapterByIdAsync - An asynchronous foundAdapterById.
    %     foundObjectById - Provides a reply to a <a href="matlab:help IceDiscovery.LookupPrx/findObjectById -displayBanner">findObjectById</a> request.
    %     foundObjectByIdAsync - An asynchronous foundObjectById.
    %
    %   LookupReplyPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceDiscovery::LookupReply.
    %     uncheckedCast - Creates a LookupReplyPrx from another proxy without any validation.
    %
    %   Generated from Lookup.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function foundObjectById(obj, id, prx, context)
            %FOUNDOBJECTBYID Provides a reply to a <a href="matlab:help IceDiscovery.LookupPrx/findObjectById -displayBanner">findObjectById</a> request.
            %
            %   Input Arguments
            %     id - The identity of the object.
            %       Ice.Identity scalar
            %     prx - The proxy of the object. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceDiscovery.LookupReplyPrx
                id (1, 1) Ice.Identity
                prx Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            os_.writeProxy(prx);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('foundObjectById', 0, false, os_, false, {}, context);
        end

        function future = foundObjectByIdAsync(obj, id, prx, context)
            %FOUNDOBJECTBYIDASYNC Provides a reply to a <a href="matlab:help IceDiscovery.LookupPrx/findObjectById -displayBanner">findObjectById</a> request.
            %
            %   Input Arguments
            %     id - The identity of the object.
            %       Ice.Identity scalar
            %     prx - The proxy of the object. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also foundObjectById, Ice.Future.
            
            arguments
                obj (1, 1) IceDiscovery.LookupReplyPrx
                id (1, 1) Ice.Identity
                prx Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            os_.writeProxy(prx);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('foundObjectById', 0, false, os_, 0, [], {}, context);
        end

        function foundAdapterById(obj, id, prx, isReplicaGroup, context)
            %FOUNDADAPTERBYID Provides a reply to a <a href="matlab:help IceDiscovery.LookupPrx/findAdapterById -displayBanner">findAdapterById</a> request.
            %
            %   Input Arguments
            %     id - The adapter ID.
            %       character vector
            %     prx - The adapter proxy (a dummy proxy created by the adapter). The proxy provides the adapter
            %       endpoints. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     isReplicaGroup - Indicates whether the adapter is a member of a replica group.
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceDiscovery.LookupReplyPrx
                id (1, :) char
                prx Ice.ObjectPrx {mustBeScalarOrEmpty}
                isReplicaGroup (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeProxy(prx);
            os_.writeBool(isReplicaGroup);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('foundAdapterById', 0, false, os_, false, {}, context);
        end

        function future = foundAdapterByIdAsync(obj, id, prx, isReplicaGroup, context)
            %FOUNDADAPTERBYIDASYNC Provides a reply to a <a href="matlab:help IceDiscovery.LookupPrx/findAdapterById -displayBanner">findAdapterById</a> request.
            %
            %   Input Arguments
            %     id - The adapter ID.
            %       character vector
            %     prx - The adapter proxy (a dummy proxy created by the adapter). The proxy provides the adapter
            %       endpoints. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     isReplicaGroup - Indicates whether the adapter is a member of a replica group.
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also foundAdapterById, Ice.Future.
            
            arguments
                obj (1, 1) IceDiscovery.LookupReplyPrx
                id (1, :) char
                prx Ice.ObjectPrx {mustBeScalarOrEmpty}
                isReplicaGroup (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeProxy(prx);
            os_.writeBool(isReplicaGroup);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('foundAdapterById', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceDiscovery::LookupReply';
        end

        function r = ice_read(is)
            r = is.readProxy('IceDiscovery.LookupReplyPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceDiscovery::LookupReply.
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
            %     r - A IceDiscovery.LookupReplyPrx scalar if the target object implements Slice interface 
            %       ::IceDiscovery::LookupReply; otherwise, an empty array of IceDiscovery.LookupReplyPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceDiscovery.LookupReplyPrx.ice_staticId(), 'IceDiscovery.LookupReplyPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceDiscovery.LookupReplyPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceDiscovery.LookupReplyPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceDiscovery.LookupReplyPrx', varargin{:});
        end
    end
end
