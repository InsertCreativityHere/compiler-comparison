% LookupPrx   Summary of LookupPrx
%
% The Lookup interface is used by IceDiscovery clients to look for objects and adapters using UDP multicast.
%
% LookupPrx Methods:
%   findObjectById - Request to find an Ice object
%   findObjectByIdAsync - Request to find an Ice object
%   findAdapterById - Request to find an object adapter
%   findAdapterByIdAsync - Request to find an object adapter
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceDiscovery.ice by slice2matlab version 3.8.0-alpha.0

classdef LookupPrx < Ice.ObjectPrx
    methods
        function findObjectById(obj, domainId, id, reply, varargin)
            % findObjectById   Request to find an Ice object
            %
            % Parameters:
            %   domainId (char) - The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
            %     matching domain identifier.
            %   id (Ice.Identity) - The object identity.
            %   reply (IceDiscovery.LookupReplyPrx) - The proxy of the LookupReply interface that should be used to send the reply if a matching
            %     object is found.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(domainId);
            Ice.Identity.ice_write(os_, id);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('findObjectById', 2, false, os_, false, {}, varargin{:});
        end
        function r_ = findObjectByIdAsync(obj, domainId, id, reply, varargin)
            % findObjectByIdAsync   Request to find an Ice object
            %
            % Parameters:
            %   domainId (char) - The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
            %     matching domain identifier.
            %   id (Ice.Identity) - The object identity.
            %   reply (IceDiscovery.LookupReplyPrx) - The proxy of the LookupReply interface that should be used to send the reply if a matching
            %     object is found.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(domainId);
            Ice.Identity.ice_write(os_, id);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('findObjectById', 2, false, os_, 0, [], {}, varargin{:});
        end
        function findAdapterById(obj, domainId, id, reply, varargin)
            % findAdapterById   Request to find an object adapter
            %
            % Parameters:
            %   domainId (char) - The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
            %     matching domain identifier.
            %   id (char) - The adapter ID.
            %   reply (IceDiscovery.LookupReplyPrx) - The proxy of the LookupReply interface that should be used to send the reply if a matching
            %     adapter is found.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(domainId);
            os_.writeString(id);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('findAdapterById', 2, false, os_, false, {}, varargin{:});
        end
        function r_ = findAdapterByIdAsync(obj, domainId, id, reply, varargin)
            % findAdapterByIdAsync   Request to find an object adapter
            %
            % Parameters:
            %   domainId (char) - The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
            %     matching domain identifier.
            %   id (char) - The adapter ID.
            %   reply (IceDiscovery.LookupReplyPrx) - The proxy of the LookupReply interface that should be used to send the reply if a matching
            %     adapter is found.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(domainId);
            os_.writeString(id);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('findAdapterById', 2, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceDiscovery::Lookup';
        end
        function r = ice_read(is)
            r = is.readProxy('IceDiscovery.LookupPrx');
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
            % Returns (IceDiscovery.LookupPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceDiscovery.LookupPrx.ice_staticId(), 'IceDiscovery.LookupPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceDiscovery.LookupPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceDiscovery.LookupPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = LookupPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
