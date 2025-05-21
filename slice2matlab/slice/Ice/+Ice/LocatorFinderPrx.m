% LocatorFinderPrx   Summary of LocatorFinderPrx
%
% Provides access to a Locator object via a fixed identity.
% A LocatorFinder is always registered with identity `Ice/LocatorFinder`. This allows clients to obtain the
% associated Locator proxy with just the endpoint information of the object. For example, you can use the
% LocatorFinder proxy `Ice/LocatorFinder:tcp -h somehost -p 4061` to get the Locator proxy
% `MyIceGrid/Locator:tcp -h somehost -p 4061`.
%
% LocatorFinderPrx Methods:
%   getLocator - Gets a proxy to the associated Locator.
%   getLocatorAsync - Gets a proxy to the associated Locator.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from Locator.ice by slice2matlab version 3.8.0-alpha.0

classdef LocatorFinderPrx < Ice.ObjectPrx
    methods
        function result = getLocator(obj, varargin)
            % getLocator   Gets a proxy to the associated Locator. The proxy might point to several replicas.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.LocatorPrx) - The locator proxy. This proxy is never null.
            
            is_ = obj.iceInvoke('getLocator', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.LocatorPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getLocatorAsync(obj, varargin)
            % getLocatorAsync   Gets a proxy to the associated Locator. The proxy might point to several replicas.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Ice.LocatorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getLocator', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Ice::LocatorFinder';
        end
        function r = ice_read(is)
            r = is.readProxy('Ice.LocatorFinderPrx');
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
            % Returns (Ice.LocatorFinderPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.LocatorFinderPrx.ice_staticId(), 'Ice.LocatorFinderPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Ice.LocatorFinderPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.LocatorFinderPrx', varargin{:});
        end
    end
end
