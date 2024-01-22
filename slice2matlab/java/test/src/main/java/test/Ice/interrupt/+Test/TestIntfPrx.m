% TestIntfPrx   Summary of TestIntfPrx
%
% TestIntfPrx Methods:
%   op
%   opAsync
%   opIdempotent
%   opIdempotentAsync
%   sleep
%   sleepAsync
%   opWithPayload
%   opWithPayloadAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function op(obj, varargin)
            % op
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('op', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opAsync(obj, varargin)
            % opAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('op', 0, false, [], 0, [], {}, varargin{:});
        end
        function opIdempotent(obj, varargin)
            % opIdempotent
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('opIdempotent', 2, false, [], false, {}, varargin{:});
        end
        function r_ = opIdempotentAsync(obj, varargin)
            % opIdempotentAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('opIdempotent', 2, false, [], 0, [], {}, varargin{:});
        end
        function sleep(obj, to, varargin)
            % sleep
            %
            % Parameters:
            %   to (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(to);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sleep', 0, true, os_, false, Test.TestIntfPrx.sleep_ex_, varargin{:});
        end
        function r_ = sleepAsync(obj, to, varargin)
            % sleepAsync
            %
            % Parameters:
            %   to (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(to);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('sleep', 0, true, os_, 0, [], Test.TestIntfPrx.sleep_ex_, varargin{:});
        end
        function opWithPayload(obj, seq, varargin)
            % opWithPayload
            %
            % Parameters:
            %   seq (Ice.ByteSeq)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(seq);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opWithPayload', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = opWithPayloadAsync(obj, seq, varargin)
            % opWithPayloadAsync
            %
            % Parameters:
            %   seq (Ice.ByteSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(seq);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('opWithPayload', 0, false, os_, 0, [], {}, varargin{:});
        end
        function shutdown(obj, varargin)
            % shutdown
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            % shutdownAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
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
    properties(Constant,Access=private)
        sleep_ex_ = { 'Test.InterruptedException' }
    end
end
