
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef MyClassPrx < Ice.ObjectPrx
    methods
        function shutdown(obj, varargin)
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
        function [result, o] = opAByteS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAByteS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opAByteSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAByteS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLByteS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLByteS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opLByteSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLByteS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKByteS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKByteS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opKByteSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKByteS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQByteS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQByteS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opQByteSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQByteS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSByteS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSByteS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opSByteSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSByteS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opABoolS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opABoolS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opABoolSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readBoolSeq();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opABoolS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLBoolS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLBoolS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opLBoolSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readBoolSeq();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLBoolS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKBoolS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKBoolS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opKBoolSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readBoolSeq();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKBoolS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQBoolS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQBoolS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opQBoolSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readBoolSeq();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQBoolS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSBoolS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSBoolS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opSBoolSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readBoolSeq();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSBoolS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAShortS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAShortS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readShortSeq();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opAShortSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readShortSeq();
                result = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAShortS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLShortS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLShortS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readShortSeq();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opLShortSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readShortSeq();
                result = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLShortS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKShortS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKShortS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readShortSeq();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opKShortSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readShortSeq();
                result = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKShortS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQShortS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQShortS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readShortSeq();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opQShortSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readShortSeq();
                result = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQShortS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSShortS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSShortS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readShortSeq();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opSShortSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readShortSeq();
                result = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSShortS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAIntS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAIntS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readIntSeq();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opAIntSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAIntS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLIntS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLIntS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readIntSeq();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opLIntSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLIntS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKIntS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKIntS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readIntSeq();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opKIntSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKIntS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQIntS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQIntS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readIntSeq();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opQIntSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQIntS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSIntS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSIntS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readIntSeq();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opSIntSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSIntS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opALongS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opALongS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readLongSeq();
            result = is_.readLongSeq();
            is_.endEncapsulation();
        end
        function r_ = opALongSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readLongSeq();
                result = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opALongS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLLongS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLLongS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readLongSeq();
            result = is_.readLongSeq();
            is_.endEncapsulation();
        end
        function r_ = opLLongSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readLongSeq();
                result = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLLongS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKLongS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKLongS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readLongSeq();
            result = is_.readLongSeq();
            is_.endEncapsulation();
        end
        function r_ = opKLongSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readLongSeq();
                result = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKLongS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQLongS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQLongS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readLongSeq();
            result = is_.readLongSeq();
            is_.endEncapsulation();
        end
        function r_ = opQLongSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readLongSeq();
                result = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQLongS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSLongS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSLongS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readLongSeq();
            result = is_.readLongSeq();
            is_.endEncapsulation();
        end
        function r_ = opSLongSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readLongSeq();
                result = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSLongS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAFloatS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAFloatS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readFloatSeq();
            result = is_.readFloatSeq();
            is_.endEncapsulation();
        end
        function r_ = opAFloatSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readFloatSeq();
                result = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAFloatS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLFloatS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLFloatS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readFloatSeq();
            result = is_.readFloatSeq();
            is_.endEncapsulation();
        end
        function r_ = opLFloatSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readFloatSeq();
                result = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLFloatS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKFloatS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKFloatS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readFloatSeq();
            result = is_.readFloatSeq();
            is_.endEncapsulation();
        end
        function r_ = opKFloatSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readFloatSeq();
                result = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKFloatS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQFloatS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQFloatS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readFloatSeq();
            result = is_.readFloatSeq();
            is_.endEncapsulation();
        end
        function r_ = opQFloatSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readFloatSeq();
                result = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQFloatS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSFloatS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSFloatS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readFloatSeq();
            result = is_.readFloatSeq();
            is_.endEncapsulation();
        end
        function r_ = opSFloatSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readFloatSeq();
                result = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSFloatS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opADoubleS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opADoubleS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opADoubleSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readDoubleSeq();
                result = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opADoubleS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLDoubleS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLDoubleS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opLDoubleSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readDoubleSeq();
                result = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLDoubleS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKDoubleS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKDoubleS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opKDoubleSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readDoubleSeq();
                result = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKDoubleS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQDoubleS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQDoubleS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opQDoubleSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readDoubleSeq();
                result = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQDoubleS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSDoubleS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSDoubleS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opSDoubleSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readDoubleSeq();
                result = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSDoubleS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAStringS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAStringS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opAStringSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAStringS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLStringS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLStringS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opLStringSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLStringS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKStringS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKStringS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opKStringSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKStringS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQStringS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQStringS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opQStringSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQStringS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSStringS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSStringS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opSStringSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSStringS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAObjectS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AObjectS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAObjectS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.AObjectS.read(is_);
            result = Test.AObjectS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.AObjectS.convert(o);
            result = Test.AObjectS.convert(result);
        end
        function r_ = opAObjectSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AObjectS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AObjectS.read(is_);
                result = Test.AObjectS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.AObjectS.convert(result);
                varargout{2} = Test.AObjectS.convert(o);
            end
            r_ = obj.iceInvokeAsync('opAObjectS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLObjectS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LObjectS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLObjectS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.LObjectS.read(is_);
            result = Test.LObjectS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.LObjectS.convert(o);
            result = Test.LObjectS.convert(result);
        end
        function r_ = opLObjectSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LObjectS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LObjectS.read(is_);
                result = Test.LObjectS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.LObjectS.convert(result);
                varargout{2} = Test.LObjectS.convert(o);
            end
            r_ = obj.iceInvokeAsync('opLObjectS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAObjectPrxS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAObjectPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.AObjectPrxS.read(is_);
            result = Test.AObjectPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opAObjectPrxSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AObjectPrxS.read(is_);
                result = Test.AObjectPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAObjectPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLObjectPrxS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLObjectPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.LObjectPrxS.read(is_);
            result = Test.LObjectPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opLObjectPrxSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LObjectPrxS.read(is_);
                result = Test.LObjectPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLObjectPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKObjectPrxS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.KObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKObjectPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.KObjectPrxS.read(is_);
            result = Test.KObjectPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opKObjectPrxSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.KObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.KObjectPrxS.read(is_);
                result = Test.KObjectPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKObjectPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQObjectPrxS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.QObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQObjectPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.QObjectPrxS.read(is_);
            result = Test.QObjectPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opQObjectPrxSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.QObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.QObjectPrxS.read(is_);
                result = Test.QObjectPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQObjectPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSObjectPrxS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSObjectPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.SObjectPrxS.read(is_);
            result = Test.SObjectPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSObjectPrxSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.SObjectPrxS.read(is_);
                result = Test.SObjectPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSObjectPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAStructS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAStructS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.AStructS.read(is_);
            result = Test.AStructS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opAStructSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AStructS.read(is_);
                result = Test.AStructS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAStructS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLStructS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLStructS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.LStructS.read(is_);
            result = Test.LStructS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opLStructSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LStructS.read(is_);
                result = Test.LStructS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLStructS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKStructS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.KStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKStructS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.KStructS.read(is_);
            result = Test.KStructS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opKStructSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.KStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.KStructS.read(is_);
                result = Test.KStructS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKStructS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQStructS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.QStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQStructS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.QStructS.read(is_);
            result = Test.QStructS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opQStructSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.QStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.QStructS.read(is_);
                result = Test.QStructS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQStructS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSStructS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSStructS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.SStructS.read(is_);
            result = Test.SStructS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSStructSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.SStructS.read(is_);
                result = Test.SStructS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSStructS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAStructSD(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAStructSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.AStructSD.read(is_);
            result = Test.AStructSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opAStructSDAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AStructSD.read(is_);
                result = Test.AStructSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAStructSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLStructSD(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLStructSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.LStructSD.read(is_);
            result = Test.LStructSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opLStructSDAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LStructSD.read(is_);
                result = Test.LStructSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLStructSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKStructSD(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.KStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKStructSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.KStructSD.read(is_);
            result = Test.KStructSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opKStructSDAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.KStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.KStructSD.read(is_);
                result = Test.KStructSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKStructSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQStructSD(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.QStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQStructSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.QStructSD.read(is_);
            result = Test.QStructSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opQStructSDAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.QStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.QStructSD.read(is_);
                result = Test.QStructSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQStructSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSStructSD(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSStructSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.SStructSD.read(is_);
            result = Test.SStructSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSStructSDAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.SStructSD.read(is_);
                result = Test.SStructSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSStructSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opACVS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ACVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opACVS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.ACVS.read(is_);
            result = Test.ACVS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.ACVS.convert(o);
            result = Test.ACVS.convert(result);
        end
        function r_ = opACVSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ACVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.ACVS.read(is_);
                result = Test.ACVS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.ACVS.convert(result);
                varargout{2} = Test.ACVS.convert(o);
            end
            r_ = obj.iceInvokeAsync('opACVS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLCVS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LCVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLCVS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.LCVS.read(is_);
            result = Test.LCVS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.LCVS.convert(o);
            result = Test.LCVS.convert(result);
        end
        function r_ = opLCVSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LCVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LCVS.read(is_);
                result = Test.LCVS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.LCVS.convert(result);
                varargout{2} = Test.LCVS.convert(o);
            end
            r_ = obj.iceInvokeAsync('opLCVS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opACRS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ACRS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opACRS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.ACRS.read(is_);
            result = Test.ACRS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.ACRS.convert(o);
            result = Test.ACRS.convert(result);
        end
        function r_ = opACRSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ACRS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.ACRS.read(is_);
                result = Test.ACRS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.ACRS.convert(result);
                varargout{2} = Test.ACRS.convert(o);
            end
            r_ = obj.iceInvokeAsync('opACRS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLCRS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LCRS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLCRS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.LCRS.read(is_);
            result = Test.LCRS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.LCRS.convert(o);
            result = Test.LCRS.convert(result);
        end
        function r_ = opLCRSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LCRS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LCRS.read(is_);
                result = Test.LCRS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.LCRS.convert(result);
                varargout{2} = Test.LCRS.convert(o);
            end
            r_ = obj.iceInvokeAsync('opLCRS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAEnS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAEnS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.AEnS.read(is_);
            result = Test.AEnS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opAEnSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AEnS.read(is_);
                result = Test.AEnS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAEnS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLEnS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLEnS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.LEnS.read(is_);
            result = Test.LEnS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opLEnSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LEnS.read(is_);
                result = Test.LEnS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLEnS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKEnS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.KEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKEnS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.KEnS.read(is_);
            result = Test.KEnS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opKEnSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.KEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.KEnS.read(is_);
                result = Test.KEnS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKEnS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQEnS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.QEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQEnS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.QEnS.read(is_);
            result = Test.QEnS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opQEnSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.QEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.QEnS.read(is_);
                result = Test.QEnS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQEnS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSEnS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSEnS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.SEnS.read(is_);
            result = Test.SEnS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSEnSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.SEnS.read(is_);
                result = Test.SEnS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSEnS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAIPrxS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAIPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.AIPrxS.read(is_);
            result = Test.AIPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opAIPrxSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.AIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AIPrxS.read(is_);
                result = Test.AIPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAIPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLIPrxS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLIPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.LIPrxS.read(is_);
            result = Test.LIPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opLIPrxSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LIPrxS.read(is_);
                result = Test.LIPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLIPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKIPrxS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.KIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKIPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.KIPrxS.read(is_);
            result = Test.KIPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opKIPrxSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.KIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.KIPrxS.read(is_);
                result = Test.KIPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKIPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQIPrxS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.QIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQIPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.QIPrxS.read(is_);
            result = Test.QIPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opQIPrxSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.QIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.QIPrxS.read(is_);
                result = Test.QIPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQIPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSIPrxS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSIPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.SIPrxS.read(is_);
            result = Test.SIPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSIPrxSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.SIPrxS.read(is_);
                result = Test.SIPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSIPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opCustomIntS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCustomIntS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readIntSeq();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opCustomIntSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opCustomIntS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opCustomCVS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.CustomCVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCustomCVS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.CustomCVS.read(is_);
            result = Test.CustomCVS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.CustomCVS.convert(o);
            result = Test.CustomCVS.convert(result);
        end
        function r_ = opCustomCVSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.CustomCVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.CustomCVS.read(is_);
                result = Test.CustomCVS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.CustomCVS.convert(result);
                varargout{2} = Test.CustomCVS.convert(o);
            end
            r_ = obj.iceInvokeAsync('opCustomCVS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opCustomIntSS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.CustomIntSS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCustomIntSS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.CustomIntSS.read(is_);
            result = Test.CustomIntSS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opCustomIntSSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.CustomIntSS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.CustomIntSS.read(is_);
                result = Test.CustomIntSS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opCustomIntSS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opCustomCVSS(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.CustomCVSS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCustomCVSS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.CustomCVSS.read(is_);
            result = Test.CustomCVSS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.CustomCVSS.convert(o);
            result = Test.CustomCVSS.convert(result);
        end
        function r_ = opCustomCVSSAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.CustomCVSS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.CustomCVSS.read(is_);
                result = Test.CustomCVSS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.CustomCVSS.convert(result);
                varargout{2} = Test.CustomCVSS.convert(o);
            end
            r_ = obj.iceInvokeAsync('opCustomCVSS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MyClass';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.MyClassPrx');
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
            % Returns (Test.MyClassPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MyClassPrx.ice_staticId(), 'Test.MyClassPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.MyClassPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MyClassPrx', varargin{:});
        end
    end
end
