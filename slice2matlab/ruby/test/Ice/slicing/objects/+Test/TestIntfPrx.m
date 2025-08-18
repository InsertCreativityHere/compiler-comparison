classdef TestIntfPrx < Ice.ObjectPrx
    %TESTINTFPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.TestIntfPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   TestIntfPrx Methods:
    %     D1AsB
    %     D1AsBAsync - An asynchronous D1AsB.
    %     D1AsD1
    %     D1AsD1Async - An asynchronous D1AsD1.
    %     D2AsB
    %     D2AsBAsync - An asynchronous D2AsB.
    %     PBSUnknown2AsPreservedWithGraph
    %     PBSUnknown2AsPreservedWithGraphAsync - An asynchronous PBSUnknown2AsPreservedWithGraph.
    %     PBSUnknownAsPreserved
    %     PBSUnknownAsPreservedAsync - An asynchronous PBSUnknownAsPreserved.
    %     PBSUnknownAsPreservedWithGraph
    %     PBSUnknownAsPreservedWithGraphAsync - An asynchronous PBSUnknownAsPreservedWithGraph.
    %     SBSKnownDerivedAsSBSKnownDerived
    %     SBSKnownDerivedAsSBSKnownDerivedAsync - An asynchronous SBSKnownDerivedAsSBSKnownDerived.
    %     SBSKnownDerivedAsSBase
    %     SBSKnownDerivedAsSBaseAsync - An asynchronous SBSKnownDerivedAsSBase.
    %     SBSUnknownDerivedAsSBase
    %     SBSUnknownDerivedAsSBaseAsync - An asynchronous SBSUnknownDerivedAsSBase.
    %     SBSUnknownDerivedAsSBaseCompact
    %     SBSUnknownDerivedAsSBaseCompactAsync - An asynchronous SBSUnknownDerivedAsSBaseCompact.
    %     SBaseAsObject
    %     SBaseAsObjectAsync - An asynchronous SBaseAsObject.
    %     SBaseAsSBase
    %     SBaseAsSBaseAsync - An asynchronous SBaseAsSBase.
    %     SUnknownAsObject
    %     SUnknownAsObjectAsync - An asynchronous SUnknownAsObject.
    %     checkPBSUnknown
    %     checkPBSUnknownAsync - An asynchronous checkPBSUnknown.
    %     checkPBSUnknown2WithGraph
    %     checkPBSUnknown2WithGraphAsync - An asynchronous checkPBSUnknown2WithGraph.
    %     checkPBSUnknownWithGraph
    %     checkPBSUnknownWithGraphAsync - An asynchronous checkPBSUnknownWithGraph.
    %     checkSUnknown
    %     checkSUnknownAsync - An asynchronous checkSUnknown.
    %     dictionaryTest
    %     dictionaryTestAsync - An asynchronous dictionaryTest.
    %     exchangePBase
    %     exchangePBaseAsync - An asynchronous exchangePBase.
    %     exchangePNode
    %     exchangePNodeAsync - An asynchronous exchangePNode.
    %     oneElementCycle
    %     oneElementCycleAsync - An asynchronous oneElementCycle.
    %     paramTest1
    %     paramTest1Async - An asynchronous paramTest1.
    %     paramTest2
    %     paramTest2Async - An asynchronous paramTest2.
    %     paramTest3
    %     paramTest3Async - An asynchronous paramTest3.
    %     paramTest4
    %     paramTest4Async - An asynchronous paramTest4.
    %     returnTest1
    %     returnTest1Async - An asynchronous returnTest1.
    %     returnTest2
    %     returnTest2Async - An asynchronous returnTest2.
    %     returnTest3
    %     returnTest3Async - An asynchronous returnTest3.
    %     sequenceTest
    %     sequenceTestAsync - An asynchronous sequenceTest.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     throwBaseAsBase
    %     throwBaseAsBaseAsync - An asynchronous throwBaseAsBase.
    %     throwDerivedAsBase
    %     throwDerivedAsBaseAsync - An asynchronous throwDerivedAsBase.
    %     throwDerivedAsDerived
    %     throwDerivedAsDerivedAsync - An asynchronous throwDerivedAsDerived.
    %     throwPreservedException
    %     throwPreservedExceptionAsync - An asynchronous throwPreservedException.
    %     throwUnknownDerivedAsBase
    %     throwUnknownDerivedAsBaseAsync - An asynchronous throwUnknownDerivedAsBase.
    %     twoElementCycle
    %     twoElementCycleAsync - An asynchronous twoElementCycle.
    %     useForward
    %     useForwardAsync - An asynchronous useForward.
    %
    %   TestIntfPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntf.
    %     uncheckedCast - Creates a TestIntfPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = SBaseAsObject(obj, context)
            %SBASEASOBJECT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Ice.Value scalar | empty array of Ice.Value
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('SBaseAsObject', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Ice.Value');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = SBaseAsObjectAsync(obj, context)
            %SBASEASOBJECTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also SBaseAsObject, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Ice.Value');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('SBaseAsObject', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = SBaseAsSBase(obj, context)
            %SBASEASSBASE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SBase scalar | empty array of Test.SBase
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('SBaseAsSBase', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.SBase');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = SBaseAsSBaseAsync(obj, context)
            %SBASEASSBASEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also SBaseAsSBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.SBase');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('SBaseAsSBase', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = SBSKnownDerivedAsSBase(obj, context)
            %SBSKNOWNDERIVEDASSBASE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SBase scalar | empty array of Test.SBase
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('SBSKnownDerivedAsSBase', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.SBase');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = SBSKnownDerivedAsSBaseAsync(obj, context)
            %SBSKNOWNDERIVEDASSBASEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also SBSKnownDerivedAsSBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.SBase');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('SBSKnownDerivedAsSBase', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = SBSKnownDerivedAsSBSKnownDerived(obj, context)
            %SBSKNOWNDERIVEDASSBSKNOWNDERIVED
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SBSKnownDerived scalar | empty array of Test.SBSKnownDerived
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('SBSKnownDerivedAsSBSKnownDerived', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.SBSKnownDerived');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = SBSKnownDerivedAsSBSKnownDerivedAsync(obj, context)
            %SBSKNOWNDERIVEDASSBSKNOWNDERIVEDASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also SBSKnownDerivedAsSBSKnownDerived, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.SBSKnownDerived');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('SBSKnownDerivedAsSBSKnownDerived', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = SBSUnknownDerivedAsSBase(obj, context)
            %SBSUNKNOWNDERIVEDASSBASE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SBase scalar | empty array of Test.SBase
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('SBSUnknownDerivedAsSBase', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.SBase');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = SBSUnknownDerivedAsSBaseAsync(obj, context)
            %SBSUNKNOWNDERIVEDASSBASEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also SBSUnknownDerivedAsSBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.SBase');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('SBSUnknownDerivedAsSBase', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = SBSUnknownDerivedAsSBaseCompact(obj, context)
            %SBSUNKNOWNDERIVEDASSBASECOMPACT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SBase scalar | empty array of Test.SBase
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('SBSUnknownDerivedAsSBaseCompact', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.SBase');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = SBSUnknownDerivedAsSBaseCompactAsync(obj, context)
            %SBSUNKNOWNDERIVEDASSBASECOMPACTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also SBSUnknownDerivedAsSBaseCompact, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.SBase');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('SBSUnknownDerivedAsSBaseCompact', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = SUnknownAsObject(obj, context)
            %SUNKNOWNASOBJECT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Ice.Value scalar | empty array of Ice.Value
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('SUnknownAsObject', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Ice.Value');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = SUnknownAsObjectAsync(obj, context)
            %SUNKNOWNASOBJECTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also SUnknownAsObject, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Ice.Value');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('SUnknownAsObject', 0, true, [], 1, @unmarshal, {}, context);
        end

        function checkSUnknown(obj, o, context)
            %CHECKSUNKNOWN
            %
            %   Input Arguments
            %     o
            %       Ice.Value scalar | empty array of Ice.Value
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                o Ice.Value {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(o);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('checkSUnknown', 0, false, os_, false, {}, context);
        end

        function future = checkSUnknownAsync(obj, o, context)
            %CHECKSUNKNOWNASYNC
            %
            %   Input Arguments
            %     o
            %       Ice.Value scalar | empty array of Ice.Value
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also checkSUnknown, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                o Ice.Value {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(o);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('checkSUnknown', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = oneElementCycle(obj, context)
            %ONEELEMENTCYCLE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.B scalar | empty array of Test.B
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('oneElementCycle', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = oneElementCycleAsync(obj, context)
            %ONEELEMENTCYCLEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also oneElementCycle, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('oneElementCycle', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = twoElementCycle(obj, context)
            %TWOELEMENTCYCLE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.B scalar | empty array of Test.B
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('twoElementCycle', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = twoElementCycleAsync(obj, context)
            %TWOELEMENTCYCLEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also twoElementCycle, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('twoElementCycle', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = D1AsB(obj, context)
            %D1ASB
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.B scalar | empty array of Test.B
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('D1AsB', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = D1AsBAsync(obj, context)
            %D1ASBASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also D1AsB, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('D1AsB', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = D1AsD1(obj, context)
            %D1ASD1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.D1 scalar | empty array of Test.D1
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('D1AsD1', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.D1');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = D1AsD1Async(obj, context)
            %D1ASD1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also D1AsD1, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.D1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('D1AsD1', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = D2AsB(obj, context)
            %D2ASB
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.B scalar | empty array of Test.B
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('D2AsB', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = D2AsBAsync(obj, context)
            %D2ASBASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also D2AsB, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('D2AsB', 0, true, [], 1, @unmarshal, {}, context);
        end

        function [p1, p2] = paramTest1(obj, context)
            %PARAMTEST1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     p1
            %       Test.B scalar | empty array of Test.B
            %     p2
            %       Test.B scalar | empty array of Test.B
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('paramTest1', 0, true, [], true, {}, context);
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

        function future = paramTest1Async(obj, context)
            %PARAMTEST1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also paramTest1, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
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
            future = obj.iceInvokeAsync('paramTest1', 0, true, [], 2, @unmarshal, {}, context);
        end

        function [p2, p1] = paramTest2(obj, context)
            %PARAMTEST2
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     p2
            %       Test.B scalar | empty array of Test.B
            %     p1
            %       Test.B scalar | empty array of Test.B
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('paramTest2', 0, true, [], true, {}, context);
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

        function future = paramTest2Async(obj, context)
            %PARAMTEST2ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also paramTest2, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
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
            future = obj.iceInvokeAsync('paramTest2', 0, true, [], 2, @unmarshal, {}, context);
        end

        function [returnValue, p1, p2] = paramTest3(obj, context)
            %PARAMTEST3
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.B scalar | empty array of Test.B
            %     p1
            %       Test.B scalar | empty array of Test.B
            %     p2
            %       Test.B scalar | empty array of Test.B
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('paramTest3', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            p1_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p1_h_.set(v), 'Test.B');
            p2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p2_h_.set(v), 'Test.B');
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            p1 = p1_h_.value;
            p2 = p2_h_.value;
            returnValue = returnValue_h_.value;
        end

        function future = paramTest3Async(obj, context)
            %PARAMTEST3ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also paramTest3, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p1 = IceInternal.ValueHolder();
                is_.readValue(@(v) p1.set(v), 'Test.B');
                p2 = IceInternal.ValueHolder();
                is_.readValue(@(v) p2.set(v), 'Test.B');
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
                varargout{2} = p1.value;
                varargout{3} = p2.value;
            end
            future = obj.iceInvokeAsync('paramTest3', 0, true, [], 3, @unmarshal, {}, context);
        end

        function [returnValue, p] = paramTest4(obj, context)
            %PARAMTEST4
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.B scalar | empty array of Test.B
            %     p
            %       Test.B scalar | empty array of Test.B
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('paramTest4', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            p_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p_h_.set(v), 'Test.B');
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            p = p_h_.value;
            returnValue = returnValue_h_.value;
        end

        function future = paramTest4Async(obj, context)
            %PARAMTEST4ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also paramTest4, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p = IceInternal.ValueHolder();
                is_.readValue(@(v) p.set(v), 'Test.B');
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
                varargout{2} = p.value;
            end
            future = obj.iceInvokeAsync('paramTest4', 0, true, [], 2, @unmarshal, {}, context);
        end

        function [returnValue, p1, p2] = returnTest1(obj, context)
            %RETURNTEST1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.B scalar | empty array of Test.B
            %     p1
            %       Test.B scalar | empty array of Test.B
            %     p2
            %       Test.B scalar | empty array of Test.B
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('returnTest1', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            p1_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p1_h_.set(v), 'Test.B');
            p2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p2_h_.set(v), 'Test.B');
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            p1 = p1_h_.value;
            p2 = p2_h_.value;
            returnValue = returnValue_h_.value;
        end

        function future = returnTest1Async(obj, context)
            %RETURNTEST1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also returnTest1, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p1 = IceInternal.ValueHolder();
                is_.readValue(@(v) p1.set(v), 'Test.B');
                p2 = IceInternal.ValueHolder();
                is_.readValue(@(v) p2.set(v), 'Test.B');
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
                varargout{2} = p1.value;
                varargout{3} = p2.value;
            end
            future = obj.iceInvokeAsync('returnTest1', 0, true, [], 3, @unmarshal, {}, context);
        end

        function [returnValue, p2, p1] = returnTest2(obj, context)
            %RETURNTEST2
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.B scalar | empty array of Test.B
            %     p2
            %       Test.B scalar | empty array of Test.B
            %     p1
            %       Test.B scalar | empty array of Test.B
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('returnTest2', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            p2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p2_h_.set(v), 'Test.B');
            p1_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p1_h_.set(v), 'Test.B');
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            p2 = p2_h_.value;
            p1 = p1_h_.value;
            returnValue = returnValue_h_.value;
        end

        function future = returnTest2Async(obj, context)
            %RETURNTEST2ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also returnTest2, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p2 = IceInternal.ValueHolder();
                is_.readValue(@(v) p2.set(v), 'Test.B');
                p1 = IceInternal.ValueHolder();
                is_.readValue(@(v) p1.set(v), 'Test.B');
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
                varargout{2} = p2.value;
                varargout{3} = p1.value;
            end
            future = obj.iceInvokeAsync('returnTest2', 0, true, [], 3, @unmarshal, {}, context);
        end

        function returnValue = returnTest3(obj, p1, p2, context)
            %RETURNTEST3
            %
            %   Input Arguments
            %     p1
            %       Test.B scalar | empty array of Test.B
            %     p2
            %       Test.B scalar | empty array of Test.B
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.B scalar | empty array of Test.B
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                p1 Test.B {mustBeScalarOrEmpty}
                p2 Test.B {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p1);
            os_.writeValue(p2);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('returnTest3', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.B');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = returnTest3Async(obj, p1, p2, context)
            %RETURNTEST3ASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.B scalar | empty array of Test.B
            %     p2
            %       Test.B scalar | empty array of Test.B
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also returnTest3, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                p1 Test.B {mustBeScalarOrEmpty}
                p2 Test.B {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p1);
            os_.writeValue(p2);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.B');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('returnTest3', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = sequenceTest(obj, p1, p2, context)
            %SEQUENCETEST
            %
            %   Input Arguments
            %     p1
            %       Test.SS1 scalar | empty array of Test.SS1
            %     p2
            %       Test.SS2 scalar | empty array of Test.SS2
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SS3 scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                p1 Test.SS1 {mustBeScalarOrEmpty}
                p2 Test.SS2 {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p1);
            os_.writeValue(p2);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('sequenceTest', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.SS3.ice_read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue.ice_convert();
        end

        function future = sequenceTestAsync(obj, p1, p2, context)
            %SEQUENCETESTASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.SS1 scalar | empty array of Test.SS1
            %     p2
            %       Test.SS2 scalar | empty array of Test.SS2
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also sequenceTest, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                p1 Test.SS1 {mustBeScalarOrEmpty}
                p2 Test.SS2 {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p1);
            os_.writeValue(p2);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.SS3.ice_read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.ice_convert();
            end
            future = obj.iceInvokeAsync('sequenceTest', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function [returnValue, bout] = dictionaryTest(obj, bin, context)
            %DICTIONARYTEST
            %
            %   Input Arguments
            %     bin
            %       int32, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32, cell) scalar
            %     bout
            %       int32, cell) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                bin (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            Test.BDict.write(os_, bin);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('dictionaryTest', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            bout = Test.BDict.read(is_);
            returnValue = Test.BDict.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            bout = Test.BDict.convert(bout);
            returnValue = Test.BDict.convert(returnValue);
        end

        function future = dictionaryTestAsync(obj, bin, context)
            %DICTIONARYTESTASYNC
            %
            %   Input Arguments
            %     bin
            %       int32, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also dictionaryTest, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                bin (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            Test.BDict.write(os_, bin);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                bout = Test.BDict.read(is_);
                returnValue = Test.BDict.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.BDict.convert(returnValue);
                varargout{2} = Test.BDict.convert(bout);
            end
            future = obj.iceInvokeAsync('dictionaryTest', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function returnValue = exchangePBase(obj, pb, context)
            %EXCHANGEPBASE
            %
            %   Input Arguments
            %     pb
            %       Test.PBase scalar | empty array of Test.PBase
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.PBase scalar | empty array of Test.PBase
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                pb Test.PBase {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(pb);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('exchangePBase', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.PBase');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = exchangePBaseAsync(obj, pb, context)
            %EXCHANGEPBASEASYNC
            %
            %   Input Arguments
            %     pb
            %       Test.PBase scalar | empty array of Test.PBase
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also exchangePBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                pb Test.PBase {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(pb);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.PBase');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('exchangePBase', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = PBSUnknownAsPreserved(obj, context)
            %PBSUNKNOWNASPRESERVED
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.Preserved scalar | empty array of Test.Preserved
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('PBSUnknownAsPreserved', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.Preserved');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = PBSUnknownAsPreservedAsync(obj, context)
            %PBSUNKNOWNASPRESERVEDASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also PBSUnknownAsPreserved, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.Preserved');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('PBSUnknownAsPreserved', 0, true, [], 1, @unmarshal, {}, context);
        end

        function checkPBSUnknown(obj, p, context)
            %CHECKPBSUNKNOWN
            %
            %   Input Arguments
            %     p
            %       Test.Preserved scalar | empty array of Test.Preserved
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                p Test.Preserved {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('checkPBSUnknown', 0, false, os_, false, {}, context);
        end

        function future = checkPBSUnknownAsync(obj, p, context)
            %CHECKPBSUNKNOWNASYNC
            %
            %   Input Arguments
            %     p
            %       Test.Preserved scalar | empty array of Test.Preserved
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also checkPBSUnknown, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                p Test.Preserved {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('checkPBSUnknown', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = PBSUnknownAsPreservedWithGraph(obj, context)
            %PBSUNKNOWNASPRESERVEDWITHGRAPH
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.Preserved scalar | empty array of Test.Preserved
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('PBSUnknownAsPreservedWithGraph', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.Preserved');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = PBSUnknownAsPreservedWithGraphAsync(obj, context)
            %PBSUNKNOWNASPRESERVEDWITHGRAPHASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also PBSUnknownAsPreservedWithGraph, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.Preserved');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('PBSUnknownAsPreservedWithGraph', 0, true, [], 1, @unmarshal, {}, context);
        end

        function checkPBSUnknownWithGraph(obj, p, context)
            %CHECKPBSUNKNOWNWITHGRAPH
            %
            %   Input Arguments
            %     p
            %       Test.Preserved scalar | empty array of Test.Preserved
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                p Test.Preserved {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('checkPBSUnknownWithGraph', 0, false, os_, false, {}, context);
        end

        function future = checkPBSUnknownWithGraphAsync(obj, p, context)
            %CHECKPBSUNKNOWNWITHGRAPHASYNC
            %
            %   Input Arguments
            %     p
            %       Test.Preserved scalar | empty array of Test.Preserved
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also checkPBSUnknownWithGraph, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                p Test.Preserved {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('checkPBSUnknownWithGraph', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = PBSUnknown2AsPreservedWithGraph(obj, context)
            %PBSUNKNOWN2ASPRESERVEDWITHGRAPH
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.Preserved scalar | empty array of Test.Preserved
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('PBSUnknown2AsPreservedWithGraph', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.Preserved');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = PBSUnknown2AsPreservedWithGraphAsync(obj, context)
            %PBSUNKNOWN2ASPRESERVEDWITHGRAPHASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also PBSUnknown2AsPreservedWithGraph, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.Preserved');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('PBSUnknown2AsPreservedWithGraph', 0, true, [], 1, @unmarshal, {}, context);
        end

        function checkPBSUnknown2WithGraph(obj, p, context)
            %CHECKPBSUNKNOWN2WITHGRAPH
            %
            %   Input Arguments
            %     p
            %       Test.Preserved scalar | empty array of Test.Preserved
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                p Test.Preserved {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('checkPBSUnknown2WithGraph', 0, false, os_, false, {}, context);
        end

        function future = checkPBSUnknown2WithGraphAsync(obj, p, context)
            %CHECKPBSUNKNOWN2WITHGRAPHASYNC
            %
            %   Input Arguments
            %     p
            %       Test.Preserved scalar | empty array of Test.Preserved
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also checkPBSUnknown2WithGraph, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                p Test.Preserved {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('checkPBSUnknown2WithGraph', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = exchangePNode(obj, pn, context)
            %EXCHANGEPNODE
            %
            %   Input Arguments
            %     pn
            %       Test.PNode scalar | empty array of Test.PNode
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.PNode scalar | empty array of Test.PNode
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                pn Test.PNode {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(pn);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('exchangePNode', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.PNode');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = exchangePNodeAsync(obj, pn, context)
            %EXCHANGEPNODEASYNC
            %
            %   Input Arguments
            %     pn
            %       Test.PNode scalar | empty array of Test.PNode
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also exchangePNode, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                pn Test.PNode {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams(Ice.FormatType.SlicedFormat);
            os_.writeValue(pn);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.PNode');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('exchangePNode', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function throwBaseAsBase(obj, context)
            %THROWBASEASBASE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.BaseException
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwBaseAsBase', 0, true, [], false, Test.TestIntfPrx.throwBaseAsBase_ex_, context);
        end

        function future = throwBaseAsBaseAsync(obj, context)
            %THROWBASEASBASEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwBaseAsBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwBaseAsBase', 0, true, [], 0, [], Test.TestIntfPrx.throwBaseAsBase_ex_, context);
        end

        function throwDerivedAsBase(obj, context)
            %THROWDERIVEDASBASE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.BaseException
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwDerivedAsBase', 0, true, [], false, Test.TestIntfPrx.throwDerivedAsBase_ex_, context);
        end

        function future = throwDerivedAsBaseAsync(obj, context)
            %THROWDERIVEDASBASEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwDerivedAsBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwDerivedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.throwDerivedAsBase_ex_, context);
        end

        function throwDerivedAsDerived(obj, context)
            %THROWDERIVEDASDERIVED
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.DerivedException
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwDerivedAsDerived', 0, true, [], false, Test.TestIntfPrx.throwDerivedAsDerived_ex_, context);
        end

        function future = throwDerivedAsDerivedAsync(obj, context)
            %THROWDERIVEDASDERIVEDASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwDerivedAsDerived, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwDerivedAsDerived', 0, true, [], 0, [], Test.TestIntfPrx.throwDerivedAsDerived_ex_, context);
        end

        function throwUnknownDerivedAsBase(obj, context)
            %THROWUNKNOWNDERIVEDASBASE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.BaseException
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwUnknownDerivedAsBase', 0, true, [], false, Test.TestIntfPrx.throwUnknownDerivedAsBase_ex_, context);
        end

        function future = throwUnknownDerivedAsBaseAsync(obj, context)
            %THROWUNKNOWNDERIVEDASBASEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwUnknownDerivedAsBase, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwUnknownDerivedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.throwUnknownDerivedAsBase_ex_, context);
        end

        function throwPreservedException(obj, context)
            %THROWPRESERVEDEXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.PreservedException
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwPreservedException', 0, true, [], false, Test.TestIntfPrx.throwPreservedException_ex_, context);
        end

        function future = throwPreservedExceptionAsync(obj, context)
            %THROWPRESERVEDEXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwPreservedException, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwPreservedException', 0, true, [], 0, [], Test.TestIntfPrx.throwPreservedException_ex_, context);
        end

        function f = useForward(obj, context)
            %USEFORWARD
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     f
            %       Test.Forward scalar | empty array of Test.Forward
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('useForward', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            f_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) f_h_.set(v), 'Test.Forward');
            is_.readPendingValues();
            is_.endEncapsulation();
            f = f_h_.value;
        end

        function future = useForwardAsync(obj, context)
            %USEFORWARDASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also useForward, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                f = IceInternal.ValueHolder();
                is_.readValue(@(v) f.set(v), 'Test.Forward');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = f.value;
            end
            future = obj.iceInvokeAsync('useForward', 0, true, [], 1, @unmarshal, {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('shutdown', 0, false, [], false, {}, context);
        end

        function future = shutdownAsync(obj, context)
            %SHUTDOWNASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also shutdown, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::TestIntf';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.TestIntfPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntf.
            %
            %   Input Arguments
            %     p - The proxy to check.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %     context - The request context (optional).
            %       dictionary(string, string) scalar
            %
            %   Output Arguments
            %     r - A Test.TestIntfPrx scalar if the target object implements Slice interface 
            %       ::Test::TestIntf; otherwise, an empty array of Test.TestIntfPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestIntfPrx.ice_staticId(), 'Test.TestIntfPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.TestIntfPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.TestIntfPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestIntfPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        throwBaseAsBase_ex_ = { 'Test.BaseException' }
        throwDerivedAsBase_ex_ = { 'Test.BaseException' }
        throwDerivedAsDerived_ex_ = { 'Test.DerivedException' }
        throwUnknownDerivedAsBase_ex_ = { 'Test.BaseException' }
        throwPreservedException_ex_ = { 'Test.PreservedException' }
    end
end
