
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function result = SBaseAsObject(obj, varargin)
            is_ = obj.iceInvoke('SBaseAsObject', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Ice.Value');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = SBaseAsObjectAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Ice.Value');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('SBaseAsObject', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = SBaseAsSBase(obj, varargin)
            is_ = obj.iceInvoke('SBaseAsSBase', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.SBase');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = SBaseAsSBaseAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.SBase');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('SBaseAsSBase', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = SBSKnownDerivedAsSBase(obj, varargin)
            is_ = obj.iceInvoke('SBSKnownDerivedAsSBase', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.SBase');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = SBSKnownDerivedAsSBaseAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.SBase');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('SBSKnownDerivedAsSBase', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = SBSKnownDerivedAsSBSKnownDerived(obj, varargin)
            is_ = obj.iceInvoke('SBSKnownDerivedAsSBSKnownDerived', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.SBSKnownDerived');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = SBSKnownDerivedAsSBSKnownDerivedAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.SBSKnownDerived');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('SBSKnownDerivedAsSBSKnownDerived', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = SBSUnknownDerivedAsSBase(obj, varargin)
            is_ = obj.iceInvoke('SBSUnknownDerivedAsSBase', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.SBase');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = SBSUnknownDerivedAsSBaseAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.SBase');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('SBSUnknownDerivedAsSBase', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = SBSUnknownDerivedAsSBaseCompact(obj, varargin)
            is_ = obj.iceInvoke('SBSUnknownDerivedAsSBaseCompact', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.SBase');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = SBSUnknownDerivedAsSBaseCompactAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.SBase');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('SBSUnknownDerivedAsSBaseCompact', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = SUnknownAsObject(obj, varargin)
            is_ = obj.iceInvoke('SUnknownAsObject', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Ice.Value');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = SUnknownAsObjectAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Ice.Value');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('SUnknownAsObject', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function checkSUnknown(obj, o, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(o);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('checkSUnknown', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = checkSUnknownAsync(obj, o, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(o);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('checkSUnknown', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = oneElementCycle(obj, varargin)
            is_ = obj.iceInvoke('oneElementCycle', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = oneElementCycleAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('oneElementCycle', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = twoElementCycle(obj, varargin)
            is_ = obj.iceInvoke('twoElementCycle', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = twoElementCycleAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('twoElementCycle', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = D1AsB(obj, varargin)
            is_ = obj.iceInvoke('D1AsB', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = D1AsBAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('D1AsB', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = D1AsD1(obj, varargin)
            is_ = obj.iceInvoke('D1AsD1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.D1');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = D1AsD1Async(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.D1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('D1AsD1', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = D2AsB(obj, varargin)
            is_ = obj.iceInvoke('D2AsB', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = D2AsBAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('D2AsB', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function [p1, p2] = paramTest1(obj, varargin)
            is_ = obj.iceInvoke('paramTest1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            p1_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p1_h_.set(v), 'Test.B');
            p2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p2_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            p1 = p1_h_.value;
            p2 = p2_h_.value;
        end
        function r_ = paramTest1Async(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p1 = IceInternal.ValueHolder();
                is_.readValue(@(v) p1.set(v), 'Test.B');
                p2 = IceInternal.ValueHolder();
                is_.readValue(@(v) p2.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = p1.value;
                varargout{2} = p2.value;
            end
            r_ = obj.iceInvokeAsync('paramTest1', 0, true, [], 2, @unmarshal, {}, varargin{:});
        end
        function [p2, p1] = paramTest2(obj, varargin)
            is_ = obj.iceInvoke('paramTest2', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            p2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p2_h_.set(v), 'Test.B');
            p1_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p1_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            p2 = p2_h_.value;
            p1 = p1_h_.value;
        end
        function r_ = paramTest2Async(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p2 = IceInternal.ValueHolder();
                is_.readValue(@(v) p2.set(v), 'Test.B');
                p1 = IceInternal.ValueHolder();
                is_.readValue(@(v) p1.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = p2.value;
                varargout{2} = p1.value;
            end
            r_ = obj.iceInvokeAsync('paramTest2', 0, true, [], 2, @unmarshal, {}, varargin{:});
        end
        function [result, p1, p2] = paramTest3(obj, varargin)
            is_ = obj.iceInvoke('paramTest3', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            p1_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p1_h_.set(v), 'Test.B');
            p2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p2_h_.set(v), 'Test.B');
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            p1 = p1_h_.value;
            p2 = p2_h_.value;
            result = result_h_.value;
        end
        function r_ = paramTest3Async(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p1 = IceInternal.ValueHolder();
                is_.readValue(@(v) p1.set(v), 'Test.B');
                p2 = IceInternal.ValueHolder();
                is_.readValue(@(v) p2.set(v), 'Test.B');
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
                varargout{2} = p1.value;
                varargout{3} = p2.value;
            end
            r_ = obj.iceInvokeAsync('paramTest3', 0, true, [], 3, @unmarshal, {}, varargin{:});
        end
        function [result, p] = paramTest4(obj, varargin)
            is_ = obj.iceInvoke('paramTest4', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            p_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p_h_.set(v), 'Test.B');
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            p = p_h_.value;
            result = result_h_.value;
        end
        function r_ = paramTest4Async(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p = IceInternal.ValueHolder();
                is_.readValue(@(v) p.set(v), 'Test.B');
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
                varargout{2} = p.value;
            end
            r_ = obj.iceInvokeAsync('paramTest4', 0, true, [], 2, @unmarshal, {}, varargin{:});
        end
        function [result, p1, p2] = returnTest1(obj, varargin)
            is_ = obj.iceInvoke('returnTest1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            p1_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p1_h_.set(v), 'Test.B');
            p2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p2_h_.set(v), 'Test.B');
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            p1 = p1_h_.value;
            p2 = p2_h_.value;
            result = result_h_.value;
        end
        function r_ = returnTest1Async(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p1 = IceInternal.ValueHolder();
                is_.readValue(@(v) p1.set(v), 'Test.B');
                p2 = IceInternal.ValueHolder();
                is_.readValue(@(v) p2.set(v), 'Test.B');
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
                varargout{2} = p1.value;
                varargout{3} = p2.value;
            end
            r_ = obj.iceInvokeAsync('returnTest1', 0, true, [], 3, @unmarshal, {}, varargin{:});
        end
        function [result, p2, p1] = returnTest2(obj, varargin)
            is_ = obj.iceInvoke('returnTest2', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            p2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p2_h_.set(v), 'Test.B');
            p1_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p1_h_.set(v), 'Test.B');
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            p2 = p2_h_.value;
            p1 = p1_h_.value;
            result = result_h_.value;
        end
        function r_ = returnTest2Async(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p2 = IceInternal.ValueHolder();
                is_.readValue(@(v) p2.set(v), 'Test.B');
                p1 = IceInternal.ValueHolder();
                is_.readValue(@(v) p1.set(v), 'Test.B');
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
                varargout{2} = p2.value;
                varargout{3} = p1.value;
            end
            r_ = obj.iceInvokeAsync('returnTest2', 0, true, [], 3, @unmarshal, {}, varargin{:});
        end
        function result = returnTest3(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p1);
            os_.writeValue(p2);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('returnTest3', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = returnTest3Async(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p1);
            os_.writeValue(p2);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('returnTest3', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = sequenceTest(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p1);
            os_.writeValue(p2);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('sequenceTest', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.SS3.ice_read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result.ice_convert();
        end
        function r_ = sequenceTestAsync(obj, p1, p2, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p1);
            os_.writeValue(p2);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.SS3.ice_read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.ice_convert();
            end
            r_ = obj.iceInvokeAsync('sequenceTest', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function [result, bout] = dictionaryTest(obj, bin, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            Test.BDict.write(os_, bin);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('dictionaryTest', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            bout = Test.BDict.read(is_);
            result = Test.BDict.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            bout = Test.BDict.convert(bout);
            result = Test.BDict.convert(result);
        end
        function r_ = dictionaryTestAsync(obj, bin, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            Test.BDict.write(os_, bin);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                bout = Test.BDict.read(is_);
                result = Test.BDict.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.BDict.convert(result);
                varargout{2} = Test.BDict.convert(bout);
            end
            r_ = obj.iceInvokeAsync('dictionaryTest', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function result = exchangePBase(obj, pb, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(pb);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('exchangePBase', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.PBase');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = exchangePBaseAsync(obj, pb, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(pb);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.PBase');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('exchangePBase', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = PBSUnknownAsPreserved(obj, varargin)
            is_ = obj.iceInvoke('PBSUnknownAsPreserved', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.Preserved');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = PBSUnknownAsPreservedAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.Preserved');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('PBSUnknownAsPreserved', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function checkPBSUnknown(obj, p, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('checkPBSUnknown', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = checkPBSUnknownAsync(obj, p, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('checkPBSUnknown', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = PBSUnknownAsPreservedWithGraph(obj, varargin)
            is_ = obj.iceInvoke('PBSUnknownAsPreservedWithGraph', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.Preserved');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = PBSUnknownAsPreservedWithGraphAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.Preserved');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('PBSUnknownAsPreservedWithGraph', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function checkPBSUnknownWithGraph(obj, p, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('checkPBSUnknownWithGraph', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = checkPBSUnknownWithGraphAsync(obj, p, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('checkPBSUnknownWithGraph', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = PBSUnknown2AsPreservedWithGraph(obj, varargin)
            is_ = obj.iceInvoke('PBSUnknown2AsPreservedWithGraph', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.Preserved');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = PBSUnknown2AsPreservedWithGraphAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.Preserved');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('PBSUnknown2AsPreservedWithGraph', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function checkPBSUnknown2WithGraph(obj, p, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('checkPBSUnknown2WithGraph', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = checkPBSUnknown2WithGraphAsync(obj, p, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('checkPBSUnknown2WithGraph', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = exchangePNode(obj, pn, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(pn);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('exchangePNode', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.PNode');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = exchangePNodeAsync(obj, pn, varargin)
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(pn);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.PNode');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('exchangePNode', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function throwBaseAsBase(obj, varargin)
            obj.iceInvoke('throwBaseAsBase', 0, true, [], false, Test.TestIntfPrx.throwBaseAsBase_ex_, varargin{:});
        end
        function r_ = throwBaseAsBaseAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('throwBaseAsBase', 0, true, [], 0, [], Test.TestIntfPrx.throwBaseAsBase_ex_, varargin{:});
        end
        function throwDerivedAsBase(obj, varargin)
            obj.iceInvoke('throwDerivedAsBase', 0, true, [], false, Test.TestIntfPrx.throwDerivedAsBase_ex_, varargin{:});
        end
        function r_ = throwDerivedAsBaseAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('throwDerivedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.throwDerivedAsBase_ex_, varargin{:});
        end
        function throwDerivedAsDerived(obj, varargin)
            obj.iceInvoke('throwDerivedAsDerived', 0, true, [], false, Test.TestIntfPrx.throwDerivedAsDerived_ex_, varargin{:});
        end
        function r_ = throwDerivedAsDerivedAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('throwDerivedAsDerived', 0, true, [], 0, [], Test.TestIntfPrx.throwDerivedAsDerived_ex_, varargin{:});
        end
        function throwUnknownDerivedAsBase(obj, varargin)
            obj.iceInvoke('throwUnknownDerivedAsBase', 0, true, [], false, Test.TestIntfPrx.throwUnknownDerivedAsBase_ex_, varargin{:});
        end
        function r_ = throwUnknownDerivedAsBaseAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('throwUnknownDerivedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.throwUnknownDerivedAsBase_ex_, varargin{:});
        end
        function throwPreservedException(obj, varargin)
            obj.iceInvoke('throwPreservedException', 0, true, [], false, Test.TestIntfPrx.throwPreservedException_ex_, varargin{:});
        end
        function r_ = throwPreservedExceptionAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('throwPreservedException', 0, true, [], 0, [], Test.TestIntfPrx.throwPreservedException_ex_, varargin{:});
        end
        function f = useForward(obj, varargin)
            is_ = obj.iceInvoke('useForward', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            f_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) f_h_.set(v), 'Test.Forward');
            is_.readPendingValues();
            is_.endEncapsulation();
            f = f_h_.value;
        end
        function r_ = useForwardAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                f = IceInternal.ValueHolder();
                is_.readValue(@(v) f.set(v), 'Test.Forward');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = f.value;
            end
            r_ = obj.iceInvokeAsync('useForward', 0, true, [], 1, @unmarshal, {}, varargin{:});
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
    properties(Constant,Access=private)
        throwBaseAsBase_ex_ = { 'Test.BaseException' }
        throwDerivedAsBase_ex_ = { 'Test.BaseException' }
        throwDerivedAsDerived_ex_ = { 'Test.DerivedException' }
        throwUnknownDerivedAsBase_ex_ = { 'Test.BaseException' }
        throwPreservedException_ex_ = { 'Test.PreservedException' }
    end
end
