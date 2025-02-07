
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef InitialPrx < Ice.ObjectPrx
    methods
        function shutdown(obj, varargin)
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = getB1(obj, varargin)
            is_ = obj.iceInvoke('getB1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getB1Async(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getB1', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getB2(obj, varargin)
            is_ = obj.iceInvoke('getB2', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getB2Async(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getB2', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getC(obj, varargin)
            is_ = obj.iceInvoke('getC', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.C');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getCAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.C');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getC', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getD(obj, varargin)
            is_ = obj.iceInvoke('getD', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.D');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getDAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.D');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getD', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function setRecursive(obj, p, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setRecursive', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = setRecursiveAsync(obj, p, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setRecursive', 0, false, os_, 0, [], {}, varargin{:});
        end
        function setCycle(obj, r, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(r);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setCycle', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = setCycleAsync(obj, r, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(r);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setCycle', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = acceptsClassCycles(obj, varargin)
            is_ = obj.iceInvoke('acceptsClassCycles', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = acceptsClassCyclesAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('acceptsClassCycles', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getMB(obj, varargin)
            is_ = obj.iceInvoke('getMB', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getMBAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getMB', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getAMDMB(obj, varargin)
            is_ = obj.iceInvoke('getAMDMB', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getAMDMBAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getAMDMB', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function [b1, b2, theC, theD] = getAll(obj, varargin)
            is_ = obj.iceInvoke('getAll', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            b1_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) b1_h_.set(v), 'Test.B');
            b2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) b2_h_.set(v), 'Test.B');
            theC_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) theC_h_.set(v), 'Test.C');
            theD_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) theD_h_.set(v), 'Test.D');
            is_.readPendingValues();
            is_.endEncapsulation();
            b1 = b1_h_.value;
            b2 = b2_h_.value;
            theC = theC_h_.value;
            theD = theD_h_.value;
        end
        function r_ = getAllAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                b1 = IceInternal.ValueHolder();
                is_.readValue(@(v) b1.set(v), 'Test.B');
                b2 = IceInternal.ValueHolder();
                is_.readValue(@(v) b2.set(v), 'Test.B');
                theC = IceInternal.ValueHolder();
                is_.readValue(@(v) theC.set(v), 'Test.C');
                theD = IceInternal.ValueHolder();
                is_.readValue(@(v) theD.set(v), 'Test.D');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = b1.value;
                varargout{2} = b2.value;
                varargout{3} = theC.value;
                varargout{4} = theD.value;
            end
            r_ = obj.iceInvokeAsync('getAll', 0, true, [], 4, @unmarshal, {}, varargin{:});
        end
        function result = getK(obj, varargin)
            is_ = obj.iceInvoke('getK', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.K');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getKAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.K');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getK', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function [result, v2] = opValue(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(v1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opValue', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            v2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) v2_h_.set(v), 'Ice.Value');
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Ice.Value');
            is_.readPendingValues();
            is_.endEncapsulation();
            v2 = v2_h_.value;
            result = result_h_.value;
        end
        function r_ = opValueAsync(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(v1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = IceInternal.ValueHolder();
                is_.readValue(@(v) v2.set(v), 'Ice.Value');
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Ice.Value');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
                varargout{2} = v2.value;
            end
            r_ = obj.iceInvokeAsync('opValue', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, v2] = opValueSeq(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ValueSeq.write(os_, v1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opValueSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            v2 = Test.ValueSeq.read(is_);
            result = Test.ValueSeq.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            v2 = Test.ValueSeq.convert(v2);
            result = Test.ValueSeq.convert(result);
        end
        function r_ = opValueSeqAsync(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ValueSeq.write(os_, v1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = Test.ValueSeq.read(is_);
                result = Test.ValueSeq.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.ValueSeq.convert(result);
                varargout{2} = Test.ValueSeq.convert(v2);
            end
            r_ = obj.iceInvokeAsync('opValueSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, v2] = opValueMap(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ValueMap.write(os_, v1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opValueMap', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            v2 = Test.ValueMap.read(is_);
            result = Test.ValueMap.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            v2 = Test.ValueMap.convert(v2);
            result = Test.ValueMap.convert(result);
        end
        function r_ = opValueMapAsync(obj, v1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.ValueMap.write(os_, v1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = Test.ValueMap.read(is_);
                result = Test.ValueMap.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.ValueMap.convert(result);
                varargout{2} = Test.ValueMap.convert(v2);
            end
            r_ = obj.iceInvokeAsync('opValueMap', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function result = getD1(obj, d1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(d1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getD1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.D1');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getD1Async(obj, d1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(d1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.D1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getD1', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function throwEDerived(obj, varargin)
            obj.iceInvoke('throwEDerived', 0, true, [], false, Test.InitialPrx.throwEDerived_ex_, varargin{:});
        end
        function r_ = throwEDerivedAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('throwEDerived', 0, true, [], 0, [], Test.InitialPrx.throwEDerived_ex_, varargin{:});
        end
        function setG(obj, theG, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(theG);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setG', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = setGAsync(obj, theG, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(theG);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setG', 0, false, os_, 0, [], {}, varargin{:});
        end
        function [result, outSeq] = opBaseSeq(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.BaseSeq.write(os_, inSeq);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBaseSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            outSeq = Test.BaseSeq.read(is_);
            result = Test.BaseSeq.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            outSeq = Test.BaseSeq.convert(outSeq);
            result = Test.BaseSeq.convert(result);
        end
        function r_ = opBaseSeqAsync(obj, inSeq, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.BaseSeq.write(os_, inSeq);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.BaseSeq.read(is_);
                result = Test.BaseSeq.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.BaseSeq.convert(result);
                varargout{2} = Test.BaseSeq.convert(outSeq);
            end
            r_ = obj.iceInvokeAsync('opBaseSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function result = getCompact(obj, varargin)
            is_ = obj.iceInvoke('getCompact', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.Compact');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getCompactAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.Compact');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getCompact', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function [result, f12] = opF1(obj, f11, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(f11);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opF1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            f12_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) f12_h_.set(v), 'Test.F1');
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.F1');
            is_.readPendingValues();
            is_.endEncapsulation();
            f12 = f12_h_.value;
            result = result_h_.value;
        end
        function r_ = opF1Async(obj, f11, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(f11);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                f12 = IceInternal.ValueHolder();
                is_.readValue(@(v) f12.set(v), 'Test.F1');
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.F1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
                varargout{2} = f12.value;
            end
            r_ = obj.iceInvokeAsync('opF1', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, f22] = opF2(obj, f21, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(f21);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opF2', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            f22 = Test.F2Prx.ice_read(is_);
            result = Test.F2Prx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opF2Async(obj, f21, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(f21);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                f22 = Test.F2Prx.ice_read(is_);
                result = Test.F2Prx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = f22;
            end
            r_ = obj.iceInvokeAsync('opF2', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, f32] = opF3(obj, f31, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(f31);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opF3', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            f32_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) f32_h_.set(v), 'Test.F3');
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.F3');
            is_.readPendingValues();
            is_.endEncapsulation();
            f32 = f32_h_.value;
            result = result_h_.value;
        end
        function r_ = opF3Async(obj, f31, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(f31);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                f32 = IceInternal.ValueHolder();
                is_.readValue(@(v) f32.set(v), 'Test.F3');
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.F3');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
                varargout{2} = f32.value;
            end
            r_ = obj.iceInvokeAsync('opF3', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function result = hasF3(obj, varargin)
            is_ = obj.iceInvoke('hasF3', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = hasF3Async(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('hasF3', 0, true, [], 1, @unmarshal, {}, varargin{:});
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
        throwEDerived_ex_ = { 'Test.EDerived' }
    end
end
