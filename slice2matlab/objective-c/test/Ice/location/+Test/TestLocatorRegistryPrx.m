% TestLocatorRegistryPrx   Summary of TestLocatorRegistryPrx
%
% TestLocatorRegistryPrx Methods:
%   addObject
%   addObjectAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocationTest.ice by slice2matlab version 3.7.10

classdef TestLocatorRegistryPrx < Ice.LocatorRegistryPrx
    methods
        function addObject(obj_, obj, varargin)
            % addObject
            %
            % Parameters:
            %   obj (Ice.ObjectPrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            obj_.iceInvoke('addObject', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = addObjectAsync(obj_, obj, varargin)
            % addObjectAsync
            %
            % Parameters:
            %   obj (Ice.ObjectPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            r_ = obj_.iceInvokeAsync('addObject', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::TestLocatorRegistry';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.TestLocatorRegistryPrx');
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
            % Returns (Test.TestLocatorRegistryPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestLocatorRegistryPrx.ice_staticId(), 'Test.TestLocatorRegistryPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.TestLocatorRegistryPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestLocatorRegistryPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = TestLocatorRegistryPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.LocatorRegistryPrx(communicator, encoding, impl, bytes);
        end
    end
end
