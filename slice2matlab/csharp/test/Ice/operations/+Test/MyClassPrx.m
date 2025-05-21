
% Copyright (c) ZeroC, Inc.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef MyClassPrx < Ice.ObjectPrx
    methods
        function shutdown(obj, varargin)
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = supportsCompress(obj, varargin)
            is_ = obj.iceInvoke('supportsCompress', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = supportsCompressAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('supportsCompress', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function opVoid(obj, varargin)
            obj.iceInvoke('opVoid', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opVoidAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('opVoid', 0, false, [], 0, [], {}, varargin{:});
        end
        function [result, p3] = opByte(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByte(p1);
            os_.writeByte(p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByte', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = is_.readByte();
            result = is_.readByte();
            is_.endEncapsulation();
        end
        function r_ = opByteAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByte(p1);
            os_.writeByte(p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readByte();
                result = is_.readByte();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opByte', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opBool(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(p1);
            os_.writeBool(p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBool', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = is_.readBool();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = opBoolAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(p1);
            os_.writeBool(p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readBool();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opBool', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p4, p5, p6] = opShortIntLong(obj, p1, p2, p3, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShort(p1);
            os_.writeInt(p2);
            os_.writeLong(p3);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortIntLong', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p4 = is_.readShort();
            p5 = is_.readInt();
            p6 = is_.readLong();
            result = is_.readLong();
            is_.endEncapsulation();
        end
        function r_ = opShortIntLongAsync(obj, p1, p2, p3, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShort(p1);
            os_.writeInt(p2);
            os_.writeLong(p3);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p4 = is_.readShort();
                p5 = is_.readInt();
                p6 = is_.readLong();
                result = is_.readLong();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p4;
                varargout{3} = p5;
                varargout{4} = p6;
            end
            r_ = obj.iceInvokeAsync('opShortIntLong', 0, true, os_, 4, @unmarshal, {}, varargin{:});
        end
        function [result, p3, p4] = opFloatDouble(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloat(p1);
            os_.writeDouble(p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloatDouble', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = is_.readFloat();
            p4 = is_.readDouble();
            result = is_.readDouble();
            is_.endEncapsulation();
        end
        function r_ = opFloatDoubleAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloat(p1);
            os_.writeDouble(p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readFloat();
                p4 = is_.readDouble();
                result = is_.readDouble();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
                varargout{3} = p4;
            end
            r_ = obj.iceInvokeAsync('opFloatDouble', 0, true, os_, 3, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opString(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(p1);
            os_.writeString(p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opString', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = is_.readString();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = opStringAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(p1);
            os_.writeString(p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readString();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opString', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p2] = opMyEnum(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnum.ice_write(os_, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyEnum', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p2 = Test.MyEnum.ice_read(is_);
            result = Test.MyEnum.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opMyEnumAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnum.ice_write(os_, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p2 = Test.MyEnum.ice_read(is_);
                result = Test.MyEnum.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p2;
            end
            r_ = obj.iceInvokeAsync('opMyEnum', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p2, p3] = opMyClass(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyClass', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p2 = Test.MyClassPrx.ice_read(is_);
            p3 = Test.MyClassPrx.ice_read(is_);
            result = Test.MyClassPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opMyClassAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p2 = Test.MyClassPrx.ice_read(is_);
                p3 = Test.MyClassPrx.ice_read(is_);
                result = Test.MyClassPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p2;
                varargout{3} = p3;
            end
            r_ = obj.iceInvokeAsync('opMyClass', 0, true, os_, 3, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opStruct(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.Structure.ice_write(os_, p1);
            Test.Structure.ice_write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStruct', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.Structure.ice_read(is_);
            result = Test.Structure.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opStructAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.Structure.ice_write(os_, p1);
            Test.Structure.ice_write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.Structure.ice_read(is_);
                result = Test.Structure.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opStruct', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opByteS(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(p1);
            os_.writeByteSeq(p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opByteSAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(p1);
            os_.writeByteSeq(p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opByteS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opBoolS(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(p1);
            os_.writeBoolSeq(p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opBoolSAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(p1);
            os_.writeBoolSeq(p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readBoolSeq();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opBoolS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p4, p5, p6] = opShortIntLongS(obj, p1, p2, p3, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(p1);
            os_.writeIntSeq(p2);
            os_.writeLongSeq(p3);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortIntLongS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p4 = is_.readShortSeq();
            p5 = is_.readIntSeq();
            p6 = is_.readLongSeq();
            result = is_.readLongSeq();
            is_.endEncapsulation();
        end
        function r_ = opShortIntLongSAsync(obj, p1, p2, p3, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(p1);
            os_.writeIntSeq(p2);
            os_.writeLongSeq(p3);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p4 = is_.readShortSeq();
                p5 = is_.readIntSeq();
                p6 = is_.readLongSeq();
                result = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p4;
                varargout{3} = p5;
                varargout{4} = p6;
            end
            r_ = obj.iceInvokeAsync('opShortIntLongS', 0, true, os_, 4, @unmarshal, {}, varargin{:});
        end
        function [result, p3, p4] = opFloatDoubleS(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(p1);
            os_.writeDoubleSeq(p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloatDoubleS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = is_.readFloatSeq();
            p4 = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opFloatDoubleSAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(p1);
            os_.writeDoubleSeq(p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readFloatSeq();
                p4 = is_.readDoubleSeq();
                result = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
                varargout{3} = p4;
            end
            r_ = obj.iceInvokeAsync('opFloatDoubleS', 0, true, os_, 3, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opStringS(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(p1);
            os_.writeStringSeq(p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opStringSAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(p1);
            os_.writeStringSeq(p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opStringS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opByteSS(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ByteSS.write(os_, p1);
            Test.ByteSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteSS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.ByteSS.read(is_);
            result = Test.ByteSS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opByteSSAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ByteSS.write(os_, p1);
            Test.ByteSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.ByteSS.read(is_);
                result = Test.ByteSS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opByteSS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opBoolSS(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.BoolSS.write(os_, p1);
            Test.BoolSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolSS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.BoolSS.read(is_);
            result = Test.BoolSS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opBoolSSAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.BoolSS.write(os_, p1);
            Test.BoolSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.BoolSS.read(is_);
                result = Test.BoolSS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opBoolSS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p4, p5, p6] = opShortIntLongSS(obj, p1, p2, p3, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ShortSS.write(os_, p1);
            Test.IntSS.write(os_, p2);
            Test.LongSS.write(os_, p3);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortIntLongSS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p4 = Test.ShortSS.read(is_);
            p5 = Test.IntSS.read(is_);
            p6 = Test.LongSS.read(is_);
            result = Test.LongSS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opShortIntLongSSAsync(obj, p1, p2, p3, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ShortSS.write(os_, p1);
            Test.IntSS.write(os_, p2);
            Test.LongSS.write(os_, p3);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p4 = Test.ShortSS.read(is_);
                p5 = Test.IntSS.read(is_);
                p6 = Test.LongSS.read(is_);
                result = Test.LongSS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p4;
                varargout{3} = p5;
                varargout{4} = p6;
            end
            r_ = obj.iceInvokeAsync('opShortIntLongSS', 0, true, os_, 4, @unmarshal, {}, varargin{:});
        end
        function [result, p3, p4] = opFloatDoubleSS(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.FloatSS.write(os_, p1);
            Test.DoubleSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloatDoubleSS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.FloatSS.read(is_);
            p4 = Test.DoubleSS.read(is_);
            result = Test.DoubleSS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opFloatDoubleSSAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.FloatSS.write(os_, p1);
            Test.DoubleSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.FloatSS.read(is_);
                p4 = Test.DoubleSS.read(is_);
                result = Test.DoubleSS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
                varargout{3} = p4;
            end
            r_ = obj.iceInvokeAsync('opFloatDoubleSS', 0, true, os_, 3, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opStringSS(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringSS.write(os_, p1);
            Test.StringSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringSS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.StringSS.read(is_);
            result = Test.StringSS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opStringSSAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringSS.write(os_, p1);
            Test.StringSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringSS.read(is_);
                result = Test.StringSS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opStringSS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opStringSSS(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringSSS.write(os_, p1);
            Test.StringSSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringSSS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.StringSSS.read(is_);
            result = Test.StringSSS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opStringSSSAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringSSS.write(os_, p1);
            Test.StringSSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringSSS.read(is_);
                result = Test.StringSSS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opStringSSS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opByteBoolD(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ByteBoolD.write(os_, p1);
            Test.ByteBoolD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteBoolD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.ByteBoolD.read(is_);
            result = Test.ByteBoolD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opByteBoolDAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ByteBoolD.write(os_, p1);
            Test.ByteBoolD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.ByteBoolD.read(is_);
                result = Test.ByteBoolD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opByteBoolD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opShortIntD(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ShortIntD.write(os_, p1);
            Test.ShortIntD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortIntD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.ShortIntD.read(is_);
            result = Test.ShortIntD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opShortIntDAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ShortIntD.write(os_, p1);
            Test.ShortIntD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.ShortIntD.read(is_);
                result = Test.ShortIntD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opShortIntD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opLongFloatD(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LongFloatD.write(os_, p1);
            Test.LongFloatD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLongFloatD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.LongFloatD.read(is_);
            result = Test.LongFloatD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opLongFloatDAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LongFloatD.write(os_, p1);
            Test.LongFloatD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.LongFloatD.read(is_);
                result = Test.LongFloatD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opLongFloatD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opStringStringD(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringD.write(os_, p1);
            Test.StringStringD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringStringD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.StringStringD.read(is_);
            result = Test.StringStringD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opStringStringDAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringD.write(os_, p1);
            Test.StringStringD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringStringD.read(is_);
                result = Test.StringStringD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opStringStringD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opStringMyEnumD(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringMyEnumD.write(os_, p1);
            Test.StringMyEnumD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringMyEnumD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.StringMyEnumD.read(is_);
            result = Test.StringMyEnumD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opStringMyEnumDAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringMyEnumD.write(os_, p1);
            Test.StringMyEnumD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringMyEnumD.read(is_);
                result = Test.StringMyEnumD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opStringMyEnumD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opMyEnumStringD(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnumStringD.write(os_, p1);
            Test.MyEnumStringD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyEnumStringD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.MyEnumStringD.read(is_);
            result = Test.MyEnumStringD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opMyEnumStringDAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnumStringD.write(os_, p1);
            Test.MyEnumStringD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.MyEnumStringD.read(is_);
                result = Test.MyEnumStringD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opMyEnumStringD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opMyStructMyEnumD(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.MyStructMyEnumD.write(os_, p1);
            Test.MyStructMyEnumD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyStructMyEnumD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.MyStructMyEnumD.read(is_);
            result = Test.MyStructMyEnumD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opMyStructMyEnumDAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.MyStructMyEnumD.write(os_, p1);
            Test.MyStructMyEnumD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.MyStructMyEnumD.read(is_);
                result = Test.MyStructMyEnumD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opMyStructMyEnumD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opByteBoolDS(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ByteBoolDS.write(os_, p1);
            Test.ByteBoolDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteBoolDS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.ByteBoolDS.read(is_);
            result = Test.ByteBoolDS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opByteBoolDSAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ByteBoolDS.write(os_, p1);
            Test.ByteBoolDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.ByteBoolDS.read(is_);
                result = Test.ByteBoolDS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opByteBoolDS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opShortIntDS(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ShortIntDS.write(os_, p1);
            Test.ShortIntDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortIntDS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.ShortIntDS.read(is_);
            result = Test.ShortIntDS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opShortIntDSAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ShortIntDS.write(os_, p1);
            Test.ShortIntDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.ShortIntDS.read(is_);
                result = Test.ShortIntDS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opShortIntDS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opLongFloatDS(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LongFloatDS.write(os_, p1);
            Test.LongFloatDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLongFloatDS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.LongFloatDS.read(is_);
            result = Test.LongFloatDS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opLongFloatDSAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LongFloatDS.write(os_, p1);
            Test.LongFloatDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.LongFloatDS.read(is_);
                result = Test.LongFloatDS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opLongFloatDS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opStringStringDS(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringDS.write(os_, p1);
            Test.StringStringDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringStringDS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.StringStringDS.read(is_);
            result = Test.StringStringDS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opStringStringDSAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringDS.write(os_, p1);
            Test.StringStringDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringStringDS.read(is_);
                result = Test.StringStringDS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opStringStringDS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opStringMyEnumDS(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringMyEnumDS.write(os_, p1);
            Test.StringMyEnumDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringMyEnumDS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.StringMyEnumDS.read(is_);
            result = Test.StringMyEnumDS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opStringMyEnumDSAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringMyEnumDS.write(os_, p1);
            Test.StringMyEnumDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringMyEnumDS.read(is_);
                result = Test.StringMyEnumDS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opStringMyEnumDS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opMyEnumStringDS(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnumStringDS.write(os_, p1);
            Test.MyEnumStringDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyEnumStringDS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.MyEnumStringDS.read(is_);
            result = Test.MyEnumStringDS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opMyEnumStringDSAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnumStringDS.write(os_, p1);
            Test.MyEnumStringDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.MyEnumStringDS.read(is_);
                result = Test.MyEnumStringDS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opMyEnumStringDS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opMyStructMyEnumDS(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.MyStructMyEnumDS.write(os_, p1);
            Test.MyStructMyEnumDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyStructMyEnumDS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.MyStructMyEnumDS.read(is_);
            result = Test.MyStructMyEnumDS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opMyStructMyEnumDSAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.MyStructMyEnumDS.write(os_, p1);
            Test.MyStructMyEnumDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.MyStructMyEnumDS.read(is_);
                result = Test.MyStructMyEnumDS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opMyStructMyEnumDS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opByteByteSD(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ByteByteSD.write(os_, p1);
            Test.ByteByteSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteByteSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.ByteByteSD.read(is_);
            result = Test.ByteByteSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opByteByteSDAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ByteByteSD.write(os_, p1);
            Test.ByteByteSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.ByteByteSD.read(is_);
                result = Test.ByteByteSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opByteByteSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opBoolBoolSD(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.BoolBoolSD.write(os_, p1);
            Test.BoolBoolSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolBoolSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.BoolBoolSD.read(is_);
            result = Test.BoolBoolSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opBoolBoolSDAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.BoolBoolSD.write(os_, p1);
            Test.BoolBoolSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.BoolBoolSD.read(is_);
                result = Test.BoolBoolSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opBoolBoolSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opShortShortSD(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ShortShortSD.write(os_, p1);
            Test.ShortShortSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortShortSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.ShortShortSD.read(is_);
            result = Test.ShortShortSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opShortShortSDAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ShortShortSD.write(os_, p1);
            Test.ShortShortSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.ShortShortSD.read(is_);
                result = Test.ShortShortSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opShortShortSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opIntIntSD(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.IntIntSD.write(os_, p1);
            Test.IntIntSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntIntSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.IntIntSD.read(is_);
            result = Test.IntIntSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opIntIntSDAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.IntIntSD.write(os_, p1);
            Test.IntIntSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.IntIntSD.read(is_);
                result = Test.IntIntSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opIntIntSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opLongLongSD(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LongLongSD.write(os_, p1);
            Test.LongLongSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLongLongSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.LongLongSD.read(is_);
            result = Test.LongLongSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opLongLongSDAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.LongLongSD.write(os_, p1);
            Test.LongLongSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.LongLongSD.read(is_);
                result = Test.LongLongSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opLongLongSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opStringFloatSD(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringFloatSD.write(os_, p1);
            Test.StringFloatSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringFloatSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.StringFloatSD.read(is_);
            result = Test.StringFloatSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opStringFloatSDAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringFloatSD.write(os_, p1);
            Test.StringFloatSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringFloatSD.read(is_);
                result = Test.StringFloatSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opStringFloatSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opStringDoubleSD(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringDoubleSD.write(os_, p1);
            Test.StringDoubleSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringDoubleSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.StringDoubleSD.read(is_);
            result = Test.StringDoubleSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opStringDoubleSDAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringDoubleSD.write(os_, p1);
            Test.StringDoubleSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringDoubleSD.read(is_);
                result = Test.StringDoubleSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opStringDoubleSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opStringStringSD(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringSD.write(os_, p1);
            Test.StringStringSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringStringSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.StringStringSD.read(is_);
            result = Test.StringStringSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opStringStringSDAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringSD.write(os_, p1);
            Test.StringStringSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringStringSD.read(is_);
                result = Test.StringStringSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opStringStringSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opMyEnumMyEnumSD(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnumMyEnumSD.write(os_, p1);
            Test.MyEnumMyEnumSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyEnumMyEnumSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = Test.MyEnumMyEnumSD.read(is_);
            result = Test.MyEnumMyEnumSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opMyEnumMyEnumSDAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnumMyEnumSD.write(os_, p1);
            Test.MyEnumMyEnumSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.MyEnumMyEnumSD.read(is_);
                result = Test.MyEnumMyEnumSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opMyEnumMyEnumSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function result = opIntS(obj, s, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(s);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opIntSAsync(obj, s, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(s);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opIntS', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function opByteSOneway(obj, s, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(s);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opByteSOneway', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = opByteSOnewayAsync(obj, s, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(s);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('opByteSOneway', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = opByteSOnewayCallCount(obj, varargin)
            is_ = obj.iceInvoke('opByteSOnewayCallCount', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = opByteSOnewayCallCountAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opByteSOnewayCallCount', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opContext(obj, varargin)
            is_ = obj.iceInvoke('opContext', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.Context.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opContextAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Ice.Context.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opContext', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function opDoubleMarshaling(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDouble(p1);
            os_.writeDoubleSeq(p2);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opDoubleMarshaling', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = opDoubleMarshalingAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDouble(p1);
            os_.writeDoubleSeq(p2);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('opDoubleMarshaling', 0, false, os_, 0, [], {}, varargin{:});
        end
        function opIdempotent(obj, varargin)
            obj.iceInvoke('opIdempotent', 2, false, [], false, {}, varargin{:});
        end
        function r_ = opIdempotentAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('opIdempotent', 2, false, [], 0, [], {}, varargin{:});
        end
        function result = opByte1(obj, opByte1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByte(opByte1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByte1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readByte();
            is_.endEncapsulation();
        end
        function r_ = opByte1Async(obj, opByte1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByte(opByte1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readByte();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opByte1', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opShort1(obj, opShort1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShort(opShort1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShort1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readShort();
            is_.endEncapsulation();
        end
        function r_ = opShort1Async(obj, opShort1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShort(opShort1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readShort();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opShort1', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opInt1(obj, opInt1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(opInt1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opInt1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = opInt1Async(obj, opInt1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(opInt1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opInt1', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opLong1(obj, opLong1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(opLong1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLong1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readLong();
            is_.endEncapsulation();
        end
        function r_ = opLong1Async(obj, opLong1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(opLong1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readLong();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opLong1', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opFloat1(obj, opFloat1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloat(opFloat1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloat1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readFloat();
            is_.endEncapsulation();
        end
        function r_ = opFloat1Async(obj, opFloat1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloat(opFloat1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readFloat();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opFloat1', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opDouble1(obj, opDouble1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDouble(opDouble1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDouble1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readDouble();
            is_.endEncapsulation();
        end
        function r_ = opDouble1Async(obj, opDouble1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDouble(opDouble1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readDouble();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opDouble1', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opString1(obj, opString1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(opString1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opString1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = opString1Async(obj, opString1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(opString1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opString1', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opStringS1(obj, opStringS1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(opStringS1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringS1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opStringS1Async(obj, opStringS1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(opStringS1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opStringS1', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opByteBoolD1(obj, opByteBoolD1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ByteBoolD.write(os_, opByteBoolD1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteBoolD1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.ByteBoolD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opByteBoolD1Async(obj, opByteBoolD1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ByteBoolD.write(os_, opByteBoolD1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.ByteBoolD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opByteBoolD1', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opStringS2(obj, stringS, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(stringS);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringS2', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opStringS2Async(obj, stringS, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(stringS);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opStringS2', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opByteBoolD2(obj, byteBoolD, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ByteBoolD.write(os_, byteBoolD);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteBoolD2', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.ByteBoolD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opByteBoolD2Async(obj, byteBoolD, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ByteBoolD.write(os_, byteBoolD);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.ByteBoolD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opByteBoolD2', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opStringLiterals(obj, varargin)
            is_ = obj.iceInvoke('opStringLiterals', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opStringLiteralsAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opStringLiterals', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opWStringLiterals(obj, varargin)
            is_ = obj.iceInvoke('opWStringLiterals', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opWStringLiteralsAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opWStringLiterals', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = opMStruct1(obj, varargin)
            is_ = obj.iceInvoke('opMStruct1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.Structure.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opMStruct1Async(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.Structure.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opMStruct1', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function [result, p2] = opMStruct2(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.Structure.ice_write(os_, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMStruct2', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p2 = Test.Structure.ice_read(is_);
            result = Test.Structure.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opMStruct2Async(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.Structure.ice_write(os_, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p2 = Test.Structure.ice_read(is_);
                result = Test.Structure.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p2;
            end
            r_ = obj.iceInvokeAsync('opMStruct2', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function result = opMSeq1(obj, varargin)
            is_ = obj.iceInvoke('opMSeq1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opMSeq1Async(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opMSeq1', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function [result, p2] = opMSeq2(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMSeq2', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p2 = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opMSeq2Async(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p2 = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p2;
            end
            r_ = obj.iceInvokeAsync('opMSeq2', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function result = opMDict1(obj, varargin)
            is_ = obj.iceInvoke('opMDict1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.StringStringD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opMDict1Async(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.StringStringD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opMDict1', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function [result, p2] = opMDict2(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringD.write(os_, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMDict2', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p2 = Test.StringStringD.read(is_);
            result = Test.StringStringD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opMDict2Async(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringD.write(os_, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p2 = Test.StringStringD.read(is_);
                result = Test.StringStringD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p2;
            end
            r_ = obj.iceInvokeAsync('opMDict2', 0, true, os_, 2, @unmarshal, {}, varargin{:});
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
