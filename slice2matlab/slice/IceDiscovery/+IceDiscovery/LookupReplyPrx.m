% LookupReplyPrx   Summary of LookupReplyPrx
%
% The LookupReply interface is used by IceDiscovery clients to answer requests
% received on the Lookup interface.
%
% LookupReplyPrx Methods:
%   foundObjectById - Reply to the findObjectById request.
%   foundObjectByIdAsync - Reply to the findObjectById request.
%   foundAdapterById - Reply to the findAdpaterById request.
%   foundAdapterByIdAsync - Reply to the findAdpaterById request.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceDiscovery.ice by slice2matlab version 3.7.9

classdef LookupReplyPrx < Ice.ObjectPrx
    methods
        function foundObjectById(obj, id, prx, varargin)
            % foundObjectById   Reply to the findObjectById request.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity of the object.
            %   prx (Ice.ObjectPrx) - The proxy of the object.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            os_.writeProxy(prx);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('foundObjectById', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = foundObjectByIdAsync(obj, id, prx, varargin)
            % foundObjectByIdAsync   Reply to the findObjectById request.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity of the object.
            %   prx (Ice.ObjectPrx) - The proxy of the object.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            os_.writeProxy(prx);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('foundObjectById', 0, false, os_, 0, [], {}, varargin{:});
        end
        function foundAdapterById(obj, id, prx, isReplicaGroup, varargin)
            % foundAdapterById   Reply to the findAdpaterById request.
            %
            % Parameters:
            %   id (char) - The adapter ID.
            %   prx (Ice.ObjectPrx) - The adapter proxy (a dummy proxy created by the adapter).
            %     The proxy provides the adapter endpoints.
            %   isReplicaGroup (logical) - True if the adapter is also a member of a
            %     replica group.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeProxy(prx);
            os_.writeBool(isReplicaGroup);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('foundAdapterById', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = foundAdapterByIdAsync(obj, id, prx, isReplicaGroup, varargin)
            % foundAdapterByIdAsync   Reply to the findAdpaterById request.
            %
            % Parameters:
            %   id (char) - The adapter ID.
            %   prx (Ice.ObjectPrx) - The adapter proxy (a dummy proxy created by the adapter).
            %     The proxy provides the adapter endpoints.
            %   isReplicaGroup (logical) - True if the adapter is also a member of a
            %     replica group.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            os_.writeProxy(prx);
            os_.writeBool(isReplicaGroup);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('foundAdapterById', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceDiscovery::LookupReply';
        end
        function r = ice_read(is)
            r = is.readProxy('IceDiscovery.LookupReplyPrx');
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
            % Returns (IceDiscovery.LookupReplyPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceDiscovery.LookupReplyPrx.ice_staticId(), 'IceDiscovery.LookupReplyPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceDiscovery.LookupReplyPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceDiscovery.LookupReplyPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = LookupReplyPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
