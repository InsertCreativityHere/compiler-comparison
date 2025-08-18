classdef CustomPrx < Ice.ObjectPrx
    %CUSTOMPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.CustomPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   CustomPrx Methods:
    %     opBogusArrayNoCallableFactory
    %     opBogusArrayNoCallableFactoryAsync - An asynchronous opBogusArrayNoCallableFactory.
    %     opBogusArrayNoneFactory
    %     opBogusArrayNoneFactoryAsync - An asynchronous opBogusArrayNoneFactory.
    %     opBogusArrayNotExistsFactory
    %     opBogusArrayNotExistsFactoryAsync - An asynchronous opBogusArrayNotExistsFactory.
    %     opBogusArraySignatureFactory
    %     opBogusArraySignatureFactoryAsync - An asynchronous opBogusArraySignatureFactory.
    %     opBogusArrayThrowFactory
    %     opBogusArrayThrowFactoryAsync - An asynchronous opBogusArrayThrowFactory.
    %     opBogusArrayType
    %     opBogusArrayTypeAsync - An asynchronous opBogusArrayType.
    %     opBoolSeq
    %     opBoolSeqAsync - An asynchronous opBoolSeq.
    %     opByteList1
    %     opByteList1Async - An asynchronous opByteList1.
    %     opByteList2
    %     opByteList2Async - An asynchronous opByteList2.
    %     opByteSeq
    %     opByteSeqAsync - An asynchronous opByteSeq.
    %     opByteString1
    %     opByteString1Async - An asynchronous opByteString1.
    %     opByteString2
    %     opByteString2Async - An asynchronous opByteString2.
    %     opD
    %     opDAsync - An asynchronous opD.
    %     opDoubleSeq
    %     opDoubleSeqAsync - An asynchronous opDoubleSeq.
    %     opFloatSeq
    %     opFloatSeqAsync - An asynchronous opFloatSeq.
    %     opIntSeq
    %     opIntSeqAsync - An asynchronous opIntSeq.
    %     opLongSeq
    %     opLongSeqAsync - An asynchronous opLongSeq.
    %     opShortSeq
    %     opShortSeqAsync - An asynchronous opShortSeq.
    %     opStringList1
    %     opStringList1Async - An asynchronous opStringList1.
    %     opStringList2
    %     opStringList2Async - An asynchronous opStringList2.
    %     opStringTuple1
    %     opStringTuple1Async - An asynchronous opStringTuple1.
    %     opStringTuple2
    %     opStringTuple2Async - An asynchronous opStringTuple2.
    %     sendC
    %     sendCAsync - An asynchronous sendC.
    %     sendS
    %     sendSAsync - An asynchronous sendS.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   CustomPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Custom.
    %     uncheckedCast - Creates a CustomPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [returnValue, b2] = opByteString1(obj, b1, context)
            %OPBYTESTRING1
            %
            %   Input Arguments
            %     b1
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     b2
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                b1 (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(b1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteString1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            b2 = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opByteString1Async(obj, b1, context)
            %OPBYTESTRING1ASYNC
            %
            %   Input Arguments
            %     b1
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteString1, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                b1 (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(b1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                b2 = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = b2;
            end
            future = obj.iceInvokeAsync('opByteString1', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, b2] = opByteString2(obj, b1, context)
            %OPBYTESTRING2
            %
            %   Input Arguments
            %     b1
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     b2
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                b1 (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(b1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteString2', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            b2 = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opByteString2Async(obj, b1, context)
            %OPBYTESTRING2ASYNC
            %
            %   Input Arguments
            %     b1
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteString2, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                b1 (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(b1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                b2 = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = b2;
            end
            future = obj.iceInvokeAsync('opByteString2', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, b2] = opByteList1(obj, b1, context)
            %OPBYTELIST1
            %
            %   Input Arguments
            %     b1
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     b2
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                b1 (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(b1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteList1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            b2 = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opByteList1Async(obj, b1, context)
            %OPBYTELIST1ASYNC
            %
            %   Input Arguments
            %     b1
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteList1, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                b1 (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(b1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                b2 = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = b2;
            end
            future = obj.iceInvokeAsync('opByteList1', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, b2] = opByteList2(obj, b1, context)
            %OPBYTELIST2
            %
            %   Input Arguments
            %     b1
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     b2
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                b1 (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(b1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteList2', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            b2 = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opByteList2Async(obj, b1, context)
            %OPBYTELIST2ASYNC
            %
            %   Input Arguments
            %     b1
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteList2, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                b1 (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(b1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                b2 = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = b2;
            end
            future = obj.iceInvokeAsync('opByteList2', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, s2] = opStringList1(obj, s1, context)
            %OPSTRINGLIST1
            %
            %   Input Arguments
            %     s1
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            %     s2
            %       string vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                s1 (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringList1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            s2 = is_.readStringSeq();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opStringList1Async(obj, s1, context)
            %OPSTRINGLIST1ASYNC
            %
            %   Input Arguments
            %     s1
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringList1, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                s1 (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = is_.readStringSeq();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = s2;
            end
            future = obj.iceInvokeAsync('opStringList1', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, s2] = opStringList2(obj, s1, context)
            %OPSTRINGLIST2
            %
            %   Input Arguments
            %     s1
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            %     s2
            %       string vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                s1 (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringList2', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            s2 = is_.readStringSeq();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opStringList2Async(obj, s1, context)
            %OPSTRINGLIST2ASYNC
            %
            %   Input Arguments
            %     s1
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringList2, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                s1 (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = is_.readStringSeq();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = s2;
            end
            future = obj.iceInvokeAsync('opStringList2', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, s2] = opStringTuple1(obj, s1, context)
            %OPSTRINGTUPLE1
            %
            %   Input Arguments
            %     s1
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            %     s2
            %       string vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                s1 (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringTuple1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            s2 = is_.readStringSeq();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opStringTuple1Async(obj, s1, context)
            %OPSTRINGTUPLE1ASYNC
            %
            %   Input Arguments
            %     s1
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringTuple1, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                s1 (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = is_.readStringSeq();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = s2;
            end
            future = obj.iceInvokeAsync('opStringTuple1', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, s2] = opStringTuple2(obj, s1, context)
            %OPSTRINGTUPLE2
            %
            %   Input Arguments
            %     s1
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            %     s2
            %       string vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                s1 (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringTuple2', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            s2 = is_.readStringSeq();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opStringTuple2Async(obj, s1, context)
            %OPSTRINGTUPLE2ASYNC
            %
            %   Input Arguments
            %     s1
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringTuple2, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                s1 (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = is_.readStringSeq();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = s2;
            end
            future = obj.iceInvokeAsync('opStringTuple2', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function sendS(obj, val, context)
            %SENDS
            %
            %   Input Arguments
            %     val
            %       Test.S scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.CustomPrx
                val (1, 1) Test.S
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.S.ice_write(os_, val);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sendS', 0, false, os_, false, {}, context);
        end

        function future = sendSAsync(obj, val, context)
            %SENDSASYNC
            %
            %   Input Arguments
            %     val
            %       Test.S scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also sendS, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                val (1, 1) Test.S
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.S.ice_write(os_, val);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('sendS', 0, false, os_, 0, [], {}, context);
        end

        function sendC(obj, val, context)
            %SENDC
            %
            %   Input Arguments
            %     val
            %       Test.C scalar | empty array of Test.C
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.CustomPrx
                val Test.C {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(val);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sendC', 0, false, os_, false, {}, context);
        end

        function future = sendCAsync(obj, val, context)
            %SENDCASYNC
            %
            %   Input Arguments
            %     val
            %       Test.C scalar | empty array of Test.C
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also sendC, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                val Test.C {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(val);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('sendC', 0, false, os_, 0, [], {}, context);
        end

        function [returnValue, v2] = opBoolSeq(obj, v1, context)
            %OPBOOLSEQ
            %
            %   Input Arguments
            %     v1
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            %     v2
            %       logical vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                v1 (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(v1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            v2 = is_.readBoolSeq();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opBoolSeqAsync(obj, v1, context)
            %OPBOOLSEQASYNC
            %
            %   Input Arguments
            %     v1
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBoolSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                v1 (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(v1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = is_.readBoolSeq();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = v2;
            end
            future = obj.iceInvokeAsync('opBoolSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, v2] = opByteSeq(obj, v1, context)
            %OPBYTESEQ
            %
            %   Input Arguments
            %     v1
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     v2
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                v1 (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(v1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            v2 = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opByteSeqAsync(obj, v1, context)
            %OPBYTESEQASYNC
            %
            %   Input Arguments
            %     v1
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                v1 (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(v1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = v2;
            end
            future = obj.iceInvokeAsync('opByteSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, v2] = opShortSeq(obj, v1, context)
            %OPSHORTSEQ
            %
            %   Input Arguments
            %     v1
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 vector
            %     v2
            %       int16 vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                v1 (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(v1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            v2 = is_.readShortSeq();
            returnValue = is_.readShortSeq();
            is_.endEncapsulation();
        end

        function future = opShortSeqAsync(obj, v1, context)
            %OPSHORTSEQASYNC
            %
            %   Input Arguments
            %     v1
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opShortSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                v1 (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(v1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = is_.readShortSeq();
                returnValue = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = v2;
            end
            future = obj.iceInvokeAsync('opShortSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, v2] = opIntSeq(obj, v1, context)
            %OPINTSEQ
            %
            %   Input Arguments
            %     v1
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 vector
            %     v2
            %       int32 vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                v1 (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(v1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            v2 = is_.readIntSeq();
            returnValue = is_.readIntSeq();
            is_.endEncapsulation();
        end

        function future = opIntSeqAsync(obj, v1, context)
            %OPINTSEQASYNC
            %
            %   Input Arguments
            %     v1
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opIntSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                v1 (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(v1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = is_.readIntSeq();
                returnValue = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = v2;
            end
            future = obj.iceInvokeAsync('opIntSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, v2] = opLongSeq(obj, v1, context)
            %OPLONGSEQ
            %
            %   Input Arguments
            %     v1
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 vector
            %     v2
            %       int64 vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                v1 (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(v1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLongSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            v2 = is_.readLongSeq();
            returnValue = is_.readLongSeq();
            is_.endEncapsulation();
        end

        function future = opLongSeqAsync(obj, v1, context)
            %OPLONGSEQASYNC
            %
            %   Input Arguments
            %     v1
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLongSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                v1 (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(v1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = is_.readLongSeq();
                returnValue = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = v2;
            end
            future = obj.iceInvokeAsync('opLongSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, v2] = opFloatSeq(obj, v1, context)
            %OPFLOATSEQ
            %
            %   Input Arguments
            %     v1
            %       single vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       single vector
            %     v2
            %       single vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                v1 (1, :) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(v1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloatSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            v2 = is_.readFloatSeq();
            returnValue = is_.readFloatSeq();
            is_.endEncapsulation();
        end

        function future = opFloatSeqAsync(obj, v1, context)
            %OPFLOATSEQASYNC
            %
            %   Input Arguments
            %     v1
            %       single vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opFloatSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                v1 (1, :) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(v1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = is_.readFloatSeq();
                returnValue = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = v2;
            end
            future = obj.iceInvokeAsync('opFloatSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, v2] = opDoubleSeq(obj, v1, context)
            %OPDOUBLESEQ
            %
            %   Input Arguments
            %     v1
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       double vector
            %     v2
            %       double vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                v1 (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(v1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDoubleSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            v2 = is_.readDoubleSeq();
            returnValue = is_.readDoubleSeq();
            is_.endEncapsulation();
        end

        function future = opDoubleSeqAsync(obj, v1, context)
            %OPDOUBLESEQASYNC
            %
            %   Input Arguments
            %     v1
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opDoubleSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                v1 (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(v1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                v2 = is_.readDoubleSeq();
                returnValue = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = v2;
            end
            future = obj.iceInvokeAsync('opDoubleSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function returnValue = opBogusArrayNotExistsFactory(obj, context)
            %OPBOGUSARRAYNOTEXISTSFACTORY
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opBogusArrayNotExistsFactory', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opBogusArrayNotExistsFactoryAsync(obj, context)
            %OPBOGUSARRAYNOTEXISTSFACTORYASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBogusArrayNotExistsFactory, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opBogusArrayNotExistsFactory', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = opBogusArrayThrowFactory(obj, context)
            %OPBOGUSARRAYTHROWFACTORY
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opBogusArrayThrowFactory', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opBogusArrayThrowFactoryAsync(obj, context)
            %OPBOGUSARRAYTHROWFACTORYASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBogusArrayThrowFactory, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opBogusArrayThrowFactory', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = opBogusArrayType(obj, context)
            %OPBOGUSARRAYTYPE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opBogusArrayType', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opBogusArrayTypeAsync(obj, context)
            %OPBOGUSARRAYTYPEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBogusArrayType, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opBogusArrayType', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = opBogusArrayNoneFactory(obj, context)
            %OPBOGUSARRAYNONEFACTORY
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opBogusArrayNoneFactory', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opBogusArrayNoneFactoryAsync(obj, context)
            %OPBOGUSARRAYNONEFACTORYASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBogusArrayNoneFactory, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opBogusArrayNoneFactory', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = opBogusArraySignatureFactory(obj, context)
            %OPBOGUSARRAYSIGNATUREFACTORY
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opBogusArraySignatureFactory', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opBogusArraySignatureFactoryAsync(obj, context)
            %OPBOGUSARRAYSIGNATUREFACTORYASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBogusArraySignatureFactory, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opBogusArraySignatureFactory', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = opBogusArrayNoCallableFactory(obj, context)
            %OPBOGUSARRAYNOCALLABLEFACTORY
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            
            arguments
                obj (1, 1) Test.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opBogusArrayNoCallableFactory', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opBogusArrayNoCallableFactoryAsync(obj, context)
            %OPBOGUSARRAYNOCALLABLEFACTORYASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBogusArrayNoCallableFactory, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opBogusArrayNoCallableFactory', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = opD(obj, d, context)
            %OPD
            %
            %   Input Arguments
            %     d
            %       Test.D scalar | empty array of Test.D
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.D scalar | empty array of Test.D
            
            arguments
                obj (1, 1) Test.CustomPrx
                d Test.D {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(d);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.D');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = opDAsync(obj, d, context)
            %OPDASYNC
            %
            %   Input Arguments
            %     d
            %       Test.D scalar | empty array of Test.D
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opD, Ice.Future.
            
            arguments
                obj (1, 1) Test.CustomPrx
                d Test.D {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(d);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.D');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('opD', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.CustomPrx
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
                obj (1, 1) Test.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Custom';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.CustomPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Custom.
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
            %     r - A Test.CustomPrx scalar if the target object implements Slice interface 
            %       ::Test::Custom; otherwise, an empty array of Test.CustomPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.CustomPrx.ice_staticId(), 'Test.CustomPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.CustomPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.CustomPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.CustomPrx', varargin{:});
        end
    end
end
