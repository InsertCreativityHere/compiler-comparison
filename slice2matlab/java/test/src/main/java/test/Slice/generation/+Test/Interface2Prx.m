% Interface2Prx   Summary of Interface2Prx
%
% Interface2Prx Methods:
%   method
%   methodAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from File2.ice by slice2matlab version 3.8.0-alpha.0

classdef Interface2Prx < Ice.ObjectPrx
    methods
        function method(obj, varargin)
            % method
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('method', 0, false, [], false, {}, varargin{:});
        end
        function r_ = methodAsync(obj, varargin)
            % methodAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('method', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Interface2';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.Interface2Prx');
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
            % Returns (Test.Interface2Prx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Interface2Prx.ice_staticId(), 'Test.Interface2Prx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.Interface2Prx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Interface2Prx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = Interface2Prx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
