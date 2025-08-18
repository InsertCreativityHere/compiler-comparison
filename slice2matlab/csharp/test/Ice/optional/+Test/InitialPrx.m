classdef InitialPrx < Ice.ObjectPrx
    %INITIALPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.InitialPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   InitialPrx Methods:
    %     opBool
    %     opBoolAsync - An asynchronous opBool.
    %     opBoolSeq
    %     opBoolSeqAsync - An asynchronous opBoolSeq.
    %     opByte
    %     opByteAsync - An asynchronous opByte.
    %     opByteSeq
    %     opByteSeqAsync - An asynchronous opByteSeq.
    %     opClassAndUnknownOptional
    %     opClassAndUnknownOptionalAsync - An asynchronous opClassAndUnknownOptional.
    %     opDerivedException
    %     opDerivedExceptionAsync - An asynchronous opDerivedException.
    %     opDouble
    %     opDoubleAsync - An asynchronous opDouble.
    %     opDoubleSeq
    %     opDoubleSeqAsync - An asynchronous opDoubleSeq.
    %     opFixedStruct
    %     opFixedStructAsync - An asynchronous opFixedStruct.
    %     opFixedStructList
    %     opFixedStructListAsync - An asynchronous opFixedStructList.
    %     opFixedStructSeq
    %     opFixedStructSeqAsync - An asynchronous opFixedStructSeq.
    %     opFloat
    %     opFloatAsync - An asynchronous opFloat.
    %     opFloatSeq
    %     opFloatSeqAsync - An asynchronous opFloatSeq.
    %     opG
    %     opGAsync - An asynchronous opG.
    %     opInt
    %     opIntAsync - An asynchronous opInt.
    %     opIntIntDict
    %     opIntIntDictAsync - An asynchronous opIntIntDict.
    %     opIntSeq
    %     opIntSeqAsync - An asynchronous opIntSeq.
    %     opLong
    %     opLongAsync - An asynchronous opLong.
    %     opLongSeq
    %     opLongSeqAsync - An asynchronous opLongSeq.
    %     opMDict1
    %     opMDict1Async - An asynchronous opMDict1.
    %     opMDict2
    %     opMDict2Async - An asynchronous opMDict2.
    %     opMSeq1
    %     opMSeq1Async - An asynchronous opMSeq1.
    %     opMSeq2
    %     opMSeq2Async - An asynchronous opMSeq2.
    %     opMStruct1
    %     opMStruct1Async - An asynchronous opMStruct1.
    %     opMStruct2
    %     opMStruct2Async - An asynchronous opMStruct2.
    %     opMyEnum
    %     opMyEnumAsync - An asynchronous opMyEnum.
    %     opMyInterfaceProxy
    %     opMyInterfaceProxyAsync - An asynchronous opMyInterfaceProxy.
    %     opOneOptional
    %     opOneOptionalAsync - An asynchronous opOneOptional.
    %     opOptionalException
    %     opOptionalExceptionAsync - An asynchronous opOptionalException.
    %     opRequiredException
    %     opRequiredExceptionAsync - An asynchronous opRequiredException.
    %     opShort
    %     opShortAsync - An asynchronous opShort.
    %     opShortSeq
    %     opShortSeqAsync - An asynchronous opShortSeq.
    %     opSmallStruct
    %     opSmallStructAsync - An asynchronous opSmallStruct.
    %     opSmallStructList
    %     opSmallStructListAsync - An asynchronous opSmallStructList.
    %     opSmallStructSeq
    %     opSmallStructSeqAsync - An asynchronous opSmallStructSeq.
    %     opString
    %     opStringAsync - An asynchronous opString.
    %     opStringIntDict
    %     opStringIntDictAsync - An asynchronous opStringIntDict.
    %     opStringSeq
    %     opStringSeqAsync - An asynchronous opStringSeq.
    %     opVarStruct
    %     opVarStructAsync - An asynchronous opVarStruct.
    %     opVarStructSeq
    %     opVarStructSeqAsync - An asynchronous opVarStructSeq.
    %     opVoid
    %     opVoidAsync - An asynchronous opVoid.
    %     pingPong
    %     pingPongAsync - An asynchronous pingPong.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     supportsJavaSerializable
    %     supportsJavaSerializableAsync - An asynchronous supportsJavaSerializable.
    %
    %   InitialPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Initial.
    %     uncheckedCast - Creates a InitialPrx from another proxy without any validation.
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.InitialPrx
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
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end

        function returnValue = pingPong(obj, o, context)
            %PINGPONG
            %
            %   Input Arguments
            %     o
            %       Ice.Value scalar | empty array of Ice.Value
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Ice.Value scalar | empty array of Ice.Value
            
            arguments
                obj (1, 1) Test.InitialPrx
                o Ice.Value {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(o);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('pingPong', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Ice.Value');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = pingPongAsync(obj, o, context)
            %PINGPONGASYNC
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
            %   See also pingPong, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                o Ice.Value {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(o);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Ice.Value');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('pingPong', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function opOptionalException(obj, a, b, context)
            %OPOPTIONALEXCEPTION
            %
            %   Input Arguments
            %     a
            %       int32 scalar | Ice.Unset
            %     b
            %       character vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.OptionalException
            
            arguments
                obj (1, 1) Test.InitialPrx
                a (1, 1)
                b (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, b);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opOptionalException', 0, true, os_, false, Test.InitialPrx.opOptionalException_ex_, context);
        end

        function future = opOptionalExceptionAsync(obj, a, b, context)
            %OPOPTIONALEXCEPTIONASYNC
            %
            %   Input Arguments
            %     a
            %       int32 scalar | Ice.Unset
            %     b
            %       character vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptionalException, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                a (1, 1)
                b (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, b);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('opOptionalException', 0, true, os_, 0, [], Test.InitialPrx.opOptionalException_ex_, context);
        end

        function opDerivedException(obj, a, b, context)
            %OPDERIVEDEXCEPTION
            %
            %   Input Arguments
            %     a
            %       int32 scalar | Ice.Unset
            %     b
            %       character vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.OptionalException
            
            arguments
                obj (1, 1) Test.InitialPrx
                a (1, 1)
                b (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, b);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opDerivedException', 0, true, os_, false, Test.InitialPrx.opDerivedException_ex_, context);
        end

        function future = opDerivedExceptionAsync(obj, a, b, context)
            %OPDERIVEDEXCEPTIONASYNC
            %
            %   Input Arguments
            %     a
            %       int32 scalar | Ice.Unset
            %     b
            %       character vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opDerivedException, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                a (1, 1)
                b (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, b);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('opDerivedException', 0, true, os_, 0, [], Test.InitialPrx.opDerivedException_ex_, context);
        end

        function opRequiredException(obj, a, b, context)
            %OPREQUIREDEXCEPTION
            %
            %   Input Arguments
            %     a
            %       int32 scalar | Ice.Unset
            %     b
            %       character vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.OptionalException
            
            arguments
                obj (1, 1) Test.InitialPrx
                a (1, 1)
                b (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, b);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opRequiredException', 0, true, os_, false, Test.InitialPrx.opRequiredException_ex_, context);
        end

        function future = opRequiredExceptionAsync(obj, a, b, context)
            %OPREQUIREDEXCEPTIONASYNC
            %
            %   Input Arguments
            %     a
            %       int32 scalar | Ice.Unset
            %     b
            %       character vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opRequiredException, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                a (1, 1)
                b (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, b);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('opRequiredException', 0, true, os_, 0, [], Test.InitialPrx.opRequiredException_ex_, context);
        end

        function [returnValue, p3] = opByte(obj, p1, context)
            %OPBYTE
            %
            %   Input Arguments
            %     p1
            %       uint8 scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 scalar | Ice.Unset
            %     p3
            %       uint8 scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByte', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readByteOpt(1);
            p3 = is_.readByteOpt(3);
            is_.endEncapsulation();
        end

        function future = opByteAsync(obj, p1, context)
            %OPBYTEASYNC
            %
            %   Input Arguments
            %     p1
            %       uint8 scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByte, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readByteOpt(1);
                p3 = is_.readByteOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opByte', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opBool(obj, p1, context)
            %OPBOOL
            %
            %   Input Arguments
            %     p1
            %       logical scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical scalar | Ice.Unset
            %     p3
            %       logical scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBool', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBoolOpt(1);
            p3 = is_.readBoolOpt(3);
            is_.endEncapsulation();
        end

        function future = opBoolAsync(obj, p1, context)
            %OPBOOLASYNC
            %
            %   Input Arguments
            %     p1
            %       logical scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBool, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBoolOpt(1);
                p3 = is_.readBoolOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opBool', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opShort(obj, p1, context)
            %OPSHORT
            %
            %   Input Arguments
            %     p1
            %       int16 scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 scalar | Ice.Unset
            %     p3
            %       int16 scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShort', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readShortOpt(1);
            p3 = is_.readShortOpt(3);
            is_.endEncapsulation();
        end

        function future = opShortAsync(obj, p1, context)
            %OPSHORTASYNC
            %
            %   Input Arguments
            %     p1
            %       int16 scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opShort, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readShortOpt(1);
                p3 = is_.readShortOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opShort', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opInt(obj, p1, context)
            %OPINT
            %
            %   Input Arguments
            %     p1
            %       int32 scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar | Ice.Unset
            %     p3
            %       int32 scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opInt', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readIntOpt(1);
            p3 = is_.readIntOpt(3);
            is_.endEncapsulation();
        end

        function future = opIntAsync(obj, p1, context)
            %OPINTASYNC
            %
            %   Input Arguments
            %     p1
            %       int32 scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opInt, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readIntOpt(1);
                p3 = is_.readIntOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opInt', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opLong(obj, p1, context)
            %OPLONG
            %
            %   Input Arguments
            %     p1
            %       int64 scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 scalar | Ice.Unset
            %     p3
            %       int64 scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongOpt(1, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLong', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = is_.readLongOpt(2);
            returnValue = is_.readLongOpt(3);
            is_.endEncapsulation();
        end

        function future = opLongAsync(obj, p1, context)
            %OPLONGASYNC
            %
            %   Input Arguments
            %     p1
            %       int64 scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLong, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongOpt(1, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readLongOpt(2);
                returnValue = is_.readLongOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opLong', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opFloat(obj, p1, context)
            %OPFLOAT
            %
            %   Input Arguments
            %     p1
            %       single scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       single scalar | Ice.Unset
            %     p3
            %       single scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloat', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readFloatOpt(1);
            p3 = is_.readFloatOpt(3);
            is_.endEncapsulation();
        end

        function future = opFloatAsync(obj, p1, context)
            %OPFLOATASYNC
            %
            %   Input Arguments
            %     p1
            %       single scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opFloat, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readFloatOpt(1);
                p3 = is_.readFloatOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opFloat', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opDouble(obj, p1, context)
            %OPDOUBLE
            %
            %   Input Arguments
            %     p1
            %       double scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       double scalar | Ice.Unset
            %     p3
            %       double scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDouble', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readDoubleOpt(1);
            p3 = is_.readDoubleOpt(3);
            is_.endEncapsulation();
        end

        function future = opDoubleAsync(obj, p1, context)
            %OPDOUBLEASYNC
            %
            %   Input Arguments
            %     p1
            %       double scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opDouble, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readDoubleOpt(1);
                p3 = is_.readDoubleOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opDouble', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opString(obj, p1, context)
            %OPSTRING
            %
            %   Input Arguments
            %     p1
            %       character vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector | Ice.Unset
            %     p3
            %       character vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opString', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringOpt(1);
            p3 = is_.readStringOpt(3);
            is_.endEncapsulation();
        end

        function future = opStringAsync(obj, p1, context)
            %OPSTRINGASYNC
            %
            %   Input Arguments
            %     p1
            %       character vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opString, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringOpt(1);
                p3 = is_.readStringOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opString', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opMyEnum(obj, p1, context)
            %OPMYENUM
            %
            %   Input Arguments
            %     p1
            %       Test.MyEnum scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MyEnum scalar | Ice.Unset
            %     p3
            %       Test.MyEnum scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnum.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyEnum', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.MyEnum.ice_readOpt(is_, 1);
            p3 = Test.MyEnum.ice_readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opMyEnumAsync(obj, p1, context)
            %OPMYENUMASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.MyEnum scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyEnum, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnum.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.MyEnum.ice_readOpt(is_, 1);
                p3 = Test.MyEnum.ice_readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opMyEnum', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opSmallStruct(obj, p1, context)
            %OPSMALLSTRUCT
            %
            %   Input Arguments
            %     p1
            %       Test.SmallStruct scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SmallStruct scalar | Ice.Unset
            %     p3
            %       Test.SmallStruct scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SmallStruct.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSmallStruct', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.SmallStruct.ice_readOpt(is_, 1);
            p3 = Test.SmallStruct.ice_readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opSmallStructAsync(obj, p1, context)
            %OPSMALLSTRUCTASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.SmallStruct scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSmallStruct, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SmallStruct.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.SmallStruct.ice_readOpt(is_, 1);
                p3 = Test.SmallStruct.ice_readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opSmallStruct', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opFixedStruct(obj, p1, context)
            %OPFIXEDSTRUCT
            %
            %   Input Arguments
            %     p1
            %       Test.FixedStruct scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.FixedStruct scalar | Ice.Unset
            %     p3
            %       Test.FixedStruct scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.FixedStruct.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFixedStruct', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.FixedStruct.ice_readOpt(is_, 1);
            p3 = Test.FixedStruct.ice_readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opFixedStructAsync(obj, p1, context)
            %OPFIXEDSTRUCTASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.FixedStruct scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opFixedStruct, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.FixedStruct.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.FixedStruct.ice_readOpt(is_, 1);
                p3 = Test.FixedStruct.ice_readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opFixedStruct', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opVarStruct(obj, p1, context)
            %OPVARSTRUCT
            %
            %   Input Arguments
            %     p1
            %       Test.VarStruct scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.VarStruct scalar | Ice.Unset
            %     p3
            %       Test.VarStruct scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.VarStruct.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opVarStruct', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.VarStruct.ice_readOpt(is_, 1);
            p3 = Test.VarStruct.ice_readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opVarStructAsync(obj, p1, context)
            %OPVARSTRUCTASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.VarStruct scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opVarStruct, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.VarStruct.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.VarStruct.ice_readOpt(is_, 1);
                p3 = Test.VarStruct.ice_readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opVarStruct', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opMyInterfaceProxy(obj, p1, context)
            %OPMYINTERFACEPROXY
            %
            %   Input Arguments
            %     p1
            %       Test.MyInterfacePrx scalar | empty array of Test.MyInterfacePrx | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MyInterfacePrx scalar | empty array of Test.MyInterfacePrx | Ice.Unset
            %     p3
            %       Test.MyInterfacePrx scalar | empty array of Test.MyInterfacePrx | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxyOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyInterfaceProxy', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readProxyOpt(1, 'Test.MyInterfacePrx');
            p3 = is_.readProxyOpt(3, 'Test.MyInterfacePrx');
            is_.endEncapsulation();
        end

        function future = opMyInterfaceProxyAsync(obj, p1, context)
            %OPMYINTERFACEPROXYASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.MyInterfacePrx scalar | empty array of Test.MyInterfacePrx | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyInterfaceProxy, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxyOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxyOpt(1, 'Test.MyInterfacePrx');
                p3 = is_.readProxyOpt(3, 'Test.MyInterfacePrx');
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opMyInterfaceProxy', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opOneOptional(obj, p1, context)
            %OPONEOPTIONAL
            %
            %   Input Arguments
            %     p1
            %       Test.OneOptional scalar | empty array of Test.OneOptional
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.OneOptional scalar | empty array of Test.OneOptional
            %     p3
            %       Test.OneOptional scalar | empty array of Test.OneOptional
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 Test.OneOptional {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOneOptional', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) p3_h_.set(v), 'Test.OneOptional');
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.OneOptional');
            is_.readPendingValues();
            is_.endEncapsulation();
            p3 = p3_h_.value;
            returnValue = returnValue_h_.value;
        end

        function future = opOneOptionalAsync(obj, p1, context)
            %OPONEOPTIONALASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.OneOptional scalar | empty array of Test.OneOptional
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOneOptional, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 Test.OneOptional {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = IceInternal.ValueHolder();
                is_.readValue(@(v) p3.set(v), 'Test.OneOptional');
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.OneOptional');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
                varargout{2} = p3.value;
            end
            future = obj.iceInvokeAsync('opOneOptional', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opByteSeq(obj, p1, context)
            %OPBYTESEQ
            %
            %   Input Arguments
            %     p1
            %       uint8 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector | Ice.Unset
            %     p3
            %       uint8 vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readByteSeqOpt(1);
            p3 = is_.readByteSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opByteSeqAsync(obj, p1, context)
            %OPBYTESEQASYNC
            %
            %   Input Arguments
            %     p1
            %       uint8 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readByteSeqOpt(1);
                p3 = is_.readByteSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opByteSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opBoolSeq(obj, p1, context)
            %OPBOOLSEQ
            %
            %   Input Arguments
            %     p1
            %       logical vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector | Ice.Unset
            %     p3
            %       logical vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBoolSeqOpt(1);
            p3 = is_.readBoolSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opBoolSeqAsync(obj, p1, context)
            %OPBOOLSEQASYNC
            %
            %   Input Arguments
            %     p1
            %       logical vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBoolSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBoolSeqOpt(1);
                p3 = is_.readBoolSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opBoolSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opShortSeq(obj, p1, context)
            %OPSHORTSEQ
            %
            %   Input Arguments
            %     p1
            %       int16 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 vector | Ice.Unset
            %     p3
            %       int16 vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readShortSeqOpt(1);
            p3 = is_.readShortSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opShortSeqAsync(obj, p1, context)
            %OPSHORTSEQASYNC
            %
            %   Input Arguments
            %     p1
            %       int16 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opShortSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readShortSeqOpt(1);
                p3 = is_.readShortSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opShortSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opIntSeq(obj, p1, context)
            %OPINTSEQ
            %
            %   Input Arguments
            %     p1
            %       int32 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 vector | Ice.Unset
            %     p3
            %       int32 vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readIntSeqOpt(1);
            p3 = is_.readIntSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opIntSeqAsync(obj, p1, context)
            %OPINTSEQASYNC
            %
            %   Input Arguments
            %     p1
            %       int32 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opIntSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readIntSeqOpt(1);
                p3 = is_.readIntSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opIntSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opLongSeq(obj, p1, context)
            %OPLONGSEQ
            %
            %   Input Arguments
            %     p1
            %       int64 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 vector | Ice.Unset
            %     p3
            %       int64 vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLongSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readLongSeqOpt(1);
            p3 = is_.readLongSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opLongSeqAsync(obj, p1, context)
            %OPLONGSEQASYNC
            %
            %   Input Arguments
            %     p1
            %       int64 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLongSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readLongSeqOpt(1);
                p3 = is_.readLongSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opLongSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opFloatSeq(obj, p1, context)
            %OPFLOATSEQ
            %
            %   Input Arguments
            %     p1
            %       single vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       single vector | Ice.Unset
            %     p3
            %       single vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloatSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readFloatSeqOpt(1);
            p3 = is_.readFloatSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opFloatSeqAsync(obj, p1, context)
            %OPFLOATSEQASYNC
            %
            %   Input Arguments
            %     p1
            %       single vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opFloatSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readFloatSeqOpt(1);
                p3 = is_.readFloatSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opFloatSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opDoubleSeq(obj, p1, context)
            %OPDOUBLESEQ
            %
            %   Input Arguments
            %     p1
            %       double vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       double vector | Ice.Unset
            %     p3
            %       double vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDoubleSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readDoubleSeqOpt(1);
            p3 = is_.readDoubleSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opDoubleSeqAsync(obj, p1, context)
            %OPDOUBLESEQASYNC
            %
            %   Input Arguments
            %     p1
            %       double vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opDoubleSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readDoubleSeqOpt(1);
                p3 = is_.readDoubleSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opDoubleSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opStringSeq(obj, p1, context)
            %OPSTRINGSEQ
            %
            %   Input Arguments
            %     p1
            %       string vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector | Ice.Unset
            %     p3
            %       string vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeqOpt(1);
            p3 = is_.readStringSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opStringSeqAsync(obj, p1, context)
            %OPSTRINGSEQASYNC
            %
            %   Input Arguments
            %     p1
            %       string vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeqOpt(1);
                p3 = is_.readStringSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opStringSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opSmallStructSeq(obj, p1, context)
            %OPSMALLSTRUCTSEQ
            %
            %   Input Arguments
            %     p1
            %       Test.SmallStruct vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SmallStruct vector | Ice.Unset
            %     p3
            %       Test.SmallStruct vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SmallStructSeq.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSmallStructSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.SmallStructSeq.readOpt(is_, 1);
            p3 = Test.SmallStructSeq.readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opSmallStructSeqAsync(obj, p1, context)
            %OPSMALLSTRUCTSEQASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.SmallStruct vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSmallStructSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SmallStructSeq.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.SmallStructSeq.readOpt(is_, 1);
                p3 = Test.SmallStructSeq.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opSmallStructSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opSmallStructList(obj, p1, context)
            %OPSMALLSTRUCTLIST
            %
            %   Input Arguments
            %     p1
            %       Test.SmallStruct vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SmallStruct vector | Ice.Unset
            %     p3
            %       Test.SmallStruct vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SmallStructList.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSmallStructList', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.SmallStructList.readOpt(is_, 1);
            p3 = Test.SmallStructList.readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opSmallStructListAsync(obj, p1, context)
            %OPSMALLSTRUCTLISTASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.SmallStruct vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSmallStructList, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SmallStructList.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.SmallStructList.readOpt(is_, 1);
                p3 = Test.SmallStructList.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opSmallStructList', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opFixedStructSeq(obj, p1, context)
            %OPFIXEDSTRUCTSEQ
            %
            %   Input Arguments
            %     p1
            %       Test.FixedStruct vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.FixedStruct vector | Ice.Unset
            %     p3
            %       Test.FixedStruct vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.FixedStructSeq.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFixedStructSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.FixedStructSeq.readOpt(is_, 1);
            p3 = Test.FixedStructSeq.readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opFixedStructSeqAsync(obj, p1, context)
            %OPFIXEDSTRUCTSEQASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.FixedStruct vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opFixedStructSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.FixedStructSeq.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.FixedStructSeq.readOpt(is_, 1);
                p3 = Test.FixedStructSeq.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opFixedStructSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opFixedStructList(obj, p1, context)
            %OPFIXEDSTRUCTLIST
            %
            %   Input Arguments
            %     p1
            %       Test.FixedStruct vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.FixedStruct vector | Ice.Unset
            %     p3
            %       Test.FixedStruct vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.FixedStructList.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFixedStructList', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.FixedStructList.readOpt(is_, 1);
            p3 = Test.FixedStructList.readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opFixedStructListAsync(obj, p1, context)
            %OPFIXEDSTRUCTLISTASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.FixedStruct vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opFixedStructList, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.FixedStructList.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.FixedStructList.readOpt(is_, 1);
                p3 = Test.FixedStructList.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opFixedStructList', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opVarStructSeq(obj, p1, context)
            %OPVARSTRUCTSEQ
            %
            %   Input Arguments
            %     p1
            %       Test.VarStruct vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.VarStruct vector | Ice.Unset
            %     p3
            %       Test.VarStruct vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.VarStructSeq.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opVarStructSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.VarStructSeq.readOpt(is_, 1);
            p3 = Test.VarStructSeq.readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opVarStructSeqAsync(obj, p1, context)
            %OPVARSTRUCTSEQASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.VarStruct vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opVarStructSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.VarStructSeq.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.VarStructSeq.readOpt(is_, 1);
                p3 = Test.VarStructSeq.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opVarStructSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opIntIntDict(obj, p1, context)
            %OPINTINTDICT
            %
            %   Input Arguments
            %     p1
            %       int32, int32) scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32, int32) scalar | Ice.Unset
            %     p3
            %       int32, int32) scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.IntIntDict.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntIntDict', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.IntIntDict.readOpt(is_, 1);
            p3 = Test.IntIntDict.readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opIntIntDictAsync(obj, p1, context)
            %OPINTINTDICTASYNC
            %
            %   Input Arguments
            %     p1
            %       int32, int32) scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opIntIntDict, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.IntIntDict.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.IntIntDict.readOpt(is_, 1);
                p3 = Test.IntIntDict.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opIntIntDict', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opStringIntDict(obj, p1, context)
            %OPSTRINGINTDICT
            %
            %   Input Arguments
            %     p1
            %       string, int32) scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, int32) scalar | Ice.Unset
            %     p3
            %       string, int32) scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringIntDict.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringIntDict', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.StringIntDict.readOpt(is_, 1);
            p3 = Test.StringIntDict.readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opStringIntDictAsync(obj, p1, context)
            %OPSTRINGINTDICTASYNC
            %
            %   Input Arguments
            %     p1
            %       string, int32) scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringIntDict, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringIntDict.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.StringIntDict.readOpt(is_, 1);
                p3 = Test.StringIntDict.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opStringIntDict', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function opClassAndUnknownOptional(obj, p, context)
            %OPCLASSANDUNKNOWNOPTIONAL
            %
            %   Input Arguments
            %     p
            %       Test.A scalar | empty array of Test.A
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.InitialPrx
                p Test.A {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opClassAndUnknownOptional', 0, false, os_, false, {}, context);
        end

        function future = opClassAndUnknownOptionalAsync(obj, p, context)
            %OPCLASSANDUNKNOWNOPTIONALASYNC
            %
            %   Input Arguments
            %     p
            %       Test.A scalar | empty array of Test.A
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opClassAndUnknownOptional, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p Test.A {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('opClassAndUnknownOptional', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = opG(obj, g, context)
            %OPG
            %
            %   Input Arguments
            %     g
            %       Test.G scalar | empty array of Test.G
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.G scalar | empty array of Test.G
            
            arguments
                obj (1, 1) Test.InitialPrx
                g Test.G {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(g);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opG', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.G');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = opGAsync(obj, g, context)
            %OPGASYNC
            %
            %   Input Arguments
            %     g
            %       Test.G scalar | empty array of Test.G
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opG, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                g Test.G {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(g);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.G');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('opG', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function opVoid(obj, context)
            %OPVOID
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('opVoid', 0, false, [], false, {}, context);
        end

        function future = opVoidAsync(obj, context)
            %OPVOIDASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opVoid, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('opVoid', 0, false, [], 0, [], {}, context);
        end

        function returnValue = opMStruct1(obj, context)
            %OPMSTRUCT1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SmallStruct scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opMStruct1', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.SmallStruct.ice_readOpt(is_, 1);
            is_.endEncapsulation();
        end

        function future = opMStruct1Async(obj, context)
            %OPMSTRUCT1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMStruct1, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.SmallStruct.ice_readOpt(is_, 1);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opMStruct1', 0, true, [], 1, @unmarshal, {}, context);
        end

        function [returnValue, p2] = opMStruct2(obj, p1, context)
            %OPMSTRUCT2
            %
            %   Input Arguments
            %     p1
            %       Test.SmallStruct scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SmallStruct scalar | Ice.Unset
            %     p2
            %       Test.SmallStruct scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SmallStruct.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMStruct2', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.SmallStruct.ice_readOpt(is_, 1);
            p2 = Test.SmallStruct.ice_readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opMStruct2Async(obj, p1, context)
            %OPMSTRUCT2ASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.SmallStruct scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMStruct2, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SmallStruct.ice_writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.SmallStruct.ice_readOpt(is_, 1);
                p2 = Test.SmallStruct.ice_readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p2;
            end
            future = obj.iceInvokeAsync('opMStruct2', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function returnValue = opMSeq1(obj, context)
            %OPMSEQ1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opMSeq1', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeqOpt(1);
            is_.endEncapsulation();
        end

        function future = opMSeq1Async(obj, context)
            %OPMSEQ1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMSeq1, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeqOpt(1);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opMSeq1', 0, true, [], 1, @unmarshal, {}, context);
        end

        function [returnValue, p2] = opMSeq2(obj, p1, context)
            %OPMSEQ2
            %
            %   Input Arguments
            %     p1
            %       string vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector | Ice.Unset
            %     p2
            %       string vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMSeq2', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeqOpt(1);
            p2 = is_.readStringSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opMSeq2Async(obj, p1, context)
            %OPMSEQ2ASYNC
            %
            %   Input Arguments
            %     p1
            %       string vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMSeq2, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeqOpt(2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeqOpt(1);
                p2 = is_.readStringSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p2;
            end
            future = obj.iceInvokeAsync('opMSeq2', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function returnValue = opMDict1(obj, context)
            %OPMDICT1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, int32) scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opMDict1', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.StringIntDict.readOpt(is_, 1);
            is_.endEncapsulation();
        end

        function future = opMDict1Async(obj, context)
            %OPMDICT1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMDict1, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.StringIntDict.readOpt(is_, 1);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opMDict1', 0, true, [], 1, @unmarshal, {}, context);
        end

        function [returnValue, p2] = opMDict2(obj, p1, context)
            %OPMDICT2
            %
            %   Input Arguments
            %     p1
            %       string, int32) scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, int32) scalar | Ice.Unset
            %     p2
            %       string, int32) scalar | Ice.Unset
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringIntDict.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMDict2', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.StringIntDict.readOpt(is_, 1);
            p2 = Test.StringIntDict.readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opMDict2Async(obj, p1, context)
            %OPMDICT2ASYNC
            %
            %   Input Arguments
            %     p1
            %       string, int32) scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMDict2, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                p1 (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringIntDict.writeOpt(os_, 2, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.StringIntDict.readOpt(is_, 1);
                p2 = Test.StringIntDict.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p2;
            end
            future = obj.iceInvokeAsync('opMDict2', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function returnValue = supportsJavaSerializable(obj, context)
            %SUPPORTSJAVASERIALIZABLE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical scalar
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('supportsJavaSerializable', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = supportsJavaSerializableAsync(obj, context)
            %SUPPORTSJAVASERIALIZABLEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also supportsJavaSerializable, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('supportsJavaSerializable', 0, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Initial';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.InitialPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Initial.
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
            %     r - A Test.InitialPrx scalar if the target object implements Slice interface 
            %       ::Test::Initial; otherwise, an empty array of Test.InitialPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.InitialPrx.ice_staticId(), 'Test.InitialPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.InitialPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.InitialPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.InitialPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        opOptionalException_ex_ = { 'Test.OptionalException' }
        opDerivedException_ex_ = { 'Test.OptionalException' }
        opRequiredException_ex_ = { 'Test.OptionalException' }
    end
end
