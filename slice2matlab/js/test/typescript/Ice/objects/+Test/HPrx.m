% HPrx   Summary of HPrx
%
% HPrx Methods:
%   doH
%   doHAsync
%   doH2
%   doH2Async
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef HPrx < Test.IPrx
    methods
        function doH(obj, varargin)
            % doH
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('doH', 0, false, [], false, {}, varargin{:});
        end
        function r_ = doHAsync(obj, varargin)
            % doHAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('doH', 0, false, [], 0, [], {}, varargin{:});
        end
        function doH2(obj, varargin)
            % doH2
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('doH2', 0, false, [], false, {}, varargin{:});
        end
        function r_ = doH2Async(obj, varargin)
            % doH2Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('doH2', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::H';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.HPrx');
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
            % Returns (Test.HPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.HPrx.ice_staticId(), 'Test.HPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.HPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.HPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = HPrx(communicator, encoding, impl, bytes)
            obj = obj@Test.IPrx(communicator, encoding, impl, bytes);
        end
    end
end
