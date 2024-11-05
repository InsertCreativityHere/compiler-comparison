
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function [result, b2] = opByte(obj, b1, varargin)
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
