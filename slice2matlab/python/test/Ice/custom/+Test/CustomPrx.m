% CustomPrx   Summary of CustomPrx
%
% CustomPrx Methods:
%   opByteString1
%   opByteString1Async
%   opByteString2
%   opByteString2Async
%   opByteList1
%   opByteList1Async
%   opByteList2
%   opByteList2Async
%   opStringList1
%   opStringList1Async
%   opStringList2
%   opStringList2Async
%   opStringTuple1
%   opStringTuple1Async
%   opStringTuple2
%   opStringTuple2Async
%   sendS
%   sendSAsync
%   sendC
%   sendCAsync
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
%   opBogusArrayNotExistsFactory
%   opBogusArrayNotExistsFactoryAsync
%   opBogusArrayThrowFactory
%   opBogusArrayThrowFactoryAsync
%   opBogusArrayType
%   opBogusArrayTypeAsync
%   opBogusArrayNoneFactory
%   opBogusArrayNoneFactoryAsync
%   opBogusArraySignatureFactory
%   opBogusArraySignatureFactoryAsync
%   opBogusArrayNoCallableFactory
%   opBogusArrayNoCallableFactoryAsync
%   opD
%   opDAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef CustomPrx < Ice.ObjectPrx
    methods
        function [result, b2] = opByteString1(obj, b1, varargin)
            % opByteString1
            %
            % Parameters:
            %   b1 (Test.ByteString)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ByteString)
            %   b2 (Test.ByteString)
            
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
            % opByteString1Async
            %
            % Parameters:
            %   b1 (Test.ByteString)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opByteString2
            %
            % Parameters:
            %   b1 (Test.ByteString)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ByteString)
            %   b2 (Test.ByteString)
            
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
            % opByteString2Async
            %
            % Parameters:
            %   b1 (Test.ByteString)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opByteList1
            %
            % Parameters:
            %   b1 (Test.ByteList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ByteList)
            %   b2 (Test.ByteList)
            
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
            % opByteList1Async
            %
            % Parameters:
            %   b1 (Test.ByteList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opByteList2
            %
            % Parameters:
            %   b1 (Test.ByteList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ByteList)
            %   b2 (Test.ByteList)
            
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
            % opByteList2Async
            %
            % Parameters:
            %   b1 (Test.ByteList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opStringList1
            %
            % Parameters:
            %   s1 (Test.StringList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.StringList)
            %   s2 (Test.StringList)
            
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
            % opStringList1Async
            %
            % Parameters:
            %   s1 (Test.StringList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opStringList2
            %
            % Parameters:
            %   s1 (Test.StringList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.StringList)
            %   s2 (Test.StringList)
            
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
            % opStringList2Async
            %
            % Parameters:
            %   s1 (Test.StringList)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opStringTuple1
            %
            % Parameters:
            %   s1 (Test.StringTuple)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.StringTuple)
            %   s2 (Test.StringTuple)
            
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
            % opStringTuple1Async
            %
            % Parameters:
            %   s1 (Test.StringTuple)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opStringTuple2
            %
            % Parameters:
            %   s1 (Test.StringTuple)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.StringTuple)
            %   s2 (Test.StringTuple)
            
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
            % opStringTuple2Async
            %
            % Parameters:
            %   s1 (Test.StringTuple)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % sendS
            %
            % Parameters:
            %   val (Test.S)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            Test.S.ice_write(os_, val);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sendS', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = sendSAsync(obj, val, varargin)
            % sendSAsync
            %
            % Parameters:
            %   val (Test.S)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.S.ice_write(os_, val);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('sendS', 0, false, os_, 0, [], {}, varargin{:});
        end
        function sendC(obj, val, varargin)
            % sendC
            %
            % Parameters:
            %   val (Test.C)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(val);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sendC', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = sendCAsync(obj, val, varargin)
            % sendCAsync
            %
            % Parameters:
            %   val (Test.C)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(val);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('sendC', 0, false, os_, 0, [], {}, varargin{:});
        end
        function [result, v2] = opBoolSeq(obj, v1, varargin)
            % opBoolSeq
            %
            % Parameters:
            %   v1 (Test.BoolSeq1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.BoolSeq1)
            %   v2 (Test.BoolSeq2)
            
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
            % opBoolSeqAsync
            %
            % Parameters:
            %   v1 (Test.BoolSeq1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opByteSeq
            %
            % Parameters:
            %   v1 (Test.ByteSeq1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ByteSeq1)
            %   v2 (Test.ByteSeq2)
            
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
            % opByteSeqAsync
            %
            % Parameters:
            %   v1 (Test.ByteSeq1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opShortSeq
            %
            % Parameters:
            %   v1 (Test.ShortSeq1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ShortSeq1)
            %   v2 (Test.ShortSeq2)
            
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
            % opShortSeqAsync
            %
            % Parameters:
            %   v1 (Test.ShortSeq1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opIntSeq
            %
            % Parameters:
            %   v1 (Test.IntSeq1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.IntSeq1)
            %   v2 (Test.IntSeq2)
            
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
            % opIntSeqAsync
            %
            % Parameters:
            %   v1 (Test.IntSeq1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opLongSeq
            %
            % Parameters:
            %   v1 (Test.LongSeq1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LongSeq1)
            %   v2 (Test.LongSeq2)
            
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
            % opLongSeqAsync
            %
            % Parameters:
            %   v1 (Test.LongSeq1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opFloatSeq
            %
            % Parameters:
            %   v1 (Test.FloatSeq1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.FloatSeq1)
            %   v2 (Test.FloatSeq2)
            
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
            % opFloatSeqAsync
            %
            % Parameters:
            %   v1 (Test.FloatSeq1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opDoubleSeq
            %
            % Parameters:
            %   v1 (Test.DoubleSeq1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.DoubleSeq1)
            %   v2 (Test.DoubleSeq2)
            
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
            % opDoubleSeqAsync
            %
            % Parameters:
            %   v1 (Test.DoubleSeq1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % opBogusArrayNotExistsFactory
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.BoolSeq1)
            
            is_ = obj.iceInvoke('opBogusArrayNotExistsFactory', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBogusArrayNotExistsFactoryAsync(obj, varargin)
            % opBogusArrayNotExistsFactoryAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBogusArrayNotExistsFactory', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opBogusArrayThrowFactory(obj, varargin)
            % opBogusArrayThrowFactory
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.BoolSeq1)
            
            is_ = obj.iceInvoke('opBogusArrayThrowFactory', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBogusArrayThrowFactoryAsync(obj, varargin)
            % opBogusArrayThrowFactoryAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBogusArrayThrowFactory', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opBogusArrayType(obj, varargin)
            % opBogusArrayType
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.BoolSeq1)
            
            is_ = obj.iceInvoke('opBogusArrayType', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBogusArrayTypeAsync(obj, varargin)
            % opBogusArrayTypeAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBogusArrayType', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opBogusArrayNoneFactory(obj, varargin)
            % opBogusArrayNoneFactory
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.BoolSeq1)
            
            is_ = obj.iceInvoke('opBogusArrayNoneFactory', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBogusArrayNoneFactoryAsync(obj, varargin)
            % opBogusArrayNoneFactoryAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBogusArrayNoneFactory', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opBogusArraySignatureFactory(obj, varargin)
            % opBogusArraySignatureFactory
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.BoolSeq1)
            
            is_ = obj.iceInvoke('opBogusArraySignatureFactory', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBogusArraySignatureFactoryAsync(obj, varargin)
            % opBogusArraySignatureFactoryAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBogusArraySignatureFactory', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opBogusArrayNoCallableFactory(obj, varargin)
            % opBogusArrayNoCallableFactory
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.BoolSeq1)
            
            is_ = obj.iceInvoke('opBogusArrayNoCallableFactory', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBogusArrayNoCallableFactoryAsync(obj, varargin)
            % opBogusArrayNoCallableFactoryAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opBogusArrayNoCallableFactory', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opD(obj, d, varargin)
            % opD
            %
            % Parameters:
            %   d (Test.D)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.D)
            
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
            % opDAsync
            %
            % Parameters:
            %   d (Test.D)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
    methods(Hidden=true)
        function obj = CustomPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
