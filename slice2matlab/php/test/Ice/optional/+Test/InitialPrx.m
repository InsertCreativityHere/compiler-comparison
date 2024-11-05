
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef InitialPrx < Ice.ObjectPrx
    methods
        function shutdown(obj, varargin)
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = pingPong(obj, o, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(o);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('pingPong', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Ice.Value');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = pingPongAsync(obj, o, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(o);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Ice.Value');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('pingPong', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function opOptionalException(obj, a, b, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, b);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opOptionalException', 0, true, os_, false, Test.InitialPrx.opOptionalException_ex_, varargin{:});
        end
        function r_ = opOptionalExceptionAsync(obj, a, b, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, b);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('opOptionalException', 0, true, os_, 0, [], Test.InitialPrx.opOptionalException_ex_, varargin{:});
        end
        function opDerivedException(obj, a, b, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, b);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opDerivedException', 0, true, os_, false, Test.InitialPrx.opDerivedException_ex_, varargin{:});
        end
        function r_ = opDerivedExceptionAsync(obj, a, b, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, b);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('opDerivedException', 0, true, os_, 0, [], Test.InitialPrx.opDerivedException_ex_, varargin{:});
        end
        function opRequiredException(obj, a, b, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, b);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opRequiredException', 0, true, os_, false, Test.InitialPrx.opRequiredException_ex_, varargin{:});
        end
        function r_ = opRequiredExceptionAsync(obj, a, b, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, b);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('opRequiredException', 0, true, os_, 0, [], Test.InitialPrx.opRequiredException_ex_, varargin{:});
        end
        function [result, p3] = opByte(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByte', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readByteOpt(1);
            p3 = is_.readByteOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opByteAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readByteOpt(1);
                p3 = is_.readByteOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opByte', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opBool(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBool', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolOpt(1);
            p3 = is_.readBoolOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opBoolAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolOpt(1);
                p3 = is_.readBoolOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opBool', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opShort(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShort', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readShortOpt(1);
            p3 = is_.readShortOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opShortAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readShortOpt(1);
                p3 = is_.readShortOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opShort', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opInt(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opInt', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readIntOpt(1);
            p3 = is_.readIntOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opIntAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readIntOpt(1);
                p3 = is_.readIntOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opInt', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opLong(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongOpt(1, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLong', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3 = is_.readLongOpt(2);
            result = is_.readLongOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opLongAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongOpt(1, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readLongOpt(2);
                result = is_.readLongOpt(3);
                is_.endEncapsulation();
                varargout{2} = p3;
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opLong', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opFloat(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloat', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readFloatOpt(1);
            p3 = is_.readFloatOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opFloatAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readFloatOpt(1);
                p3 = is_.readFloatOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opFloat', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opDouble(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDouble', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readDoubleOpt(1);
            p3 = is_.readDoubleOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opDoubleAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readDoubleOpt(1);
                p3 = is_.readDoubleOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opDouble', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opString(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opString', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringOpt(1);
            p3 = is_.readStringOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opStringAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringOpt(1);
                p3 = is_.readStringOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opString', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opMyEnum(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnum.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyEnum', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.MyEnum.ice_readOpt(is_, 1);
            p3 = Test.MyEnum.ice_readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opMyEnumAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnum.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.MyEnum.ice_readOpt(is_, 1);
                p3 = Test.MyEnum.ice_readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opMyEnum', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opSmallStruct(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SmallStruct.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSmallStruct', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.SmallStruct.ice_readOpt(is_, 1);
            p3 = Test.SmallStruct.ice_readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opSmallStructAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SmallStruct.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.SmallStruct.ice_readOpt(is_, 1);
                p3 = Test.SmallStruct.ice_readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opSmallStruct', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opFixedStruct(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.FixedStruct.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFixedStruct', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.FixedStruct.ice_readOpt(is_, 1);
            p3 = Test.FixedStruct.ice_readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opFixedStructAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.FixedStruct.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.FixedStruct.ice_readOpt(is_, 1);
                p3 = Test.FixedStruct.ice_readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opFixedStruct', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opVarStruct(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.VarStruct.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opVarStruct', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.VarStruct.ice_readOpt(is_, 1);
            p3 = Test.VarStruct.ice_readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opVarStructAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.VarStruct.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.VarStruct.ice_readOpt(is_, 1);
                p3 = Test.VarStruct.ice_readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opVarStruct', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opMyInterfaceProxy(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxyOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyInterfaceProxy', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxyOpt(1, 'Test.MyInterfacePrx');
            p3 = is_.readProxyOpt(3, 'Test.MyInterfacePrx');
            is_.endEncapsulation();
        end
        function r_ = opMyInterfaceProxyAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxyOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxyOpt(1, 'Test.MyInterfacePrx');
                p3 = is_.readProxyOpt(3, 'Test.MyInterfacePrx');
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opMyInterfaceProxy', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opOneOptional(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOneOptional', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            p3_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p3_h_.set(v), 'Test.OneOptional');
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.OneOptional');
            is_.readPendingValues();
            is_.endEncapsulation();
            p3 = p3_h_.value;
            result = result_h_.value;
        end
        function r_ = opOneOptionalAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = IceInternal.ValueHolder();
                is_.readValue(@(v) p3.set(v), 'Test.OneOptional');
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.OneOptional');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
                varargout{2} = p3.value;
            end
            r_ = obj.iceInvokeAsync('opOneOptional', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opByteSeq(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readByteSeqOpt(1);
            p3 = is_.readByteSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opByteSeqAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readByteSeqOpt(1);
                p3 = is_.readByteSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opByteSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opBoolSeq(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBoolSeqOpt(1);
            p3 = is_.readBoolSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opBoolSeqAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBoolSeqOpt(1);
                p3 = is_.readBoolSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opBoolSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opShortSeq(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readShortSeqOpt(1);
            p3 = is_.readShortSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opShortSeqAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readShortSeqOpt(1);
                p3 = is_.readShortSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opShortSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opIntSeq(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readIntSeqOpt(1);
            p3 = is_.readIntSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opIntSeqAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readIntSeqOpt(1);
                p3 = is_.readIntSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opIntSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opLongSeq(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLongSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readLongSeqOpt(1);
            p3 = is_.readLongSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opLongSeqAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readLongSeqOpt(1);
                p3 = is_.readLongSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opLongSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opFloatSeq(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloatSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readFloatSeqOpt(1);
            p3 = is_.readFloatSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opFloatSeqAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readFloatSeqOpt(1);
                p3 = is_.readFloatSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opFloatSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opDoubleSeq(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDoubleSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readDoubleSeqOpt(1);
            p3 = is_.readDoubleSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opDoubleSeqAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readDoubleSeqOpt(1);
                p3 = is_.readDoubleSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opDoubleSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opStringSeq(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeqOpt(1);
            p3 = is_.readStringSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opStringSeqAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeqOpt(1);
                p3 = is_.readStringSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opStringSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opSmallStructSeq(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SmallStructSeq.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSmallStructSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.SmallStructSeq.readOpt(is_, 1);
            p3 = Test.SmallStructSeq.readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opSmallStructSeqAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SmallStructSeq.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.SmallStructSeq.readOpt(is_, 1);
                p3 = Test.SmallStructSeq.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opSmallStructSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opSmallStructList(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SmallStructList.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSmallStructList', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.SmallStructList.readOpt(is_, 1);
            p3 = Test.SmallStructList.readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opSmallStructListAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SmallStructList.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.SmallStructList.readOpt(is_, 1);
                p3 = Test.SmallStructList.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opSmallStructList', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opFixedStructSeq(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.FixedStructSeq.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFixedStructSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.FixedStructSeq.readOpt(is_, 1);
            p3 = Test.FixedStructSeq.readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opFixedStructSeqAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.FixedStructSeq.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.FixedStructSeq.readOpt(is_, 1);
                p3 = Test.FixedStructSeq.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opFixedStructSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opFixedStructList(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.FixedStructList.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFixedStructList', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.FixedStructList.readOpt(is_, 1);
            p3 = Test.FixedStructList.readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opFixedStructListAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.FixedStructList.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.FixedStructList.readOpt(is_, 1);
                p3 = Test.FixedStructList.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opFixedStructList', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opVarStructSeq(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.VarStructSeq.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opVarStructSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.VarStructSeq.readOpt(is_, 1);
            p3 = Test.VarStructSeq.readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opVarStructSeqAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.VarStructSeq.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.VarStructSeq.readOpt(is_, 1);
                p3 = Test.VarStructSeq.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opVarStructSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opSerializable(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSerializable', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readByteSeqOpt(1);
            p3 = is_.readByteSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opSerializableAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readByteSeqOpt(1);
                p3 = is_.readByteSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opSerializable', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opIntIntDict(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.IntIntDict.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntIntDict', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.IntIntDict.readOpt(is_, 1);
            p3 = Test.IntIntDict.readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opIntIntDictAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.IntIntDict.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.IntIntDict.readOpt(is_, 1);
                p3 = Test.IntIntDict.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opIntIntDict', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, p3] = opStringIntDict(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringIntDict.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringIntDict', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.StringIntDict.readOpt(is_, 1);
            p3 = Test.StringIntDict.readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opStringIntDictAsync(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringIntDict.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.StringIntDict.readOpt(is_, 1);
                p3 = Test.StringIntDict.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p3;
            end
            r_ = obj.iceInvokeAsync('opStringIntDict', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function opClassAndUnknownOptional(obj, p, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opClassAndUnknownOptional', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = opClassAndUnknownOptionalAsync(obj, p, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('opClassAndUnknownOptional', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = opG(obj, g, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(g);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opG', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.G');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = opGAsync(obj, g, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(g);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.G');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('opG', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opMStruct1(obj, varargin)
            is_ = obj.iceInvoke('opMStruct1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.SmallStruct.ice_readOpt(is_, 1);
            is_.endEncapsulation();
        end
        function r_ = opMStruct1Async(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.SmallStruct.ice_readOpt(is_, 1);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opMStruct1', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function [result, p2] = opMStruct2(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SmallStruct.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMStruct2', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.SmallStruct.ice_readOpt(is_, 1);
            p2 = Test.SmallStruct.ice_readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opMStruct2Async(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SmallStruct.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.SmallStruct.ice_readOpt(is_, 1);
                p2 = Test.SmallStruct.ice_readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p2;
            end
            r_ = obj.iceInvokeAsync('opMStruct2', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function result = opMSeq1(obj, varargin)
            is_ = obj.iceInvoke('opMSeq1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeqOpt(1);
            is_.endEncapsulation();
        end
        function r_ = opMSeq1Async(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeqOpt(1);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opMSeq1', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function [result, p2] = opMSeq2(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMSeq2', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeqOpt(1);
            p2 = is_.readStringSeqOpt(3);
            is_.endEncapsulation();
        end
        function r_ = opMSeq2Async(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeqOpt(1);
                p2 = is_.readStringSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p2;
            end
            r_ = obj.iceInvokeAsync('opMSeq2', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function result = opMDict1(obj, varargin)
            is_ = obj.iceInvoke('opMDict1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.StringIntDict.readOpt(is_, 1);
            is_.endEncapsulation();
        end
        function r_ = opMDict1Async(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.StringIntDict.readOpt(is_, 1);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opMDict1', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function [result, p2] = opMDict2(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringIntDict.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMDict2', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.StringIntDict.readOpt(is_, 1);
            p2 = Test.StringIntDict.readOpt(is_, 3);
            is_.endEncapsulation();
        end
        function r_ = opMDict2Async(obj, p1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.StringIntDict.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.StringIntDict.readOpt(is_, 1);
                p2 = Test.StringIntDict.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = p2;
            end
            r_ = obj.iceInvokeAsync('opMDict2', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function result = supportsJavaSerializable(obj, varargin)
            is_ = obj.iceInvoke('supportsJavaSerializable', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = supportsJavaSerializableAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('supportsJavaSerializable', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Initial';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.InitialPrx');
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
            % Returns (Test.InitialPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.InitialPrx.ice_staticId(), 'Test.InitialPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.InitialPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.InitialPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        opOptionalException_ex_ = { 'Test.OptionalException' }
        opDerivedException_ex_ = { 'Test.OptionalException' }
        opRequiredException_ex_ = { 'Test.OptionalException' }
    end
end
