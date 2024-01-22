% TestIntfPrx   Summary of TestIntfPrx
%
% TestIntfPrx Methods:
%   opCSeq
%   opCSeqAsync
%   opCArray
%   opCArrayAsync
%   opCList
%   opCListAsync
%   opBoolSeq
%   opBoolSeqAsync
%   opByteSeq
%   opByteSeqAsync
%   opShortSeq
%   opShortSeqAsync
%   opIntSeq
%   opIntSeqAsync
%   opLongSeq
%   opLongSeqAsync
%   opFloatSeq
%   opFloatSeqAsync
%   opDoubleSeq
%   opDoubleSeqAsync
%   opStringSeq
%   opStringSeqAsync
%   opESeq
%   opESeqAsync
%   opSSeq
%   opSSeqAsync
%   opDSeq
%   opDSeqAsync
%   opStringSeqSeq
%   opStringSeqSeqAsync
%   opByteBufferSeq
%   opByteBufferSeqAsync
%   opShortBufferSeq
%   opShortBufferSeqAsync
%   opIntBufferSeq
%   opIntBufferSeqAsync
%   opLongBufferSeq
%   opLongBufferSeqAsync
%   opFloatBufferSeq
%   opFloatBufferSeqAsync
%   opDoubleBufferSeq
%   opDoubleBufferSeqAsync
%   opOptCSeq
%   opOptCSeqAsync
%   opOptCArray
%   opOptCArrayAsync
%   opOptCList
%   opOptCListAsync
%   opOptBoolSeq
%   opOptBoolSeqAsync
%   opOptByteSeq
%   opOptByteSeqAsync
%   opOptShortSeq
%   opOptShortSeqAsync
%   opOptIntSeq
%   opOptIntSeqAsync
%   opOptLongSeq
%   opOptLongSeqAsync
%   opOptFloatSeq
%   opOptFloatSeqAsync
%   opOptDoubleSeq
%   opOptDoubleSeqAsync
%   opOptStringSeq
%   opOptStringSeqAsync
%   opOptESeq
%   opOptESeqAsync
%   opOptSSeq
%   opOptSSeqAsync
%   opOptDSeq
%   opOptDSeqAsync
%   opOptStringSeqSeq
%   opOptStringSeqSeqAsync
%   opOptByteBufferSeq
%   opOptByteBufferSeqAsync
%   opOptShortBufferSeq
%   opOptShortBufferSeqAsync
%   opOptIntBufferSeq
%   opOptIntBufferSeqAsync
%   opOptLongBufferSeq
%   opOptLongBufferSeqAsync
%   opOptFloatBufferSeq
%   opOptFloatBufferSeqAsync
%   opOptDoubleBufferSeq
%   opOptDoubleBufferSeqAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
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
        function [result, outSeq] = opCArray(obj, inSeq, varargin)
            % opCArray
            %
            % Parameters:
            %   inSeq (Test.CArray)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.CArray)
            %   outSeq (Test.CArray)
            
            os_ = obj.iceStartWriteParams([]);
            Test.CArray.write(os_, inSeq);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCArray', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.CArray.read(is_);
            result = Test.CArray.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            outSeq = Test.CArray.convert(outSeq);
            result = Test.CArray.convert(result);
        end
        function r_ = opCArrayAsync(obj, inSeq, varargin)
            % opCArrayAsync
            %
            % Parameters:
            %   inSeq (Test.CArray)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.CArray.write(os_, inSeq);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.CArray.read(is_);
                result = Test.CArray.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.CArray.convert(result);
                varargout{2} = Test.CArray.convert(outSeq);
            end
            r_ = obj.iceInvokeAsync('opCArray', 0, true, os_, 2, @unmarshal, {}, varargin{:});
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
        function [result, outSeq] = opShortSeq(obj, inSeq, varargin)
            % opShortSeq
            %
            % Parameters:
            %   inSeq (Test.ShortSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ShortSeq)
            %   outSeq (Test.ShortSeq)
            
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
            % opShortSeqAsync
            %
            % Parameters:
            %   inSeq (Test.ShortSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opIntSeq
            %
            % Parameters:
            %   inSeq (Test.IntSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.IntSeq)
            %   outSeq (Test.IntSeq)
            
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
            % opIntSeqAsync
            %
            % Parameters:
            %   inSeq (Test.IntSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opLongSeq
            %
            % Parameters:
            %   inSeq (Test.LongSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LongSeq)
            %   outSeq (Test.LongSeq)
            
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
            % opLongSeqAsync
            %
            % Parameters:
            %   inSeq (Test.LongSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opFloatSeq
            %
            % Parameters:
            %   inSeq (Test.FloatSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.FloatSeq)
            %   outSeq (Test.FloatSeq)
            
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
            % opFloatSeqAsync
            %
            % Parameters:
            %   inSeq (Test.FloatSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opDoubleSeq
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
            is_ = obj.iceInvoke('opDoubleSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opDoubleSeqAsync(obj, inSeq, varargin)
            % opDoubleSeqAsync
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
            r_ = obj.iceInvokeAsync('opDoubleSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
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
        function [result, outSeq] = opSSeq(obj, inSeq, varargin)
            % opSSeq
            %
            % Parameters:
            %   inSeq (Test.SSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SSeq)
            %   outSeq (Test.SSeq)
            
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
            % opSSeqAsync
            %
            % Parameters:
            %   inSeq (Test.SSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opDSeq
            %
            % Parameters:
            %   inSeq (Test.DSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.DSeq)
            %   outSeq (Test.DSeq)
            
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
            % opDSeqAsync
            %
            % Parameters:
            %   inSeq (Test.DSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opStringSeqSeq
            %
            % Parameters:
            %   inSeq (Test.StringSeqSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.StringSeqSeq)
            %   outSeq (Test.StringSeqSeq)
            
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
            % opStringSeqSeqAsync
            %
            % Parameters:
            %   inSeq (Test.StringSeqSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opByteBufferSeq
            %
            % Parameters:
            %   inSeq (Test.ByteBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ByteBuffer)
            %   outSeq (Test.ByteBuffer)
            
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
            % opByteBufferSeqAsync
            %
            % Parameters:
            %   inSeq (Test.ByteBuffer)
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
            r_ = obj.iceInvokeAsync('opByteBufferSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opShortBufferSeq(obj, inSeq, varargin)
            % opShortBufferSeq
            %
            % Parameters:
            %   inSeq (Test.ShortBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ShortBuffer)
            %   outSeq (Test.ShortBuffer)
            
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
            % opShortBufferSeqAsync
            %
            % Parameters:
            %   inSeq (Test.ShortBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opIntBufferSeq
            %
            % Parameters:
            %   inSeq (Test.IntBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.IntBuffer)
            %   outSeq (Test.IntBuffer)
            
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
            % opIntBufferSeqAsync
            %
            % Parameters:
            %   inSeq (Test.IntBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opLongBufferSeq
            %
            % Parameters:
            %   inSeq (Test.LongBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LongBuffer)
            %   outSeq (Test.LongBuffer)
            
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
            % opLongBufferSeqAsync
            %
            % Parameters:
            %   inSeq (Test.LongBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opFloatBufferSeq
            %
            % Parameters:
            %   inSeq (Test.FloatBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.FloatBuffer)
            %   outSeq (Test.FloatBuffer)
            
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
            % opFloatBufferSeqAsync
            %
            % Parameters:
            %   inSeq (Test.FloatBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opDoubleBufferSeq
            %
            % Parameters:
            %   inSeq (Test.DoubleBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.DoubleBuffer)
            %   outSeq (Test.DoubleBuffer)
            
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
            % opDoubleBufferSeqAsync
            %
            % Parameters:
            %   inSeq (Test.DoubleBuffer)
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
            r_ = obj.iceInvokeAsync('opDoubleBufferSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptCSeq(obj, inSeq, varargin)
            % opOptCSeq
            %
            % Parameters:
            %   inSeq (Test.CSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.CSeq)
            %   outSeq (Test.CSeq)
            
            os_ = obj.iceStartWriteParams([]);
            Test.CSeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptCSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.CSeq.readOpt(is_, 1);
            outSeq = Test.CSeq.readOpt(is_, 3);
            is_.endEncapsulation();
            if result ~= Ice.Unset
                result = Test.CSeq.convert(result);
            end
            if outSeq ~= Ice.Unset
                outSeq = Test.CSeq.convert(outSeq);
            end
        end
        function r_ = opOptCSeqAsync(obj, inSeq, varargin)
            % opOptCSeqAsync
            %
            % Parameters:
            %   inSeq (Test.CSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.CSeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.CSeq.readOpt(is_, 1);
                outSeq = Test.CSeq.readOpt(is_, 3);
                is_.endEncapsulation();
                if result ~= Ice.Unset
                    varargout{1} = Test.CSeq.convert(result);
                end
                if outSeq ~= Ice.Unset
                    varargout{2} = Test.CSeq.convert(outSeq);
                end
            end
            r_ = obj.iceInvokeAsync('opOptCSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptCArray(obj, inSeq, varargin)
            % opOptCArray
            %
            % Parameters:
            %   inSeq (Test.CArray)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.CArray)
            %   outSeq (Test.CArray)
            
            os_ = obj.iceStartWriteParams([]);
            Test.CArray.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptCArray', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.CArray.readOpt(is_, 1);
            outSeq = Test.CArray.readOpt(is_, 3);
            is_.endEncapsulation();
            if result ~= Ice.Unset
                result = Test.CArray.convert(result);
            end
            if outSeq ~= Ice.Unset
                outSeq = Test.CArray.convert(outSeq);
            end
        end
        function r_ = opOptCArrayAsync(obj, inSeq, varargin)
            % opOptCArrayAsync
            %
            % Parameters:
            %   inSeq (Test.CArray)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.CArray.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.CArray.readOpt(is_, 1);
                outSeq = Test.CArray.readOpt(is_, 3);
                is_.endEncapsulation();
                if result ~= Ice.Unset
                    varargout{1} = Test.CArray.convert(result);
                end
                if outSeq ~= Ice.Unset
                    varargout{2} = Test.CArray.convert(outSeq);
                end
            end
            r_ = obj.iceInvokeAsync('opOptCArray', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptCList(obj, inSeq, varargin)
            % opOptCList
            %
            % Parameters:
            %   inSeq (Test.CList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.CList)
            %   outSeq (Test.CList)
            
            os_ = obj.iceStartWriteParams([]);
            Test.CList.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptCList', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.CList.readOpt(is_, 1);
            outSeq = Test.CList.readOpt(is_, 3);
            is_.endEncapsulation();
            if result ~= Ice.Unset
                result = Test.CList.convert(result);
            end
            if outSeq ~= Ice.Unset
                outSeq = Test.CList.convert(outSeq);
            end
        end
        function r_ = opOptCListAsync(obj, inSeq, varargin)
            % opOptCListAsync
            %
            % Parameters:
            %   inSeq (Test.CList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.CList.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.CList.readOpt(is_, 1);
                outSeq = Test.CList.readOpt(is_, 3);
                is_.endEncapsulation();
                if result ~= Ice.Unset
                    varargout{1} = Test.CList.convert(result);
                end
                if outSeq ~= Ice.Unset
                    varargout{2} = Test.CList.convert(outSeq);
                end
            end
            r_ = obj.iceInvokeAsync('opOptCList', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, outSeq] = opOptBoolSeq(obj, inSeq, varargin)
            % opOptBoolSeq
            %
            % Parameters:
            %   inSeq (Test.BoolSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.BoolSeq)
            %   outSeq (Test.BoolSeq)
            
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
            % opOptBoolSeqAsync
            %
            % Parameters:
            %   inSeq (Test.BoolSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptByteSeq
            %
            % Parameters:
            %   inSeq (Test.ByteSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ByteSeq)
            %   outSeq (Test.ByteSeq)
            
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
            % opOptByteSeqAsync
            %
            % Parameters:
            %   inSeq (Test.ByteSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptShortSeq
            %
            % Parameters:
            %   inSeq (Test.ShortSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ShortSeq)
            %   outSeq (Test.ShortSeq)
            
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
            % opOptShortSeqAsync
            %
            % Parameters:
            %   inSeq (Test.ShortSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptIntSeq
            %
            % Parameters:
            %   inSeq (Test.IntSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.IntSeq)
            %   outSeq (Test.IntSeq)
            
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
            % opOptIntSeqAsync
            %
            % Parameters:
            %   inSeq (Test.IntSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptLongSeq
            %
            % Parameters:
            %   inSeq (Test.LongSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LongSeq)
            %   outSeq (Test.LongSeq)
            
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
            % opOptLongSeqAsync
            %
            % Parameters:
            %   inSeq (Test.LongSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptFloatSeq
            %
            % Parameters:
            %   inSeq (Test.FloatSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.FloatSeq)
            %   outSeq (Test.FloatSeq)
            
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
            % opOptFloatSeqAsync
            %
            % Parameters:
            %   inSeq (Test.FloatSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptDoubleSeq
            %
            % Parameters:
            %   inSeq (Test.DoubleSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.DoubleSeq)
            %   outSeq (Test.DoubleSeq)
            
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
            % opOptDoubleSeqAsync
            %
            % Parameters:
            %   inSeq (Test.DoubleSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptStringSeq
            %
            % Parameters:
            %   inSeq (Test.StringSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.StringSeq)
            %   outSeq (Test.StringSeq)
            
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
            % opOptStringSeqAsync
            %
            % Parameters:
            %   inSeq (Test.StringSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptESeq
            %
            % Parameters:
            %   inSeq (Test.ESeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ESeq)
            %   outSeq (Test.ESeq)
            
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
            % opOptESeqAsync
            %
            % Parameters:
            %   inSeq (Test.ESeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptSSeq
            %
            % Parameters:
            %   inSeq (Test.SSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SSeq)
            %   outSeq (Test.SSeq)
            
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
            % opOptSSeqAsync
            %
            % Parameters:
            %   inSeq (Test.SSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptDSeq
            %
            % Parameters:
            %   inSeq (Test.DSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.DSeq)
            %   outSeq (Test.DSeq)
            
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
            % opOptDSeqAsync
            %
            % Parameters:
            %   inSeq (Test.DSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptStringSeqSeq
            %
            % Parameters:
            %   inSeq (Test.StringSeqSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.StringSeqSeq)
            %   outSeq (Test.StringSeqSeq)
            
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
            % opOptStringSeqSeqAsync
            %
            % Parameters:
            %   inSeq (Test.StringSeqSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptByteBufferSeq
            %
            % Parameters:
            %   inSeq (Test.ByteBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ByteBuffer)
            %   outSeq (Test.ByteBuffer)
            
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
            % opOptByteBufferSeqAsync
            %
            % Parameters:
            %   inSeq (Test.ByteBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptShortBufferSeq
            %
            % Parameters:
            %   inSeq (Test.ShortBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ShortBuffer)
            %   outSeq (Test.ShortBuffer)
            
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
            % opOptShortBufferSeqAsync
            %
            % Parameters:
            %   inSeq (Test.ShortBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptIntBufferSeq
            %
            % Parameters:
            %   inSeq (Test.IntBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.IntBuffer)
            %   outSeq (Test.IntBuffer)
            
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
            % opOptIntBufferSeqAsync
            %
            % Parameters:
            %   inSeq (Test.IntBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptLongBufferSeq
            %
            % Parameters:
            %   inSeq (Test.LongBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LongBuffer)
            %   outSeq (Test.LongBuffer)
            
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
            % opOptLongBufferSeqAsync
            %
            % Parameters:
            %   inSeq (Test.LongBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptFloatBufferSeq
            %
            % Parameters:
            %   inSeq (Test.FloatBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.FloatBuffer)
            %   outSeq (Test.FloatBuffer)
            
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
            % opOptFloatBufferSeqAsync
            %
            % Parameters:
            %   inSeq (Test.FloatBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opOptDoubleBufferSeq
            %
            % Parameters:
            %   inSeq (Test.DoubleBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.DoubleBuffer)
            %   outSeq (Test.DoubleBuffer)
            
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
            % opOptDoubleBufferSeqAsync
            %
            % Parameters:
            %   inSeq (Test.DoubleBuffer)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
