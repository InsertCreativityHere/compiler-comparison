% TestIntfPrx   Summary of TestIntfPrx
%
% TestIntfPrx Methods:
%   SBaseAsObject
%   SBaseAsObjectAsync
%   SBaseAsSBase
%   SBaseAsSBaseAsync
%   SBSKnownDerivedAsSBase
%   SBSKnownDerivedAsSBaseAsync
%   SBSKnownDerivedAsSBSKnownDerived
%   SBSKnownDerivedAsSBSKnownDerivedAsync
%   SBSUnknownDerivedAsSBase
%   SBSUnknownDerivedAsSBaseAsync
%   SBSUnknownDerivedAsSBaseCompact
%   SBSUnknownDerivedAsSBaseCompactAsync
%   SUnknownAsObject
%   SUnknownAsObjectAsync
%   checkSUnknown
%   checkSUnknownAsync
%   oneElementCycle
%   oneElementCycleAsync
%   twoElementCycle
%   twoElementCycleAsync
%   D1AsB
%   D1AsBAsync
%   D1AsD1
%   D1AsD1Async
%   D2AsB
%   D2AsBAsync
%   paramTest1
%   paramTest1Async
%   paramTest2
%   paramTest2Async
%   paramTest3
%   paramTest3Async
%   paramTest4
%   paramTest4Async
%   returnTest1
%   returnTest1Async
%   returnTest2
%   returnTest2Async
%   returnTest3
%   returnTest3Async
%   sequenceTest
%   sequenceTestAsync
%   dictionaryTest
%   dictionaryTestAsync
%   exchangePBase
%   exchangePBaseAsync
%   PBSUnknownAsPreserved
%   PBSUnknownAsPreservedAsync
%   checkPBSUnknown
%   checkPBSUnknownAsync
%   PBSUnknownAsPreservedWithGraph
%   PBSUnknownAsPreservedWithGraphAsync
%   checkPBSUnknownWithGraph
%   checkPBSUnknownWithGraphAsync
%   PBSUnknown2AsPreservedWithGraph
%   PBSUnknown2AsPreservedWithGraphAsync
%   checkPBSUnknown2WithGraph
%   checkPBSUnknown2WithGraphAsync
%   exchangePNode
%   exchangePNodeAsync
%   throwBaseAsBase
%   throwBaseAsBaseAsync
%   throwDerivedAsBase
%   throwDerivedAsBaseAsync
%   throwDerivedAsDerived
%   throwDerivedAsDerivedAsync
%   throwUnknownDerivedAsBase
%   throwUnknownDerivedAsBaseAsync
%   throwPreservedException
%   throwPreservedExceptionAsync
%   useForward - Use of forward-declared class to verify that code is generated correctly.
%   useForwardAsync - Use of forward-declared class to verify that code is generated correctly.
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function result = SBaseAsObject(obj, varargin)
            % SBaseAsObject
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Object)
            
            is_ = obj.iceInvoke('SBaseAsObject', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Ice.Value');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = SBaseAsObjectAsync(obj, varargin)
            % SBaseAsObjectAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % SBaseAsSBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.SBase)
            
            is_ = obj.iceInvoke('SBaseAsSBase', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.SBase');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = SBaseAsSBaseAsync(obj, varargin)
            % SBaseAsSBaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % SBSKnownDerivedAsSBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.SBase)
            
            is_ = obj.iceInvoke('SBSKnownDerivedAsSBase', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.SBase');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = SBSKnownDerivedAsSBaseAsync(obj, varargin)
            % SBSKnownDerivedAsSBaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % SBSKnownDerivedAsSBSKnownDerived
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.SBSKnownDerived)
            
            is_ = obj.iceInvoke('SBSKnownDerivedAsSBSKnownDerived', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.SBSKnownDerived');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = SBSKnownDerivedAsSBSKnownDerivedAsync(obj, varargin)
            % SBSKnownDerivedAsSBSKnownDerivedAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % SBSUnknownDerivedAsSBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.SBase)
            
            is_ = obj.iceInvoke('SBSUnknownDerivedAsSBase', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.SBase');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = SBSUnknownDerivedAsSBaseAsync(obj, varargin)
            % SBSUnknownDerivedAsSBaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % SBSUnknownDerivedAsSBaseCompact
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.SBase)
            
            is_ = obj.iceInvoke('SBSUnknownDerivedAsSBaseCompact', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.SBase');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = SBSUnknownDerivedAsSBaseCompactAsync(obj, varargin)
            % SBSUnknownDerivedAsSBaseCompactAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % SUnknownAsObject
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Object)
            
            is_ = obj.iceInvoke('SUnknownAsObject', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Ice.Value');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = SUnknownAsObjectAsync(obj, varargin)
            % SUnknownAsObjectAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % checkSUnknown
            %
            % Parameters:
            %   o (Ice.Object)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(o);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('checkSUnknown', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = checkSUnknownAsync(obj, o, varargin)
            % checkSUnknownAsync
            %
            % Parameters:
            %   o (Ice.Object)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(o);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('checkSUnknown', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = oneElementCycle(obj, varargin)
            % oneElementCycle
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.B)
            
            is_ = obj.iceInvoke('oneElementCycle', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = oneElementCycleAsync(obj, varargin)
            % oneElementCycleAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % twoElementCycle
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.B)
            
            is_ = obj.iceInvoke('twoElementCycle', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = twoElementCycleAsync(obj, varargin)
            % twoElementCycleAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % D1AsB
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.B)
            
            is_ = obj.iceInvoke('D1AsB', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = D1AsBAsync(obj, varargin)
            % D1AsBAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % D1AsD1
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.D1)
            
            is_ = obj.iceInvoke('D1AsD1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.D1');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = D1AsD1Async(obj, varargin)
            % D1AsD1Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % D2AsB
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.B)
            
            is_ = obj.iceInvoke('D2AsB', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = D2AsBAsync(obj, varargin)
            % D2AsBAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % paramTest1
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   p1 (Test.B)
            %   p2 (Test.B)
            
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
            % paramTest1Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % paramTest2
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   p2 (Test.B)
            %   p1 (Test.B)
            
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
            % paramTest2Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % paramTest3
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.B)
            %   p1 (Test.B)
            %   p2 (Test.B)
            
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
            % paramTest3Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % paramTest4
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.B)
            %   p (Test.B)
            
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
            % paramTest4Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % returnTest1
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.B)
            %   p1 (Test.B)
            %   p2 (Test.B)
            
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
            % returnTest1Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % returnTest2
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.B)
            %   p2 (Test.B)
            %   p1 (Test.B)
            
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
            % returnTest2Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % returnTest3
            %
            % Parameters:
            %   p1 (Test.B)
            %   p2 (Test.B)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.B)
            
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
            % returnTest3Async
            %
            % Parameters:
            %   p1 (Test.B)
            %   p2 (Test.B)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % sequenceTest
            %
            % Parameters:
            %   p1 (Test.SS1)
            %   p2 (Test.SS2)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.SS3)
            
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
            % sequenceTestAsync
            %
            % Parameters:
            %   p1 (Test.SS1)
            %   p2 (Test.SS2)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % dictionaryTest
            %
            % Parameters:
            %   bin (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (containers.Map)
            %   bout (containers.Map)
            
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
            % dictionaryTestAsync
            %
            % Parameters:
            %   bin (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % exchangePBase
            %
            % Parameters:
            %   pb (Test.PBase)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.PBase)
            
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
            % exchangePBaseAsync
            %
            % Parameters:
            %   pb (Test.PBase)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % PBSUnknownAsPreserved
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.Preserved)
            
            is_ = obj.iceInvoke('PBSUnknownAsPreserved', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.Preserved');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = PBSUnknownAsPreservedAsync(obj, varargin)
            % PBSUnknownAsPreservedAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % checkPBSUnknown
            %
            % Parameters:
            %   p (Test.Preserved)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('checkPBSUnknown', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = checkPBSUnknownAsync(obj, p, varargin)
            % checkPBSUnknownAsync
            %
            % Parameters:
            %   p (Test.Preserved)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('checkPBSUnknown', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = PBSUnknownAsPreservedWithGraph(obj, varargin)
            % PBSUnknownAsPreservedWithGraph
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.Preserved)
            
            is_ = obj.iceInvoke('PBSUnknownAsPreservedWithGraph', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.Preserved');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = PBSUnknownAsPreservedWithGraphAsync(obj, varargin)
            % PBSUnknownAsPreservedWithGraphAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % checkPBSUnknownWithGraph
            %
            % Parameters:
            %   p (Test.Preserved)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('checkPBSUnknownWithGraph', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = checkPBSUnknownWithGraphAsync(obj, p, varargin)
            % checkPBSUnknownWithGraphAsync
            %
            % Parameters:
            %   p (Test.Preserved)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('checkPBSUnknownWithGraph', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = PBSUnknown2AsPreservedWithGraph(obj, varargin)
            % PBSUnknown2AsPreservedWithGraph
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.Preserved)
            
            is_ = obj.iceInvoke('PBSUnknown2AsPreservedWithGraph', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.Preserved');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = PBSUnknown2AsPreservedWithGraphAsync(obj, varargin)
            % PBSUnknown2AsPreservedWithGraphAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % checkPBSUnknown2WithGraph
            %
            % Parameters:
            %   p (Test.Preserved)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('checkPBSUnknown2WithGraph', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = checkPBSUnknown2WithGraphAsync(obj, p, varargin)
            % checkPBSUnknown2WithGraphAsync
            %
            % Parameters:
            %   p (Test.Preserved)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('checkPBSUnknown2WithGraph', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = exchangePNode(obj, pn, varargin)
            % exchangePNode
            %
            % Parameters:
            %   pn (Test.PNode)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.PNode)
            
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
            % exchangePNodeAsync
            %
            % Parameters:
            %   pn (Test.PNode)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            % throwBaseAsBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwBaseAsBase', 0, true, [], false, Test.TestIntfPrx.throwBaseAsBase_ex_, varargin{:});
        end
        function r_ = throwBaseAsBaseAsync(obj, varargin)
            % throwBaseAsBaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwBaseAsBase', 0, true, [], 0, [], Test.TestIntfPrx.throwBaseAsBase_ex_, varargin{:});
        end
        function throwDerivedAsBase(obj, varargin)
            % throwDerivedAsBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwDerivedAsBase', 0, true, [], false, Test.TestIntfPrx.throwDerivedAsBase_ex_, varargin{:});
        end
        function r_ = throwDerivedAsBaseAsync(obj, varargin)
            % throwDerivedAsBaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwDerivedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.throwDerivedAsBase_ex_, varargin{:});
        end
        function throwDerivedAsDerived(obj, varargin)
            % throwDerivedAsDerived
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwDerivedAsDerived', 0, true, [], false, Test.TestIntfPrx.throwDerivedAsDerived_ex_, varargin{:});
        end
        function r_ = throwDerivedAsDerivedAsync(obj, varargin)
            % throwDerivedAsDerivedAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwDerivedAsDerived', 0, true, [], 0, [], Test.TestIntfPrx.throwDerivedAsDerived_ex_, varargin{:});
        end
        function throwUnknownDerivedAsBase(obj, varargin)
            % throwUnknownDerivedAsBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwUnknownDerivedAsBase', 0, true, [], false, Test.TestIntfPrx.throwUnknownDerivedAsBase_ex_, varargin{:});
        end
        function r_ = throwUnknownDerivedAsBaseAsync(obj, varargin)
            % throwUnknownDerivedAsBaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwUnknownDerivedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.throwUnknownDerivedAsBase_ex_, varargin{:});
        end
        function throwPreservedException(obj, varargin)
            % throwPreservedException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwPreservedException', 0, true, [], false, Test.TestIntfPrx.throwPreservedException_ex_, varargin{:});
        end
        function r_ = throwPreservedExceptionAsync(obj, varargin)
            % throwPreservedExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwPreservedException', 0, true, [], 0, [], Test.TestIntfPrx.throwPreservedException_ex_, varargin{:});
        end
        function f = useForward(obj, varargin)
            % useForward   Use of forward-declared class to verify that code is generated correctly.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.Forward)
            
            is_ = obj.iceInvoke('useForward', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            f_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) f_h_.set(v), 'Test.Forward');
            is_.readPendingValues();
            is_.endEncapsulation();
            f = f_h_.value;
        end
        function r_ = useForwardAsync(obj, varargin)
            % useForwardAsync   Use of forward-declared class to verify that code is generated correctly.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
    properties(Constant,Access=private)
        throwBaseAsBase_ex_ = { 'Test.BaseException' }
        throwDerivedAsBase_ex_ = { 'Test.BaseException' }
        throwDerivedAsDerived_ex_ = { 'Test.DerivedException' }
        throwUnknownDerivedAsBase_ex_ = { 'Test.BaseException' }
        throwPreservedException_ex_ = { 'Test.PreservedException' }
    end
end
