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
    %     abortConnection
    %     abortConnectionAsync - An asynchronous abortConnection.
    %     closeConnection
    %     closeConnectionAsync - An asynchronous closeConnection.
    %     finishDispatch
    %     finishDispatchAsync - An asynchronous finishDispatch.
    %     op
    %     opAsync - An asynchronous op.
    %     opBatch
    %     opBatchAsync - An asynchronous opBatch.
    %     opBatchCount
    %     opBatchCountAsync - An asynchronous opBatchCount.
    %     opWithArgs
    %     opWithArgsAsync - An asynchronous opWithArgs.
    %     opWithPayload
    %     opWithPayloadAsync - An asynchronous opWithPayload.
    %     opWithResult
    %     opWithResultAsync - An asynchronous opWithResult.
    %     opWithResultAndUE
    %     opWithResultAndUEAsync - An asynchronous opWithResultAndUE.
    %     opWithUE
    %     opWithUEAsync - An asynchronous opWithUE.
    %     pingBiDir
    %     pingBiDirAsync - An asynchronous pingBiDir.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     sleep
    %     sleepAsync - An asynchronous sleep.
    %     startDispatch
    %     startDispatchAsync - An asynchronous startDispatch.
    %     supportsBackPressureTests
    %     supportsBackPressureTestsAsync - An asynchronous supportsBackPressureTests.
    %     supportsFunctionalTests
    %     supportsFunctionalTestsAsync - An asynchronous supportsFunctionalTests.
    %     waitForBatch
    %     waitForBatchAsync - An asynchronous waitForBatch.
    %
    %   TestIntfPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntf.
    %     uncheckedCast - Creates a TestIntfPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function op(obj, context)
            %OP
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('op', 0, false, [], false, {}, context);
        end

        function future = opAsync(obj, context)
            %OPASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also op, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('op', 0, false, [], 0, [], {}, context);
        end

        function opWithPayload(obj, seq, context)
            %OPWITHPAYLOAD
            %
            %   Input Arguments
            %     seq
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                seq (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(seq);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opWithPayload', 0, false, os_, false, {}, context);
        end

        function future = opWithPayloadAsync(obj, seq, context)
            %OPWITHPAYLOADASYNC
            %
            %   Input Arguments
            %     seq
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opWithPayload, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                seq (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(seq);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('opWithPayload', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = opWithResult(obj, context)
            %OPWITHRESULT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opWithResult', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = opWithResultAsync(obj, context)
            %OPWITHRESULTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opWithResult, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opWithResult', 0, true, [], 1, @unmarshal, {}, context);
        end

        function opWithUE(obj, context)
            %OPWITHUE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.TestIntfException
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('opWithUE', 0, true, [], false, Test.TestIntfPrx.opWithUE_ex_, context);
        end

        function future = opWithUEAsync(obj, context)
            %OPWITHUEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opWithUE, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('opWithUE', 0, true, [], 0, [], Test.TestIntfPrx.opWithUE_ex_, context);
        end

        function returnValue = opWithResultAndUE(obj, context)
            %OPWITHRESULTANDUE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            %
            %   Exceptions
            %     Test.TestIntfException
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opWithResultAndUE', 0, true, [], true, Test.TestIntfPrx.opWithResultAndUE_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = opWithResultAndUEAsync(obj, context)
            %OPWITHRESULTANDUEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opWithResultAndUE, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opWithResultAndUE', 0, true, [], 1, @unmarshal, Test.TestIntfPrx.opWithResultAndUE_ex_, context);
        end

        function opBatch(obj, context)
            %OPBATCH
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('opBatch', 0, false, [], false, {}, context);
        end

        function future = opBatchAsync(obj, context)
            %OPBATCHASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBatch, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('opBatch', 0, false, [], 0, [], {}, context);
        end

        function [one, two, three, four, five, six, seven, eight, nine, ten, eleven] = opWithArgs(obj, context)
            %OPWITHARGS
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     one
            %       int32 scalar
            %     two
            %       int32 scalar
            %     three
            %       int32 scalar
            %     four
            %       int32 scalar
            %     five
            %       int32 scalar
            %     six
            %       int32 scalar
            %     seven
            %       int32 scalar
            %     eight
            %       int32 scalar
            %     nine
            %       int32 scalar
            %     ten
            %       int32 scalar
            %     eleven
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opWithArgs', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            one = is_.readInt();
            two = is_.readInt();
            three = is_.readInt();
            four = is_.readInt();
            five = is_.readInt();
            six = is_.readInt();
            seven = is_.readInt();
            eight = is_.readInt();
            nine = is_.readInt();
            ten = is_.readInt();
            eleven = is_.readInt();
            is_.endEncapsulation();
        end

        function future = opWithArgsAsync(obj, context)
            %OPWITHARGSASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opWithArgs, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                one = is_.readInt();
                two = is_.readInt();
                three = is_.readInt();
                four = is_.readInt();
                five = is_.readInt();
                six = is_.readInt();
                seven = is_.readInt();
                eight = is_.readInt();
                nine = is_.readInt();
                ten = is_.readInt();
                eleven = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = one;
                varargout{2} = two;
                varargout{3} = three;
                varargout{4} = four;
                varargout{5} = five;
                varargout{6} = six;
                varargout{7} = seven;
                varargout{8} = eight;
                varargout{9} = nine;
                varargout{10} = ten;
                varargout{11} = eleven;
            end
            future = obj.iceInvokeAsync('opWithArgs', 0, true, [], 11, @unmarshal, {}, context);
        end

        function returnValue = opBatchCount(obj, context)
            %OPBATCHCOUNT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opBatchCount', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = opBatchCountAsync(obj, context)
            %OPBATCHCOUNTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBatchCount, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opBatchCount', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = waitForBatch(obj, count, context)
            %WAITFORBATCH
            %
            %   Input Arguments
            %     count
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                count (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('waitForBatch', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = waitForBatchAsync(obj, count, context)
            %WAITFORBATCHASYNC
            %
            %   Input Arguments
            %     count
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also waitForBatch, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                count (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(count);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('waitForBatch', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function closeConnection(obj, context)
            %CLOSECONNECTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('closeConnection', 0, false, [], false, {}, context);
        end

        function future = closeConnectionAsync(obj, context)
            %CLOSECONNECTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also closeConnection, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('closeConnection', 0, false, [], 0, [], {}, context);
        end

        function abortConnection(obj, context)
            %ABORTCONNECTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('abortConnection', 0, false, [], false, {}, context);
        end

        function future = abortConnectionAsync(obj, context)
            %ABORTCONNECTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also abortConnection, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('abortConnection', 0, false, [], 0, [], {}, context);
        end

        function sleep(obj, ms, context)
            %SLEEP
            %
            %   Input Arguments
            %     ms
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                ms (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(ms);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sleep', 0, false, os_, false, {}, context);
        end

        function future = sleepAsync(obj, ms, context)
            %SLEEPASYNC
            %
            %   Input Arguments
            %     ms
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also sleep, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                ms (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(ms);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('sleep', 0, false, os_, 0, [], {}, context);
        end

        function startDispatch(obj, context)
            %STARTDISPATCH
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('startDispatch', 0, false, [], false, {}, context);
        end

        function future = startDispatchAsync(obj, context)
            %STARTDISPATCHASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also startDispatch, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('startDispatch', 0, false, [], 0, [], {}, context);
        end

        function finishDispatch(obj, context)
            %FINISHDISPATCH
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('finishDispatch', 0, false, [], false, {}, context);
        end

        function future = finishDispatchAsync(obj, context)
            %FINISHDISPATCHASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also finishDispatch, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('finishDispatch', 0, false, [], 0, [], {}, context);
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

        function returnValue = supportsFunctionalTests(obj, context)
            %SUPPORTSFUNCTIONALTESTS
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('supportsFunctionalTests', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = supportsFunctionalTestsAsync(obj, context)
            %SUPPORTSFUNCTIONALTESTSASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also supportsFunctionalTests, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('supportsFunctionalTests', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = supportsBackPressureTests(obj, context)
            %SUPPORTSBACKPRESSURETESTS
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('supportsBackPressureTests', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = supportsBackPressureTestsAsync(obj, context)
            %SUPPORTSBACKPRESSURETESTSASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also supportsBackPressureTests, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('supportsBackPressureTests', 0, true, [], 1, @unmarshal, {}, context);
        end

        function pingBiDir(obj, reply, context)
            %PINGBIDIR
            %
            %   Input Arguments
            %     reply
            %       Test.PingReplyPrx scalar | empty array of Test.PingReplyPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                reply Test.PingReplyPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('pingBiDir', 0, false, os_, false, {}, context);
        end

        function future = pingBiDirAsync(obj, reply, context)
            %PINGBIDIRASYNC
            %
            %   Input Arguments
            %     reply
            %       Test.PingReplyPrx scalar | empty array of Test.PingReplyPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also pingBiDir, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                reply Test.PingReplyPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('pingBiDir', 0, false, os_, 0, [], {}, context);
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
        opWithUE_ex_ = { 'Test.TestIntfException' }
        opWithResultAndUE_ex_ = { 'Test.TestIntfException' }
    end
end
