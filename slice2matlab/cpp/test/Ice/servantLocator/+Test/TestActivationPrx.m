% TestActivationPrx   Summary of TestActivationPrx
%
% TestActivationPrx Methods:
%   activateServantLocator
%   activateServantLocatorAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef TestActivationPrx < Ice.ObjectPrx
    methods
        function activateServantLocator(obj, activate, varargin)
            % activateServantLocator
            %
            % Parameters:
            %   activate (logical)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(activate);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('activateServantLocator', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = activateServantLocatorAsync(obj, activate, varargin)
            % activateServantLocatorAsync
            %
            % Parameters:
            %   activate (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(activate);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('activateServantLocator', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::TestActivation';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.TestActivationPrx');
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
            % Returns (Test.TestActivationPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestActivationPrx.ice_staticId(), 'Test.TestActivationPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.TestActivationPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestActivationPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = TestActivationPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
