% LookupPrx   Summary of LookupPrx
%
% The Ice lookup interface is implemented by Ice locator implementations and can be used by clients to find
% available Ice locators on the network.
% Ice locator implementations provide a well-known `Ice/LocatorLookup' object accessible through UDP multicast.
% Clients typically make a multicast findLocator request to find the locator proxy.
%
% LookupPrx Methods:
%   findLocator - Find a locator proxy with the given instance name.
%   findLocatorAsync - Find a locator proxy with the given instance name.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also IceLocatorDiscovery.LookupReply

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceLocatorDiscovery.ice by slice2matlab version 3.8.0-alpha.0

classdef LookupPrx < Ice.ObjectPrx
    methods
        function findLocator(obj, instanceName, reply, varargin)
            % findLocator   Find a locator proxy with the given instance name.
            %
            % Parameters:
            %   instanceName (char) - Restrict the search to Ice registries configured with the given instance name. If
            %     empty, all the available registries will reply.
            %   reply (IceLocatorDiscovery.LookupReplyPrx) - The reply object to use to send the reply.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(instanceName);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('findLocator', 2, false, os_, false, {}, varargin{:});
        end
        function r_ = findLocatorAsync(obj, instanceName, reply, varargin)
            % findLocatorAsync   Find a locator proxy with the given instance name.
            %
            % Parameters:
            %   instanceName (char) - Restrict the search to Ice registries configured with the given instance name. If
            %     empty, all the available registries will reply.
            %   reply (IceLocatorDiscovery.LookupReplyPrx) - The reply object to use to send the reply.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(instanceName);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('findLocator', 2, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceLocatorDiscovery::Lookup';
        end
        function r = ice_read(is)
            r = is.readProxy('IceLocatorDiscovery.LookupPrx');
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
            % Returns (IceLocatorDiscovery.LookupPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceLocatorDiscovery.LookupPrx.ice_staticId(), 'IceLocatorDiscovery.LookupPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceLocatorDiscovery.LookupPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceLocatorDiscovery.LookupPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = LookupPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
