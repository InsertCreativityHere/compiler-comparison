
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function [result, outSeq] = opASeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ASeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opASeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.ASeq.read(is_);
            result = Test.ASeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opASeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ASeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.ASeq.read(is_);
                result = Test.ASeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opASeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opAArray(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AArray.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAArray', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.AArray.read(is_);
            result = Test.AArray.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opAArrayAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AArray.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.AArray.read(is_);
                result = Test.AArray.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opAArray', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opAList(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAList', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.AList.read(is_);
            result = Test.AList.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opAListAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.AList.read(is_);
                result = Test.AList.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opAList', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opBoolSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBoolSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readBoolSeq();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opBoolSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opByteSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opByteSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opByteSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opShortSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readShortSeq();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opShortSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readShortSeq();
                result = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opShortSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opIntSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readIntSeq();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opIntSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readIntSeq();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opIntSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opLongSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLongSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readLongSeq();
            result = is_.readLongSeq();
            is_.endEncapsulation();
        end
        function r_ = opLongSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readLongSeq();
                result = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opLongSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opFloatSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloatSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readFloatSeq();
            result = is_.readFloatSeq();
            is_.endEncapsulation();
        end
        function r_ = opFloatSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readFloatSeq();
                result = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opFloatSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opDoubleSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDoubleSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opDoubleSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readDoubleSeq();
                result = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opDoubleSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opStringSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opStringSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opStringSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opESeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ESeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opESeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.ESeq.read(is_);
            result = Test.ESeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opESeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ESeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.ESeq.read(is_);
                result = Test.ESeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opESeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opSSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.SSeq.read(is_);
            result = Test.SSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.SSeq.read(is_);
                result = Test.SSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opSSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opDSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.DSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.DSeq.read(is_);
            result = Test.DSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opDSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.DSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.DSeq.read(is_);
                result = Test.DSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opDSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opStringSeqSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringSeqSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringSeqSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.StringSeqSeq.read(is_);
            result = Test.StringSeqSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opStringSeqSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringSeqSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.StringSeqSeq.read(is_);
                result = Test.StringSeqSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opStringSeqSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opByteBufferSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteBufferSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opByteBufferSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opByteBufferSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opShortBufferSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortBufferSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readShortSeq();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opShortBufferSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readShortSeq();
                result = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opShortBufferSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opIntBufferSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntBufferSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readIntSeq();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opIntBufferSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readIntSeq();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opIntBufferSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opLongBufferSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLongBufferSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readLongSeq();
            result = is_.readLongSeq();
            is_.endEncapsulation();
        end
        function r_ = opLongBufferSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readLongSeq();
                result = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opLongBufferSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opFloatBufferSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloatBufferSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readFloatSeq();
            result = is_.readFloatSeq();
            is_.endEncapsulation();
        end
        function r_ = opFloatBufferSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readFloatSeq();
                result = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opFloatBufferSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opDoubleBufferSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDoubleBufferSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opDoubleBufferSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readDoubleSeq();
                result = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opDoubleBufferSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptASeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ASeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptASeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.ASeq.readOpt(is_, 1);
            outSeq = Test.ASeq.readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opOptASeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ASeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.ASeq.readOpt(is_, 1);
                outSeq = Test.ASeq.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptASeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptAArray(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AArray.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptAArray', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.AArray.readOpt(is_, 1);
            outSeq = Test.AArray.readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opOptAArrayAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AArray.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.AArray.readOpt(is_, 1);
                outSeq = Test.AArray.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptAArray', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptAList(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AList.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptAList', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.AList.readOpt(is_, 1);
            outSeq = Test.AList.readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opOptAListAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AList.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.AList.readOpt(is_, 1);
                outSeq = Test.AList.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptAList', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptBoolSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptBoolSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolSeqOpt(1);
            outSeq = is_.readBoolSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opOptBoolSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolSeqOpt(1);
                outSeq = is_.readBoolSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptBoolSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptByteSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptByteSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readByteSeqOpt(1);
            outSeq = is_.readByteSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opOptByteSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readByteSeqOpt(1);
                outSeq = is_.readByteSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptByteSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptShortSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptShortSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readShortSeqOpt(1);
            outSeq = is_.readShortSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opOptShortSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readShortSeqOpt(1);
                outSeq = is_.readShortSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptShortSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptIntSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptIntSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readIntSeqOpt(1);
            outSeq = is_.readIntSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opOptIntSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readIntSeqOpt(1);
                outSeq = is_.readIntSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptIntSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptLongSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptLongSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readLongSeqOpt(1);
            outSeq = is_.readLongSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opOptLongSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readLongSeqOpt(1);
                outSeq = is_.readLongSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptLongSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptFloatSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptFloatSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readFloatSeqOpt(1);
            outSeq = is_.readFloatSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opOptFloatSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readFloatSeqOpt(1);
                outSeq = is_.readFloatSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptFloatSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptDoubleSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptDoubleSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readDoubleSeqOpt(1);
            outSeq = is_.readDoubleSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opOptDoubleSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readDoubleSeqOpt(1);
                outSeq = is_.readDoubleSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptDoubleSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptStringSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptStringSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeqOpt(1);
            outSeq = is_.readStringSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opOptStringSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeqOpt(1);
                outSeq = is_.readStringSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptStringSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptESeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ESeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptESeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.ESeq.readOpt(is_, 1);
            outSeq = Test.ESeq.readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opOptESeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ESeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.ESeq.readOpt(is_, 1);
                outSeq = Test.ESeq.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptESeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptSSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SSeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptSSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.SSeq.readOpt(is_, 1);
            outSeq = Test.SSeq.readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opOptSSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SSeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.SSeq.readOpt(is_, 1);
                outSeq = Test.SSeq.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptSSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptDSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.DSeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptDSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.DSeq.readOpt(is_, 1);
            outSeq = Test.DSeq.readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opOptDSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.DSeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.DSeq.readOpt(is_, 1);
                outSeq = Test.DSeq.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptDSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptStringSeqSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringSeqSeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptStringSeqSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.StringSeqSeq.readOpt(is_, 1);
            outSeq = Test.StringSeqSeq.readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opOptStringSeqSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringSeqSeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.StringSeqSeq.readOpt(is_, 1);
                outSeq = Test.StringSeqSeq.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptStringSeqSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptByteBufferSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptByteBufferSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readByteSeqOpt(1);
            outSeq = is_.readByteSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opOptByteBufferSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readByteSeqOpt(1);
                outSeq = is_.readByteSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptByteBufferSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptShortBufferSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptShortBufferSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readShortSeqOpt(1);
            outSeq = is_.readShortSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opOptShortBufferSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readShortSeqOpt(1);
                outSeq = is_.readShortSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptShortBufferSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptIntBufferSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptIntBufferSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readIntSeqOpt(1);
            outSeq = is_.readIntSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opOptIntBufferSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readIntSeqOpt(1);
                outSeq = is_.readIntSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptIntBufferSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptLongBufferSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptLongBufferSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readLongSeqOpt(1);
            outSeq = is_.readLongSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opOptLongBufferSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readLongSeqOpt(1);
                outSeq = is_.readLongSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptLongBufferSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptFloatBufferSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptFloatBufferSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readFloatSeqOpt(1);
            outSeq = is_.readFloatSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opOptFloatBufferSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readFloatSeqOpt(1);
                outSeq = is_.readFloatSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptFloatBufferSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptDoubleBufferSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptDoubleBufferSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readDoubleSeqOpt(1);
            outSeq = is_.readDoubleSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opOptDoubleBufferSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readDoubleSeqOpt(1);
                outSeq = is_.readDoubleSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opOptDoubleBufferSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
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
end
