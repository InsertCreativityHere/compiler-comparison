% LookupReplyPrx   Summary of LookupReplyPrx
%
% The Ice lookup reply interface must be implemented by clients which
% are searching for Ice locators. Ice locator implementations invoke
% on this interface to provide their locator proxy.
%
% LookupReplyPrx Methods:
%   foundLocator - This method is called by the implementation of the Lookup interface to reply to a findLocator request.
%   foundLocatorAsync - This method is called by the implementation of the Lookup interface to reply to a findLocator request.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also IceLocatorDiscovery.Lookup

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceLocatorDiscovery.ice by slice2matlab version 3.7.10

classdef LookupReplyPrx < Ice.ObjectPrx
    methods
        function foundLocator(obj, prx, varargin)
            % foundLocator   This method is called by the implementation of the Lookup
            % interface to reply to a findLocator request.
            %
            % Parameters:
            %   prx (Ice.LocatorPrx) - The proxy of the locator.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(prx);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('foundLocator', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = foundLocatorAsync(obj, prx, varargin)
            % foundLocatorAsync   This method is called by the implementation of the Lookup
            % interface to reply to a findLocator request.
            %
            % Parameters:
            %   prx (Ice.LocatorPrx) - The proxy of the locator.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(prx);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('foundLocator', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceLocatorDiscovery::LookupReply';
        end
        function r = ice_read(is)
            r = is.readProxy('IceLocatorDiscovery.LookupReplyPrx');
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
            % Returns (IceLocatorDiscovery.LookupReplyPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceLocatorDiscovery.LookupReplyPrx.ice_staticId(), 'IceLocatorDiscovery.LookupReplyPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceLocatorDiscovery.LookupReplyPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceLocatorDiscovery.LookupReplyPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = LookupReplyPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
