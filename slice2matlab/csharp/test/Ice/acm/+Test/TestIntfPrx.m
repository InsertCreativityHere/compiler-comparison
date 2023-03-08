% TestIntfPrx   Summary of TestIntfPrx
%
% TestIntfPrx Methods:
%   sleep
%   sleepAsync
%   sleepAndHold
%   sleepAndHoldAsync
%   interruptSleep
%   interruptSleepAsync
%   startHeartbeatCount
%   startHeartbeatCountAsync
%   waitForHeartbeatCount
%   waitForHeartbeatCountAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function sleep(obj, seconds, varargin)
            % sleep
            %
            % Parameters:
            %   seconds (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(seconds);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sleep', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = sleepAsync(obj, seconds, varargin)
            % sleepAsync
            %
            % Parameters:
            %   seconds (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(seconds);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('sleep', 0, false, os_, 0, [], {}, varargin{:});
        end
        function sleepAndHold(obj, seconds, varargin)
            % sleepAndHold
            %
            % Parameters:
            %   seconds (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(seconds);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sleepAndHold', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = sleepAndHoldAsync(obj, seconds, varargin)
            % sleepAndHoldAsync
            %
            % Parameters:
            %   seconds (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(seconds);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('sleepAndHold', 0, false, os_, 0, [], {}, varargin{:});
        end
        function interruptSleep(obj, varargin)
            % interruptSleep
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('interruptSleep', 0, false, [], false, {}, varargin{:});
        end
        function r_ = interruptSleepAsync(obj, varargin)
            % interruptSleepAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('interruptSleep', 0, false, [], 0, [], {}, varargin{:});
        end
        function startHeartbeatCount(obj, varargin)
            % startHeartbeatCount
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('startHeartbeatCount', 0, false, [], false, {}, varargin{:});
        end
        function r_ = startHeartbeatCountAsync(obj, varargin)
            % startHeartbeatCountAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('startHeartbeatCount', 0, false, [], 0, [], {}, varargin{:});
        end
        function waitForHeartbeatCount(obj, count, varargin)
            % waitForHeartbeatCount
            %
            % Parameters:
            %   count (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('waitForHeartbeatCount', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = waitForHeartbeatCountAsync(obj, count, varargin)
            % waitForHeartbeatCountAsync
            %
            % Parameters:
            %   count (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('waitForHeartbeatCount', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::TestIntf';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.TestIntfPrx');
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
            % Returns (Test.TestIntfPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestIntfPrx.ice_staticId(), 'Test.TestIntfPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.TestIntfPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestIntfPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = TestIntfPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
