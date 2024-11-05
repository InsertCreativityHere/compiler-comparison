
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef CustomPrx < Ice.ObjectPrx
    methods
        function [result, b2] = opByteString1(obj, b1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(b1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteString1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            b2 = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opByteString1Async(obj, b1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(b1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                b2 = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = b2;
            end
            r_ = obj.iceInvokeAsync('opByteString1', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, b2] = opByteString2(obj, b1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(b1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteString2', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            b2 = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opByteString2Async(obj, b1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(b1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                b2 = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = b2;
            end
            r_ = obj.iceInvokeAsync('opByteString2', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, b2] = opByteList1(obj, b1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(b1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteList1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            b2 = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opByteList1Async(obj, b1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(b1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                b2 = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = b2;
            end
            r_ = obj.iceInvokeAsync('opByteList1', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, b2] = opByteList2(obj, b1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(b1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteList2', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            b2 = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opByteList2Async(obj, b1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(b1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                b2 = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = b2;
            end
            r_ = obj.iceInvokeAsync('opByteList2', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, s2] = opStringList1(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringList1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opStringList1Async(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opStringList1', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, s2] = opStringList2(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringList2', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opStringList2Async(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opStringList2', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, s2] = opStringTuple1(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringTuple1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opStringTuple1Async(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opStringTuple1', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, s2] = opStringTuple2(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringTuple2', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opStringTuple2Async(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opStringTuple2', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function sendS(obj, val, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.S.ice_write(os_, val);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sendS', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = sendSAsync(obj, val, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.S.ice_write(os_, val);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('sendS', 0, false, os_, 0, [], {}, varargin{:});
        end
        function sendC(obj, val, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(val);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sendC', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = sendCAsync(obj, val, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(val);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('sendC', 0, false, os_, 0, [], {}, varargin{:});
        end
        function [result, v2] = opBoolSeq(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(v1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            v2 = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBoolSeqAsync(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(v1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = is_.readBoolSeq();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = v2;
            end
            r_ = obj.iceInvokeAsync('opBoolSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, v2] = opByteSeq(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(v1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            v2 = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opByteSeqAsync(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(v1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = v2;
            end
            r_ = obj.iceInvokeAsync('opByteSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, v2] = opShortSeq(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(v1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            v2 = is_.readShortSeq();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opShortSeqAsync(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(v1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = is_.readShortSeq();
                result = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = v2;
            end
            r_ = obj.iceInvokeAsync('opShortSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, v2] = opIntSeq(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(v1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            v2 = is_.readIntSeq();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opIntSeqAsync(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(v1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = is_.readIntSeq();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = v2;
            end
            r_ = obj.iceInvokeAsync('opIntSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, v2] = opLongSeq(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(v1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLongSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            v2 = is_.readLongSeq();
            result = is_.readLongSeq();
            is_.endEncapsulation();
        end
        function r_ = opLongSeqAsync(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(v1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = is_.readLongSeq();
                result = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = v2;
            end
            r_ = obj.iceInvokeAsync('opLongSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, v2] = opFloatSeq(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(v1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloatSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            v2 = is_.readFloatSeq();
            result = is_.readFloatSeq();
            is_.endEncapsulation();
        end
        function r_ = opFloatSeqAsync(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(v1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = is_.readFloatSeq();
                result = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = v2;
            end
            r_ = obj.iceInvokeAsync('opFloatSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, v2] = opDoubleSeq(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(v1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDoubleSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            v2 = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opDoubleSeqAsync(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(v1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = is_.readDoubleSeq();
                result = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = v2;
            end
            r_ = obj.iceInvokeAsync('opDoubleSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function result = opBogusArrayNotExistsFactory(obj, varargin)
            is_ = obj.iceInvoke('opBogusArrayNotExistsFactory', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBogusArrayNotExistsFactoryAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBogusArrayNotExistsFactory', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opBogusArrayThrowFactory(obj, varargin)
            is_ = obj.iceInvoke('opBogusArrayThrowFactory', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBogusArrayThrowFactoryAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBogusArrayThrowFactory', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opBogusArrayType(obj, varargin)
            is_ = obj.iceInvoke('opBogusArrayType', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBogusArrayTypeAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBogusArrayType', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opBogusArrayNoneFactory(obj, varargin)
            is_ = obj.iceInvoke('opBogusArrayNoneFactory', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBogusArrayNoneFactoryAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBogusArrayNoneFactory', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opBogusArraySignatureFactory(obj, varargin)
            is_ = obj.iceInvoke('opBogusArraySignatureFactory', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBogusArraySignatureFactoryAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBogusArraySignatureFactory', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opBogusArrayNoCallableFactory(obj, varargin)
            is_ = obj.iceInvoke('opBogusArrayNoCallableFactory', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBogusArrayNoCallableFactoryAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBogusArrayNoCallableFactory', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opD(obj, d, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(d);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.D');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = opDAsync(obj, d, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(d);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.D');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('opD', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function shutdown(obj, varargin)
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Custom';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.CustomPrx');
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
            % Returns (Test.CustomPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.CustomPrx.ice_staticId(), 'Test.CustomPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.CustomPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.CustomPrx', varargin{:});
        end
    end
end
