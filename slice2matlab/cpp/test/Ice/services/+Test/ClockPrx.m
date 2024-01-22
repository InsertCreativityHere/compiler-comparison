% ClockPrx   Summary of ClockPrx
%
% ClockPrx Methods:
%   tick
%   tickAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef ClockPrx < Ice.ObjectPrx
    methods
        function tick(obj, time, varargin)
            % tick
            %
            % Parameters:
            %   time (char)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(time);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('tick', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = tickAsync(obj, time, varargin)
            % tickAsync
            %
            % Parameters:
            %   time (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(time);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('tick', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Clock';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.ClockPrx');
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
            % Returns (Test.ClockPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.ClockPrx.ice_staticId(), 'Test.ClockPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.ClockPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.ClockPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = ClockPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
