
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function [result, outSeq] = opShortArray(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortArray', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readShortSeq();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opShortArrayAsync(obj, inSeq, varargin)
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
            r_ = obj.iceInvokeAsync('opShortArray', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opDoubleArray(obj, padding, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(padding);
            os_.writeDoubleSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDoubleArray', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opDoubleArrayAsync(obj, padding, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(padding);
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
            r_ = obj.iceInvokeAsync('opDoubleArray', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opBoolArray(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolArray', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBoolArrayAsync(obj, inSeq, varargin)
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
            r_ = obj.iceInvokeAsync('opBoolArray', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opByteArray(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteArray', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opByteArrayAsync(obj, inSeq, varargin)
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
            r_ = obj.iceInvokeAsync('opByteArray', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opVariableArray(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.VariableList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opVariableArray', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.VariableList.read(is_);
            result = Test.VariableList.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opVariableArrayAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.VariableList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.VariableList.read(is_);
                result = Test.VariableList.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opVariableArray', 0, true, os_, 2, @unmarshal, {}, varargin{:});
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
        function [result, outSeq] = opBoolList(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolList', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBoolListAsync(obj, inSeq, varargin)
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
            r_ = obj.iceInvokeAsync('opBoolList', 0, true, os_, 2, @unmarshal, {}, varargin{:});
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
        function [result, outSeq] = opByteList(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteList', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opByteListAsync(obj, inSeq, varargin)
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
            r_ = obj.iceInvokeAsync('opByteList', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opMyByteSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyByteSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opMyByteSeqAsync(obj, inSeq, varargin)
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
            r_ = obj.iceInvokeAsync('opMyByteSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
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
        function [result, outSeq] = opStringList(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringList', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opStringListAsync(obj, inSeq, varargin)
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
            r_ = obj.iceInvokeAsync('opStringList', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opFixedSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.FixedSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFixedSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.FixedSeq.read(is_);
            result = Test.FixedSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opFixedSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.FixedSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.FixedSeq.read(is_);
                result = Test.FixedSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opFixedSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opFixedList(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.FixedList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFixedList', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.FixedList.read(is_);
            result = Test.FixedList.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opFixedListAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.FixedList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.FixedList.read(is_);
                result = Test.FixedList.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opFixedList', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opVariableSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.VariableSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opVariableSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.VariableSeq.read(is_);
            result = Test.VariableSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opVariableSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.VariableSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.VariableSeq.read(is_);
                result = Test.VariableSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opVariableSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opVariableList(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.VariableList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opVariableList', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.VariableList.read(is_);
            result = Test.VariableList.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opVariableListAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.VariableList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.VariableList.read(is_);
                result = Test.VariableList.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opVariableList', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opStringStringDictSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringDictSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringStringDictSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.StringStringDictSeq.read(is_);
            result = Test.StringStringDictSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opStringStringDictSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringDictSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.StringStringDictSeq.read(is_);
                result = Test.StringStringDictSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opStringStringDictSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opStringStringDictList(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringDictList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringStringDictList', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.StringStringDictList.read(is_);
            result = Test.StringStringDictList.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opStringStringDictListAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringDictList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.StringStringDictList.read(is_);
                result = Test.StringStringDictList.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opStringStringDictList', 0, true, os_, 2, @unmarshal, {}, varargin{:});
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
        function [result, outSeq] = opEList(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.EList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opEList', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.EList.read(is_);
            result = Test.EList.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opEListAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.EList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.EList.read(is_);
                result = Test.EList.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opEList', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opDPrxSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.DPrxSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDPrxSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.DPrxSeq.read(is_);
            result = Test.DPrxSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opDPrxSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.DPrxSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.DPrxSeq.read(is_);
                result = Test.DPrxSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opDPrxSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opDPrxList(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.DPrxList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDPrxList', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.DPrxList.read(is_);
            result = Test.DPrxList.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opDPrxListAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.DPrxList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.DPrxList.read(is_);
                result = Test.DPrxList.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opDPrxList', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opCSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.CSeq.write(os_, inSeq);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.CSeq.read(is_);
            result = Test.CSeq.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            outSeq = Test.CSeq.convert(outSeq);
            result = Test.CSeq.convert(result);
        end
        function r_ = opCSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.CSeq.write(os_, inSeq);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.CSeq.read(is_);
                result = Test.CSeq.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.CSeq.convert(result);
                varargout{2} = Test.CSeq.convert(outSeq);
            end
            r_ = obj.iceInvokeAsync('opCSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opCList(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.CList.write(os_, inSeq);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCList', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.CList.read(is_);
            result = Test.CList.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            outSeq = Test.CList.convert(outSeq);
            result = Test.CList.convert(result);
        end
        function r_ = opCListAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.CList.write(os_, inSeq);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.CList.read(is_);
                result = Test.CList.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.CList.convert(result);
                varargout{2} = Test.CList.convert(outSeq);
            end
            r_ = obj.iceInvokeAsync('opCList', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function copy = opOutArrayByteSeq(obj, org, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(org);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOutArrayByteSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            copy = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opOutArrayByteSeqAsync(obj, org, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(org);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                copy = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = copy;
            end
            r_ = obj.iceInvokeAsync('opOutArrayByteSeq', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function [result, odict] = opIntStringDict(obj, idict, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.IntStringDict.write(os_, idict);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntStringDict', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            odict = Test.IntStringDict.read(is_);
            result = Test.IntStringDict.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opIntStringDictAsync(obj, idict, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.IntStringDict.write(os_, idict);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                odict = Test.IntStringDict.read(is_);
                result = Test.IntStringDict.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = odict;
            end
            r_ = obj.iceInvokeAsync('opIntStringDict', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, odict] = opVarDict(obj, idict, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringIntDict.write(os_, idict);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opVarDict', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            odict = Test.StringIntDict.read(is_);
            result = Test.LongLongDict.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opVarDictAsync(obj, idict, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringIntDict.write(os_, idict);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                odict = Test.StringIntDict.read(is_);
                result = Test.LongLongDict.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = odict;
            end
            r_ = obj.iceInvokeAsync('opVarDict', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outS] = opShortBuffer(obj, inS, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(inS);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortBuffer', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outS = is_.readShortSeq();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opShortBufferAsync(obj, inS, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(inS);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outS = is_.readShortSeq();
                result = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outS;
            end
            r_ = obj.iceInvokeAsync('opShortBuffer', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outS] = opBoolBuffer(obj, inS, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(inS);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolBuffer', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outS = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBoolBufferAsync(obj, inS, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(inS);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outS = is_.readBoolSeq();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outS;
            end
            r_ = obj.iceInvokeAsync('opBoolBuffer', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function result = opBufferStruct(obj, s, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.BufferStruct.ice_write(os_, s);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBufferStruct', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.BufferStruct.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opBufferStructAsync(obj, s, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.BufferStruct.ice_write(os_, s);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.BufferStruct.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBufferStruct', 0, true, os_, 1, @unmarshal, {}, varargin{:});
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
