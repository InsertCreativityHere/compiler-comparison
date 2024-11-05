
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from TestNumPy.ice by slice2matlab version 3.8.0-alpha.0

classdef CustomPrx < Ice.ObjectPrx
    methods
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
        function result = opComplex128Seq(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(v1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opComplex128Seq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opComplex128SeqAsync(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(v1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opComplex128Seq', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opBoolMatrix(obj, varargin)
            is_ = obj.iceInvoke('opBoolMatrix', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBoolMatrixAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBoolMatrix', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opByteMatrix(obj, varargin)
            is_ = obj.iceInvoke('opByteMatrix', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opByteMatrixAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opByteMatrix', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opShortMatrix(obj, varargin)
            is_ = obj.iceInvoke('opShortMatrix', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opShortMatrixAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opShortMatrix', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opIntMatrix(obj, varargin)
            is_ = obj.iceInvoke('opIntMatrix', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opIntMatrixAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opIntMatrix', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opLongMatrix(obj, varargin)
            is_ = obj.iceInvoke('opLongMatrix', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readLongSeq();
            is_.endEncapsulation();
        end
        function r_ = opLongMatrixAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opLongMatrix', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opFloatMatrix(obj, varargin)
            is_ = obj.iceInvoke('opFloatMatrix', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readFloatSeq();
            is_.endEncapsulation();
        end
        function r_ = opFloatMatrixAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opFloatMatrix', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opDoubleMatrix(obj, varargin)
            is_ = obj.iceInvoke('opDoubleMatrix', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opDoubleMatrixAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opDoubleMatrix', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opBogusNumpyArrayType(obj, varargin)
            is_ = obj.iceInvoke('opBogusNumpyArrayType', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBogusNumpyArrayTypeAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBogusNumpyArrayType', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opD(obj, d, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(d);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.NumPy.D');
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
                is_.readValue(@(v) result.set(v), 'Test.NumPy.D');
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
            id = '::Test::NumPy::Custom';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.NumPy.CustomPrx');
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
            % Returns (Test.NumPy.CustomPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.NumPy.CustomPrx.ice_staticId(), 'Test.NumPy.CustomPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.NumPy.CustomPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.NumPy.CustomPrx', varargin{:});
        end
    end
end
