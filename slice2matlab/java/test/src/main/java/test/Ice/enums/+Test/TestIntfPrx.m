% TestIntfPrx   Summary of TestIntfPrx
%
% TestIntfPrx Methods:
%   opByte
%   opByteAsync
%   opShort
%   opShortAsync
%   opInt
%   opIntAsync
%   opSimple
%   opSimpleAsync
%   opByteSeq
%   opByteSeqAsync
%   opShortSeq
%   opShortSeqAsync
%   opIntSeq
%   opIntSeqAsync
%   opSimpleSeq
%   opSimpleSeqAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function [result, b2] = opByte(obj, b1, varargin)
            % opByte
            %
            % Parameters:
            %   b1 (Test.ByteEnum)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ByteEnum)
            %   b2 (Test.ByteEnum)
            
            os_ = obj.iceStartWriteParams([]);
            Test.ByteEnum.ice_write(os_, b1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByte', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            b2 = Test.ByteEnum.ice_read(is_);
            result = Test.ByteEnum.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opByteAsync(obj, b1, varargin)
            % opByteAsync
            %
            % Parameters:
            %   b1 (Test.ByteEnum)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.ByteEnum.ice_write(os_, b1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                b2 = Test.ByteEnum.ice_read(is_);
                result = Test.ByteEnum.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = b2;
            end
            r_ = obj.iceInvokeAsync('opByte', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, s2] = opShort(obj, s1, varargin)
            % opShort
            %
            % Parameters:
            %   s1 (Test.ShortEnum)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ShortEnum)
            %   s2 (Test.ShortEnum)
            
            os_ = obj.iceStartWriteParams([]);
            Test.ShortEnum.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShort', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = Test.ShortEnum.ice_read(is_);
            result = Test.ShortEnum.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opShortAsync(obj, s1, varargin)
            % opShortAsync
            %
            % Parameters:
            %   s1 (Test.ShortEnum)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.ShortEnum.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.ShortEnum.ice_read(is_);
                result = Test.ShortEnum.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opShort', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, i2] = opInt(obj, i1, varargin)
            % opInt
            %
            % Parameters:
            %   i1 (Test.IntEnum)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.IntEnum)
            %   i2 (Test.IntEnum)
            
            os_ = obj.iceStartWriteParams([]);
            Test.IntEnum.ice_write(os_, i1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opInt', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            i2 = Test.IntEnum.ice_read(is_);
            result = Test.IntEnum.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opIntAsync(obj, i1, varargin)
            % opIntAsync
            %
            % Parameters:
            %   i1 (Test.IntEnum)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.IntEnum.ice_write(os_, i1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                i2 = Test.IntEnum.ice_read(is_);
                result = Test.IntEnum.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = i2;
            end
            r_ = obj.iceInvokeAsync('opInt', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, s2] = opSimple(obj, s1, varargin)
            % opSimple
            %
            % Parameters:
            %   s1 (Test.SimpleEnum)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SimpleEnum)
            %   s2 (Test.SimpleEnum)
            
            os_ = obj.iceStartWriteParams([]);
            Test.SimpleEnum.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSimple', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = Test.SimpleEnum.ice_read(is_);
            result = Test.SimpleEnum.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSimpleAsync(obj, s1, varargin)
            % opSimpleAsync
            %
            % Parameters:
            %   s1 (Test.SimpleEnum)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.SimpleEnum.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.SimpleEnum.ice_read(is_);
                result = Test.SimpleEnum.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opSimple', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, b2] = opByteSeq(obj, b1, varargin)
            % opByteSeq
            %
            % Parameters:
            %   b1 (Test.ByteEnumSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ByteEnumSeq)
            %   b2 (Test.ByteEnumSeq)
            
            os_ = obj.iceStartWriteParams([]);
            Test.ByteEnumSeq.write(os_, b1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            b2 = Test.ByteEnumSeq.read(is_);
            result = Test.ByteEnumSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opByteSeqAsync(obj, b1, varargin)
            % opByteSeqAsync
            %
            % Parameters:
            %   b1 (Test.ByteEnumSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.ByteEnumSeq.write(os_, b1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                b2 = Test.ByteEnumSeq.read(is_);
                result = Test.ByteEnumSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = b2;
            end
            r_ = obj.iceInvokeAsync('opByteSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, s2] = opShortSeq(obj, s1, varargin)
            % opShortSeq
            %
            % Parameters:
            %   s1 (Test.ShortEnumSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ShortEnumSeq)
            %   s2 (Test.ShortEnumSeq)
            
            os_ = obj.iceStartWriteParams([]);
            Test.ShortEnumSeq.write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = Test.ShortEnumSeq.read(is_);
            result = Test.ShortEnumSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opShortSeqAsync(obj, s1, varargin)
            % opShortSeqAsync
            %
            % Parameters:
            %   s1 (Test.ShortEnumSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.ShortEnumSeq.write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.ShortEnumSeq.read(is_);
                result = Test.ShortEnumSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opShortSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, i2] = opIntSeq(obj, i1, varargin)
            % opIntSeq
            %
            % Parameters:
            %   i1 (Test.IntEnumSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.IntEnumSeq)
            %   i2 (Test.IntEnumSeq)
            
            os_ = obj.iceStartWriteParams([]);
            Test.IntEnumSeq.write(os_, i1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            i2 = Test.IntEnumSeq.read(is_);
            result = Test.IntEnumSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opIntSeqAsync(obj, i1, varargin)
            % opIntSeqAsync
            %
            % Parameters:
            %   i1 (Test.IntEnumSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.IntEnumSeq.write(os_, i1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                i2 = Test.IntEnumSeq.read(is_);
                result = Test.IntEnumSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = i2;
            end
            r_ = obj.iceInvokeAsync('opIntSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, s2] = opSimpleSeq(obj, s1, varargin)
            % opSimpleSeq
            %
            % Parameters:
            %   s1 (Test.SimpleEnumSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SimpleEnumSeq)
            %   s2 (Test.SimpleEnumSeq)
            
            os_ = obj.iceStartWriteParams([]);
            Test.SimpleEnumSeq.write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSimpleSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = Test.SimpleEnumSeq.read(is_);
            result = Test.SimpleEnumSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSimpleSeqAsync(obj, s1, varargin)
            % opSimpleSeqAsync
            %
            % Parameters:
            %   s1 (Test.SimpleEnumSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.SimpleEnumSeq.write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.SimpleEnumSeq.read(is_);
                result = Test.SimpleEnumSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opSimpleSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
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
end
