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
    %     opBool
    %     opBoolAsync - An asynchronous opBool.
    %     opByte
    %     opByteAsync - An asynchronous opByte.
    %     opDouble
    %     opDoubleAsync - An asynchronous opDouble.
    %     opFloat
    %     opFloatAsync - An asynchronous opFloat.
    %     opInt
    %     opIntAsync - An asynchronous opInt.
    %     opLong
    %     opLongAsync - An asynchronous opLong.
    %     opShort
    %     opShortAsync - An asynchronous opShort.
    %     opWithPayload
    %     opWithPayloadAsync - An asynchronous opWithPayload.
    %     opWithResult
    %     opWithResultAsync - An asynchronous opWithResult.
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

        function returnValue = opBool(obj, b, context)
            %OPBOOL
            %
            %   Input Arguments
            %     b
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                b (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(b);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBool', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = opBoolAsync(obj, b, context)
            %OPBOOLASYNC
            %
            %   Input Arguments
            %     b
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBool, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                b (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(b);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opBool', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opByte(obj, b, context)
            %OPBYTE
            %
            %   Input Arguments
            %     b
            %       uint8 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                b (1, 1) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByte(b);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByte', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readByte();
            is_.endEncapsulation();
        end

        function future = opByteAsync(obj, b, context)
            %OPBYTEASYNC
            %
            %   Input Arguments
            %     b
            %       uint8 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByte, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                b (1, 1) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByte(b);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readByte();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opByte', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opShort(obj, s, context)
            %OPSHORT
            %
            %   Input Arguments
            %     s
            %       int16 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                s (1, 1) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShort(s);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShort', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readShort();
            is_.endEncapsulation();
        end

        function future = opShortAsync(obj, s, context)
            %OPSHORTASYNC
            %
            %   Input Arguments
            %     s
            %       int16 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opShort, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                s (1, 1) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShort(s);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readShort();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opShort', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opInt(obj, i, context)
            %OPINT
            %
            %   Input Arguments
            %     i
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                i (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opInt', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = opIntAsync(obj, i, context)
            %OPINTASYNC
            %
            %   Input Arguments
            %     i
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opInt, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                i (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opInt', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opLong(obj, l, context)
            %OPLONG
            %
            %   Input Arguments
            %     l
            %       int64 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                l (1, 1) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(l);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLong', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readLong();
            is_.endEncapsulation();
        end

        function future = opLongAsync(obj, l, context)
            %OPLONGASYNC
            %
            %   Input Arguments
            %     l
            %       int64 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLong, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                l (1, 1) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(l);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readLong();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opLong', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opFloat(obj, f, context)
            %OPFLOAT
            %
            %   Input Arguments
            %     f
            %       single scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       single scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                f (1, 1) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloat(f);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloat', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readFloat();
            is_.endEncapsulation();
        end

        function future = opFloatAsync(obj, f, context)
            %OPFLOATASYNC
            %
            %   Input Arguments
            %     f
            %       single scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opFloat, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                f (1, 1) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloat(f);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readFloat();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opFloat', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opDouble(obj, d, context)
            %OPDOUBLE
            %
            %   Input Arguments
            %     d
            %       double scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       double scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                d (1, 1) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDouble(d);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDouble', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readDouble();
            is_.endEncapsulation();
        end

        function future = opDoubleAsync(obj, d, context)
            %OPDOUBLEASYNC
            %
            %   Input Arguments
            %     d
            %       double scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opDouble, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                d (1, 1) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDouble(d);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readDouble();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opDouble', 0, true, os_, 1, @unmarshal, {}, context);
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
    end
end
