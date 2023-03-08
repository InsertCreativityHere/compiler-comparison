% TestIntfPrx   Summary of TestIntfPrx
%
% TestIntfPrx Methods:
%   opDoubleArray
%   opDoubleArrayAsync
%   opBoolArray
%   opBoolArrayAsync
%   opByteArray
%   opByteArrayAsync
%   opVariableArray
%   opVariableArrayAsync
%   opBoolRange
%   opBoolRangeAsync
%   opByteRange
%   opByteRangeAsync
%   opVariableRange
%   opVariableRangeAsync
%   opByteRangeType
%   opByteRangeTypeAsync
%   opVariableRangeType
%   opVariableRangeTypeAsync
%   opBoolSeq
%   opBoolSeqAsync
%   opBoolList
%   opBoolListAsync
%   opBoolDequeList
%   opBoolDequeListAsync
%   opBoolDequeListArray
%   opBoolDequeListArrayAsync
%   opBoolDequeListRange
%   opBoolDequeListRangeAsync
%   opByteSeq
%   opByteSeqAsync
%   opByteList
%   opByteListAsync
%   opMyByteSeq
%   opMyByteSeqAsync
%   opString
%   opStringAsync
%   opStringSeq
%   opStringSeqAsync
%   opStringList
%   opStringListAsync
%   opFixedSeq
%   opFixedSeqAsync
%   opFixedList
%   opFixedListAsync
%   opVariableSeq
%   opVariableSeqAsync
%   opVariableList
%   opVariableListAsync
%   opStringStringDictSeq
%   opStringStringDictSeqAsync
%   opStringStringDictList
%   opStringStringDictListAsync
%   opESeq
%   opESeqAsync
%   opEList
%   opEListAsync
%   opDPrxSeq
%   opDPrxSeqAsync
%   opDPrxList
%   opDPrxListAsync
%   opCSeq
%   opCSeqAsync
%   opCList
%   opCListAsync
%   opClassStruct
%   opClassStructAsync
%   opOutArrayByteSeq
%   opOutArrayByteSeqAsync
%   opOutRangeByteSeq
%   opOutRangeByteSeqAsync
%   opIntStringDict
%   opIntStringDictAsync
%   opVarDict
%   opVarDictAsync
%   opCustomIntStringDict
%   opCustomIntStringDictAsync
%   opShortBuffer
%   opShortBufferAsync
%   opBoolBuffer
%   opBoolBufferAsync
%   opBufferStruct
%   opBufferStructAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function [result, outSeq] = opDoubleArray(obj, inSeq, varargin)
            % opDoubleArray
            %
            % Parameters:
            %   inSeq (Test.DoubleSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.DoubleSeq)
            %   outSeq (Test.DoubleSeq)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDoubleArray', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opDoubleArrayAsync(obj, inSeq, varargin)
            % opDoubleArrayAsync
            %
            % Parameters:
            %   inSeq (Test.DoubleSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            r_ = obj.iceInvokeAsync('opDoubleArray', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opBoolArray(obj, inSeq, varargin)
            % opBoolArray
            %
            % Parameters:
            %   inSeq (Test.BoolSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.BoolSeq)
            %   outSeq (Test.BoolSeq)
            
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
            % opBoolArrayAsync
            %
            % Parameters:
            %   inSeq (Test.BoolSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opByteArray
            %
            % Parameters:
            %   inSeq (Test.ByteList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ByteList)
            %   outSeq (Test.ByteList)
            
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
            % opByteArrayAsync
            %
            % Parameters:
            %   inSeq (Test.ByteList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opVariableArray
            %
            % Parameters:
            %   inSeq (Test.VariableList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.VariableList)
            %   outSeq (Test.VariableList)
            
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
            % opVariableArrayAsync
            %
            % Parameters:
            %   inSeq (Test.VariableList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
        function [result, outSeq] = opBoolRange(obj, inSeq, varargin)
            % opBoolRange
            %
            % Parameters:
            %   inSeq (Test.BoolSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.BoolSeq)
            %   outSeq (Test.BoolSeq)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolRange', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBoolRangeAsync(obj, inSeq, varargin)
            % opBoolRangeAsync
            %
            % Parameters:
            %   inSeq (Test.BoolSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            r_ = obj.iceInvokeAsync('opBoolRange', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opByteRange(obj, inSeq, varargin)
            % opByteRange
            %
            % Parameters:
            %   inSeq (Test.ByteList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ByteList)
            %   outSeq (Test.ByteList)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteRange', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opByteRangeAsync(obj, inSeq, varargin)
            % opByteRangeAsync
            %
            % Parameters:
            %   inSeq (Test.ByteList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            r_ = obj.iceInvokeAsync('opByteRange', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opVariableRange(obj, inSeq, varargin)
            % opVariableRange
            %
            % Parameters:
            %   inSeq (Test.VariableList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.VariableList)
            %   outSeq (Test.VariableList)
            
            os_ = obj.iceStartWriteParams([]);
            Test.VariableList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opVariableRange', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.VariableList.read(is_);
            result = Test.VariableList.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opVariableRangeAsync(obj, inSeq, varargin)
            % opVariableRangeAsync
            %
            % Parameters:
            %   inSeq (Test.VariableList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            r_ = obj.iceInvokeAsync('opVariableRange', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opByteRangeType(obj, inSeq, varargin)
            % opByteRangeType
            %
            % Parameters:
            %   inSeq (Test.ByteList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ByteList)
            %   outSeq (Test.ByteList)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteRangeType', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opByteRangeTypeAsync(obj, inSeq, varargin)
            % opByteRangeTypeAsync
            %
            % Parameters:
            %   inSeq (Test.ByteList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            r_ = obj.iceInvokeAsync('opByteRangeType', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opVariableRangeType(obj, inSeq, varargin)
            % opVariableRangeType
            %
            % Parameters:
            %   inSeq (Test.VariableList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.VariableList)
            %   outSeq (Test.VariableList)
            
            os_ = obj.iceStartWriteParams([]);
            Test.VariableList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opVariableRangeType', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.VariableList.read(is_);
            result = Test.VariableList.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opVariableRangeTypeAsync(obj, inSeq, varargin)
            % opVariableRangeTypeAsync
            %
            % Parameters:
            %   inSeq (Test.VariableList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            r_ = obj.iceInvokeAsync('opVariableRangeType', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opBoolSeq(obj, inSeq, varargin)
            % opBoolSeq
            %
            % Parameters:
            %   inSeq (Test.BoolSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.BoolSeq)
            %   outSeq (Test.BoolSeq)
            
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
            % opBoolSeqAsync
            %
            % Parameters:
            %   inSeq (Test.BoolSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opBoolList
            %
            % Parameters:
            %   inSeq (Test.BoolList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.BoolList)
            %   outSeq (Test.BoolList)
            
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
            % opBoolListAsync
            %
            % Parameters:
            %   inSeq (Test.BoolList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
        function [result, outSeq] = opBoolDequeList(obj, inSeq, varargin)
            % opBoolDequeList
            %
            % Parameters:
            %   inSeq (Test.BoolDequeList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.BoolDequeList)
            %   outSeq (Test.BoolDequeList)
            
            os_ = obj.iceStartWriteParams([]);
            Test.BoolDequeList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolDequeList', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.BoolDequeList.read(is_);
            result = Test.BoolDequeList.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opBoolDequeListAsync(obj, inSeq, varargin)
            % opBoolDequeListAsync
            %
            % Parameters:
            %   inSeq (Test.BoolDequeList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.BoolDequeList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.BoolDequeList.read(is_);
                result = Test.BoolDequeList.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opBoolDequeList', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opBoolDequeListArray(obj, inSeq, varargin)
            % opBoolDequeListArray
            %
            % Parameters:
            %   inSeq (Test.BoolDequeList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.BoolDequeList)
            %   outSeq (Test.BoolDequeList)
            
            os_ = obj.iceStartWriteParams([]);
            Test.BoolDequeList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolDequeListArray', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.BoolDequeList.read(is_);
            result = Test.BoolDequeList.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opBoolDequeListArrayAsync(obj, inSeq, varargin)
            % opBoolDequeListArrayAsync
            %
            % Parameters:
            %   inSeq (Test.BoolDequeList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.BoolDequeList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.BoolDequeList.read(is_);
                result = Test.BoolDequeList.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opBoolDequeListArray', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opBoolDequeListRange(obj, inSeq, varargin)
            % opBoolDequeListRange
            %
            % Parameters:
            %   inSeq (Test.BoolDequeList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.BoolDequeList)
            %   outSeq (Test.BoolDequeList)
            
            os_ = obj.iceStartWriteParams([]);
            Test.BoolDequeList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolDequeListRange', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.BoolDequeList.read(is_);
            result = Test.BoolDequeList.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opBoolDequeListRangeAsync(obj, inSeq, varargin)
            % opBoolDequeListRangeAsync
            %
            % Parameters:
            %   inSeq (Test.BoolDequeList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.BoolDequeList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.BoolDequeList.read(is_);
                result = Test.BoolDequeList.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opBoolDequeListRange', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opByteSeq(obj, inSeq, varargin)
            % opByteSeq
            %
            % Parameters:
            %   inSeq (Test.ByteSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ByteSeq)
            %   outSeq (Test.ByteSeq)
            
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
            % opByteSeqAsync
            %
            % Parameters:
            %   inSeq (Test.ByteSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opByteList
            %
            % Parameters:
            %   inSeq (Test.ByteList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ByteList)
            %   outSeq (Test.ByteList)
            
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
            % opByteListAsync
            %
            % Parameters:
            %   inSeq (Test.ByteList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opMyByteSeq
            %
            % Parameters:
            %   inSeq (Test.ByteSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ByteSeq)
            %   outSeq (Test.ByteSeq)
            
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
            % opMyByteSeqAsync
            %
            % Parameters:
            %   inSeq (Test.ByteSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
        function [result, outString] = opString(obj, inString, varargin)
            % opString
            %
            % Parameters:
            %   inString (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (char)
            %   outString (char)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(inString);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opString', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outString = is_.readString();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = opStringAsync(obj, inString, varargin)
            % opStringAsync
            %
            % Parameters:
            %   inString (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(inString);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outString = is_.readString();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outString;
            end
            r_ = obj.iceInvokeAsync('opString', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opStringSeq(obj, inSeq, varargin)
            % opStringSeq
            %
            % Parameters:
            %   inSeq (Test.StringSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.StringSeq)
            %   outSeq (Test.StringSeq)
            
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
            % opStringSeqAsync
            %
            % Parameters:
            %   inSeq (Test.StringSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opStringList
            %
            % Parameters:
            %   inSeq (Test.StringList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.StringList)
            %   outSeq (Test.StringList)
            
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
            % opStringListAsync
            %
            % Parameters:
            %   inSeq (Test.StringList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opFixedSeq
            %
            % Parameters:
            %   inSeq (Test.FixedSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.FixedSeq)
            %   outSeq (Test.FixedSeq)
            
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
            % opFixedSeqAsync
            %
            % Parameters:
            %   inSeq (Test.FixedSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opFixedList
            %
            % Parameters:
            %   inSeq (Test.FixedList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.FixedList)
            %   outSeq (Test.FixedList)
            
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
            % opFixedListAsync
            %
            % Parameters:
            %   inSeq (Test.FixedList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opVariableSeq
            %
            % Parameters:
            %   inSeq (Test.VariableSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.VariableSeq)
            %   outSeq (Test.VariableSeq)
            
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
            % opVariableSeqAsync
            %
            % Parameters:
            %   inSeq (Test.VariableSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opVariableList
            %
            % Parameters:
            %   inSeq (Test.VariableList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.VariableList)
            %   outSeq (Test.VariableList)
            
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
            % opVariableListAsync
            %
            % Parameters:
            %   inSeq (Test.VariableList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opStringStringDictSeq
            %
            % Parameters:
            %   inSeq (Test.StringStringDictSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.StringStringDictSeq)
            %   outSeq (Test.StringStringDictSeq)
            
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
            % opStringStringDictSeqAsync
            %
            % Parameters:
            %   inSeq (Test.StringStringDictSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opStringStringDictList
            %
            % Parameters:
            %   inSeq (Test.StringStringDictList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.StringStringDictList)
            %   outSeq (Test.StringStringDictList)
            
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
            % opStringStringDictListAsync
            %
            % Parameters:
            %   inSeq (Test.StringStringDictList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opESeq
            %
            % Parameters:
            %   inSeq (Test.ESeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ESeq)
            %   outSeq (Test.ESeq)
            
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
            % opESeqAsync
            %
            % Parameters:
            %   inSeq (Test.ESeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opEList
            %
            % Parameters:
            %   inSeq (Test.EList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.EList)
            %   outSeq (Test.EList)
            
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
            % opEListAsync
            %
            % Parameters:
            %   inSeq (Test.EList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opDPrxSeq
            %
            % Parameters:
            %   inSeq (Test.DPrxSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.DPrxSeq)
            %   outSeq (Test.DPrxSeq)
            
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
            % opDPrxSeqAsync
            %
            % Parameters:
            %   inSeq (Test.DPrxSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opDPrxList
            %
            % Parameters:
            %   inSeq (Test.DPrxList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.DPrxList)
            %   outSeq (Test.DPrxList)
            
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
            % opDPrxListAsync
            %
            % Parameters:
            %   inSeq (Test.DPrxList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opCSeq
            %
            % Parameters:
            %   inSeq (Test.CSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.CSeq)
            %   outSeq (Test.CSeq)
            
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
            % opCSeqAsync
            %
            % Parameters:
            %   inSeq (Test.CSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opCList
            %
            % Parameters:
            %   inSeq (Test.CList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.CList)
            %   outSeq (Test.CList)
            
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
            % opCListAsync
            %
            % Parameters:
            %   inSeq (Test.CList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
        function [result, outS, outSeq] = opClassStruct(obj, inS, inSeq, varargin)
            % opClassStruct
            %
            % Parameters:
            %   inS (Test.ClassStruct)
            %   inSeq (Test.ClassStructSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ClassStruct)
            %   outS (Test.ClassStruct)
            %   outSeq (Test.ClassStructSeq)
            
            os_ = obj.iceStartWriteParams([]);
            Test.ClassStruct.ice_write(os_, inS);
            Test.ClassStructSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opClassStruct', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outS = Test.ClassStruct.ice_read(is_);
            outSeq = Test.ClassStructSeq.read(is_);
            result = Test.ClassStruct.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opClassStructAsync(obj, inS, inSeq, varargin)
            % opClassStructAsync
            %
            % Parameters:
            %   inS (Test.ClassStruct)
            %   inSeq (Test.ClassStructSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.ClassStruct.ice_write(os_, inS);
            Test.ClassStructSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outS = Test.ClassStruct.ice_read(is_);
                outSeq = Test.ClassStructSeq.read(is_);
                result = Test.ClassStruct.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = outS;
                varargout{3} = outSeq;
            end
            r_ = obj.iceInvokeAsync('opClassStruct', 0, true, os_, 3, @unmarshal, {}, varargin{:});
        end
        function copy = opOutArrayByteSeq(obj, org, varargin)
            % opOutArrayByteSeq
            %
            % Parameters:
            %   org (Test.ByteSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.ByteSeq)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(org);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOutArrayByteSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            copy = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opOutArrayByteSeqAsync(obj, org, varargin)
            % opOutArrayByteSeqAsync
            %
            % Parameters:
            %   org (Test.ByteSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
        function copy = opOutRangeByteSeq(obj, org, varargin)
            % opOutRangeByteSeq
            %
            % Parameters:
            %   org (Test.ByteSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.ByteSeq)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(org);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOutRangeByteSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            copy = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opOutRangeByteSeqAsync(obj, org, varargin)
            % opOutRangeByteSeqAsync
            %
            % Parameters:
            %   org (Test.ByteSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(org);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                copy = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = copy;
            end
            r_ = obj.iceInvokeAsync('opOutRangeByteSeq', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function [result, odict] = opIntStringDict(obj, idict, varargin)
            % opIntStringDict
            %
            % Parameters:
            %   idict (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (containers.Map)
            %   odict (containers.Map)
            
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
            % opIntStringDictAsync
            %
            % Parameters:
            %   idict (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opVarDict
            %
            % Parameters:
            %   idict (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (containers.Map)
            %   odict (containers.Map)
            
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
            % opVarDictAsync
            %
            % Parameters:
            %   idict (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
        function [result, odict] = opCustomIntStringDict(obj, idict, varargin)
            % opCustomIntStringDict
            %
            % Parameters:
            %   idict (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (containers.Map)
            %   odict (containers.Map)
            
            os_ = obj.iceStartWriteParams([]);
            Test.IntStringDict.write(os_, idict);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCustomIntStringDict', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            odict = Test.IntStringDict.read(is_);
            result = Test.IntStringDict.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opCustomIntStringDictAsync(obj, idict, varargin)
            % opCustomIntStringDictAsync
            %
            % Parameters:
            %   idict (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            r_ = obj.iceInvokeAsync('opCustomIntStringDict', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outS] = opShortBuffer(obj, inS, varargin)
            % opShortBuffer
            %
            % Parameters:
            %   inS (Test.ShortBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ShortBuffer)
            %   outS (Test.ShortBuffer)
            
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
            % opShortBufferAsync
            %
            % Parameters:
            %   inS (Test.ShortBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opBoolBuffer
            %
            % Parameters:
            %   inS (Test.BoolSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.BoolSeq)
            %   outS (Test.BoolSeq)
            
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
            % opBoolBufferAsync
            %
            % Parameters:
            %   inS (Test.BoolSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opBufferStruct
            %
            % Parameters:
            %   s (Test.BufferStruct)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.BufferStruct)
            
            os_ = obj.iceStartWriteParams([]);
            Test.BufferStruct.ice_write(os_, s);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBufferStruct', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.BufferStruct.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opBufferStructAsync(obj, s, varargin)
            % opBufferStructAsync
            %
            % Parameters:
            %   s (Test.BufferStruct)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
end
