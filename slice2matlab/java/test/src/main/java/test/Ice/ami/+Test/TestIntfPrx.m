
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function op(obj, varargin)
            obj.iceInvoke('op', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('op', 0, false, [], 0, [], {}, varargin{:});
        end
        function opWithPayload(obj, seq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(seq);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opWithPayload', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = opWithPayloadAsync(obj, seq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(seq);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('opWithPayload', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = opWithResult(obj, varargin)
            is_ = obj.iceInvoke('opWithResult', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = opWithResultAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opWithResult', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function opWithUE(obj, varargin)
            obj.iceInvoke('opWithUE', 0, true, [], false, Test.TestIntfPrx.opWithUE_ex_, varargin{:});
        end
        function r_ = opWithUEAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('opWithUE', 0, true, [], 0, [], Test.TestIntfPrx.opWithUE_ex_, varargin{:});
        end
        function opBatch(obj, varargin)
            obj.iceInvoke('opBatch', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opBatchAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('opBatch', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = opBatchCount(obj, varargin)
            is_ = obj.iceInvoke('opBatchCount', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = opBatchCountAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBatchCount', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = waitForBatch(obj, count, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('waitForBatch', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = waitForBatchAsync(obj, count, varargin)
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
            obj.iceInvoke('closeConnection', 0, false, [], false, {}, varargin{:});
        end
        function r_ = closeConnectionAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('closeConnection', 0, false, [], 0, [], {}, varargin{:});
        end
        function abortConnection(obj, varargin)
            obj.iceInvoke('abortConnection', 0, false, [], false, {}, varargin{:});
        end
        function r_ = abortConnectionAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('abortConnection', 0, false, [], 0, [], {}, varargin{:});
        end
        function sleep(obj, ms, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(ms);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sleep', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = sleepAsync(obj, ms, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(ms);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('sleep', 0, false, os_, 0, [], {}, varargin{:});
        end
        function startDispatch(obj, varargin)
            obj.iceInvoke('startDispatch', 0, false, [], false, {}, varargin{:});
        end
        function r_ = startDispatchAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('startDispatch', 0, false, [], 0, [], {}, varargin{:});
        end
        function finishDispatch(obj, varargin)
            obj.iceInvoke('finishDispatch', 0, false, [], false, {}, varargin{:});
        end
        function r_ = finishDispatchAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('finishDispatch', 0, false, [], 0, [], {}, varargin{:});
        end
        function shutdown(obj, varargin)
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = supportsFunctionalTests(obj, varargin)
            is_ = obj.iceInvoke('supportsFunctionalTests', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = supportsFunctionalTestsAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('supportsFunctionalTests', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = supportsBackPressureTests(obj, varargin)
            is_ = obj.iceInvoke('supportsBackPressureTests', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = supportsBackPressureTestsAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('supportsBackPressureTests', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opBool(obj, b, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(b);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBool', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = opBoolAsync(obj, b, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(b);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBool', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opByte(obj, b, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByte(b);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByte', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readByte();
            is_.endEncapsulation();
        end
        function r_ = opByteAsync(obj, b, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByte(b);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readByte();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opByte', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opShort(obj, s, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShort(s);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShort', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readShort();
            is_.endEncapsulation();
        end
        function r_ = opShortAsync(obj, s, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShort(s);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readShort();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opShort', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opInt(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opInt', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = opIntAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opInt', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opLong(obj, l, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(l);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLong', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readLong();
            is_.endEncapsulation();
        end
        function r_ = opLongAsync(obj, l, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(l);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readLong();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opLong', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opFloat(obj, f, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloat(f);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloat', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readFloat();
            is_.endEncapsulation();
        end
        function r_ = opFloatAsync(obj, f, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloat(f);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readFloat();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opFloat', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opDouble(obj, d, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDouble(d);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDouble', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readDouble();
            is_.endEncapsulation();
        end
        function r_ = opDoubleAsync(obj, d, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDouble(d);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readDouble();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opDouble', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function pingBiDir(obj, reply, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('pingBiDir', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = pingBiDirAsync(obj, reply, varargin)
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
    end
end
