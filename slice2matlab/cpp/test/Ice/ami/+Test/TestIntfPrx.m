% TestIntfPrx   Summary of TestIntfPrx
%
% TestIntfPrx Methods:
%   op
%   opAsync
%   opWithPayload
%   opWithPayloadAsync
%   opWithResult
%   opWithResultAsync
%   opWithUE
%   opWithUEAsync
%   opWithResultAndUE
%   opWithResultAndUEAsync
%   opBatch
%   opBatchAsync
%   opWithArgs
%   opWithArgsAsync
%   opBatchCount
%   opBatchCountAsync
%   waitForBatch
%   waitForBatchAsync
%   closeConnection
%   closeConnectionAsync
%   abortConnection
%   abortConnectionAsync
%   sleep
%   sleepAsync
%   startDispatch
%   startDispatchAsync
%   finishDispatch
%   finishDispatchAsync
%   shutdown
%   shutdownAsync
%   supportsAMD
%   supportsAMDAsync
%   supportsFunctionalTests
%   supportsFunctionalTestsAsync
%   pingBiDir
%   pingBiDirAsync
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
        function result = opWithResult(obj, varargin)
            % opWithResult
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            is_ = obj.iceInvoke('opWithResult', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = opWithResultAsync(obj, varargin)
            % opWithResultAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opWithResult', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function opWithUE(obj, varargin)
            % opWithUE
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('opWithUE', 0, true, [], false, Test.TestIntfPrx.opWithUE_ex_, varargin{:});
        end
        function r_ = opWithUEAsync(obj, varargin)
            % opWithUEAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('opWithUE', 0, true, [], 0, [], Test.TestIntfPrx.opWithUE_ex_, varargin{:});
        end
        function result = opWithResultAndUE(obj, varargin)
            % opWithResultAndUE
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            is_ = obj.iceInvoke('opWithResultAndUE', 0, true, [], true, Test.TestIntfPrx.opWithResultAndUE_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = opWithResultAndUEAsync(obj, varargin)
            % opWithResultAndUEAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opWithResultAndUE', 0, true, [], 1, @unmarshal, Test.TestIntfPrx.opWithResultAndUE_ex_, varargin{:});
        end
        function opBatch(obj, varargin)
            % opBatch
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('opBatch', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opBatchAsync(obj, varargin)
            % opBatchAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('opBatch', 0, false, [], 0, [], {}, varargin{:});
        end
        function [one, two, three, four, five, six, seven, eight, nine, ten, eleven] = opWithArgs(obj, varargin)
            % opWithArgs
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   one (int32)
            %   two (int32)
            %   three (int32)
            %   four (int32)
            %   five (int32)
            %   six (int32)
            %   seven (int32)
            %   eight (int32)
            %   nine (int32)
            %   ten (int32)
            %   eleven (int32)
            
            is_ = obj.iceInvoke('opWithArgs', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            one = is_.readInt();
            two = is_.readInt();
            three = is_.readInt();
            four = is_.readInt();
            five = is_.readInt();
            six = is_.readInt();
            seven = is_.readInt();
            eight = is_.readInt();
            nine = is_.readInt();
            ten = is_.readInt();
            eleven = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = opWithArgsAsync(obj, varargin)
            % opWithArgsAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                one = is_.readInt();
                two = is_.readInt();
                three = is_.readInt();
                four = is_.readInt();
                five = is_.readInt();
                six = is_.readInt();
                seven = is_.readInt();
                eight = is_.readInt();
                nine = is_.readInt();
                ten = is_.readInt();
                eleven = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = one;
                varargout{2} = two;
                varargout{3} = three;
                varargout{4} = four;
                varargout{5} = five;
                varargout{6} = six;
                varargout{7} = seven;
                varargout{8} = eight;
                varargout{9} = nine;
                varargout{10} = ten;
                varargout{11} = eleven;
            end
            r_ = obj.iceInvokeAsync('opWithArgs', 0, true, [], 11, @unmarshal, {}, varargin{:});
        end
        function result = opBatchCount(obj, varargin)
            % opBatchCount
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            is_ = obj.iceInvoke('opBatchCount', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = opBatchCountAsync(obj, varargin)
            % opBatchCountAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBatchCount', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = waitForBatch(obj, count, varargin)
            % waitForBatch
            %
            % Parameters:
            %   count (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (logical)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('waitForBatch', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = waitForBatchAsync(obj, count, varargin)
            % waitForBatchAsync
            %
            % Parameters:
            %   count (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('waitForBatch', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function closeConnection(obj, varargin)
            % closeConnection
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('closeConnection', 0, false, [], false, {}, varargin{:});
        end
        function r_ = closeConnectionAsync(obj, varargin)
            % closeConnectionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('closeConnection', 0, false, [], 0, [], {}, varargin{:});
        end
        function abortConnection(obj, varargin)
            % abortConnection
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('abortConnection', 0, false, [], false, {}, varargin{:});
        end
        function r_ = abortConnectionAsync(obj, varargin)
            % abortConnectionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('abortConnection', 0, false, [], 0, [], {}, varargin{:});
        end
        function sleep(obj, ms, varargin)
            % sleep
            %
            % Parameters:
            %   ms (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(ms);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sleep', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = sleepAsync(obj, ms, varargin)
            % sleepAsync
            %
            % Parameters:
            %   ms (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(ms);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('sleep', 0, false, os_, 0, [], {}, varargin{:});
        end
        function startDispatch(obj, varargin)
            % startDispatch
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('startDispatch', 0, false, [], false, {}, varargin{:});
        end
        function r_ = startDispatchAsync(obj, varargin)
            % startDispatchAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('startDispatch', 0, false, [], 0, [], {}, varargin{:});
        end
        function finishDispatch(obj, varargin)
            % finishDispatch
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('finishDispatch', 0, false, [], false, {}, varargin{:});
        end
        function r_ = finishDispatchAsync(obj, varargin)
            % finishDispatchAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('finishDispatch', 0, false, [], 0, [], {}, varargin{:});
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
        function result = supportsAMD(obj, varargin)
            % supportsAMD
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (logical)
            
            is_ = obj.iceInvoke('supportsAMD', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = supportsAMDAsync(obj, varargin)
            % supportsAMDAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('supportsAMD', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = supportsFunctionalTests(obj, varargin)
            % supportsFunctionalTests
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (logical)
            
            is_ = obj.iceInvoke('supportsFunctionalTests', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = supportsFunctionalTestsAsync(obj, varargin)
            % supportsFunctionalTestsAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('supportsFunctionalTests', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function pingBiDir(obj, reply, varargin)
            % pingBiDir
            %
            % Parameters:
            %   reply (Test.PingReplyPrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('pingBiDir', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = pingBiDirAsync(obj, reply, varargin)
            % pingBiDirAsync
            %
            % Parameters:
            %   reply (Test.PingReplyPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('pingBiDir', 0, false, os_, 0, [], {}, varargin{:});
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
    properties(Constant,Access=private)
        opWithUE_ex_ = { 'Test.TestIntfException' }
        opWithResultAndUE_ex_ = { 'Test.TestIntfException' }
    end
end
