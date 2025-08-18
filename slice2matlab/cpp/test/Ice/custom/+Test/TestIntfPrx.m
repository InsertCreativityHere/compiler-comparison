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
    %     opBoolArray
    %     opBoolArrayAsync - An asynchronous opBoolArray.
    %     opBoolBuffer
    %     opBoolBufferAsync - An asynchronous opBoolBuffer.
    %     opBoolList
    %     opBoolListAsync - An asynchronous opBoolList.
    %     opBoolSeq
    %     opBoolSeqAsync - An asynchronous opBoolSeq.
    %     opBufferStruct
    %     opBufferStructAsync - An asynchronous opBufferStruct.
    %     opByteArray
    %     opByteArrayAsync - An asynchronous opByteArray.
    %     opByteList
    %     opByteListAsync - An asynchronous opByteList.
    %     opByteSeq
    %     opByteSeqAsync - An asynchronous opByteSeq.
    %     opCList
    %     opCListAsync - An asynchronous opCList.
    %     opCSeq
    %     opCSeqAsync - An asynchronous opCSeq.
    %     opDPrxList
    %     opDPrxListAsync - An asynchronous opDPrxList.
    %     opDPrxSeq
    %     opDPrxSeqAsync - An asynchronous opDPrxSeq.
    %     opDoubleArray
    %     opDoubleArrayAsync - An asynchronous opDoubleArray.
    %     opEList
    %     opEListAsync - An asynchronous opEList.
    %     opESeq
    %     opESeqAsync - An asynchronous opESeq.
    %     opFixedList
    %     opFixedListAsync - An asynchronous opFixedList.
    %     opFixedSeq
    %     opFixedSeqAsync - An asynchronous opFixedSeq.
    %     opIntStringDict
    %     opIntStringDictAsync - An asynchronous opIntStringDict.
    %     opMyByteSeq
    %     opMyByteSeqAsync - An asynchronous opMyByteSeq.
    %     opOutArrayByteSeq
    %     opOutArrayByteSeqAsync - An asynchronous opOutArrayByteSeq.
    %     opShortArray
    %     opShortArrayAsync - An asynchronous opShortArray.
    %     opShortBuffer
    %     opShortBufferAsync - An asynchronous opShortBuffer.
    %     opStringList
    %     opStringListAsync - An asynchronous opStringList.
    %     opStringSeq
    %     opStringSeqAsync - An asynchronous opStringSeq.
    %     opStringStringDictList
    %     opStringStringDictListAsync - An asynchronous opStringStringDictList.
    %     opStringStringDictSeq
    %     opStringStringDictSeqAsync - An asynchronous opStringStringDictSeq.
    %     opVarDict
    %     opVarDictAsync - An asynchronous opVarDict.
    %     opVariableArray
    %     opVariableArrayAsync - An asynchronous opVariableArray.
    %     opVariableList
    %     opVariableListAsync - An asynchronous opVariableList.
    %     opVariableSeq
    %     opVariableSeqAsync - An asynchronous opVariableSeq.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   TestIntfPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntf.
    %     uncheckedCast - Creates a TestIntfPrx from another proxy without any validation.
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [returnValue, outSeq] = opShortArray(obj, inSeq, context)
            %OPSHORTARRAY
            %
            %   Input Arguments
            %     inSeq
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 vector
            %     outSeq
            %       int16 vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortArray', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readShortSeq();
            returnValue = is_.readShortSeq();
            is_.endEncapsulation();
        end

        function future = opShortArrayAsync(obj, inSeq, context)
            %OPSHORTARRAYASYNC
            %
            %   Input Arguments
            %     inSeq
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opShortArray, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readShortSeq();
                returnValue = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opShortArray', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opDoubleArray(obj, padding, inSeq, context)
            %OPDOUBLEARRAY
            %
            %   Input Arguments
            %     padding
            %       logical scalar
            %     inSeq
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       double vector
            %     outSeq
            %       double vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                padding (1, 1) logical
                inSeq (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(padding);
            os_.writeDoubleSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDoubleArray', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readDoubleSeq();
            returnValue = is_.readDoubleSeq();
            is_.endEncapsulation();
        end

        function future = opDoubleArrayAsync(obj, padding, inSeq, context)
            %OPDOUBLEARRAYASYNC
            %
            %   Input Arguments
            %     padding
            %       logical scalar
            %     inSeq
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opDoubleArray, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                padding (1, 1) logical
                inSeq (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(padding);
            os_.writeDoubleSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readDoubleSeq();
                returnValue = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opDoubleArray', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opBoolArray(obj, inSeq, context)
            %OPBOOLARRAY
            %
            %   Input Arguments
            %     inSeq
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            %     outSeq
            %       logical vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolArray', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readBoolSeq();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opBoolArrayAsync(obj, inSeq, context)
            %OPBOOLARRAYASYNC
            %
            %   Input Arguments
            %     inSeq
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBoolArray, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readBoolSeq();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opBoolArray', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opByteArray(obj, inSeq, context)
            %OPBYTEARRAY
            %
            %   Input Arguments
            %     inSeq
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     outSeq
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteArray', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opByteArrayAsync(obj, inSeq, context)
            %OPBYTEARRAYASYNC
            %
            %   Input Arguments
            %     inSeq
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteArray, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opByteArray', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opVariableArray(obj, inSeq, context)
            %OPVARIABLEARRAY
            %
            %   Input Arguments
            %     inSeq
            %       Test.Variable vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.Variable vector
            %     outSeq
            %       Test.Variable vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.Variable
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.VariableList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opVariableArray', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.VariableList.read(is_);
            returnValue = Test.VariableList.read(is_);
            is_.endEncapsulation();
        end

        function future = opVariableArrayAsync(obj, inSeq, context)
            %OPVARIABLEARRAYASYNC
            %
            %   Input Arguments
            %     inSeq
            %       Test.Variable vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opVariableArray, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.Variable
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.VariableList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.VariableList.read(is_);
                returnValue = Test.VariableList.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opVariableArray', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opBoolSeq(obj, inSeq, context)
            %OPBOOLSEQ
            %
            %   Input Arguments
            %     inSeq
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            %     outSeq
            %       logical vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readBoolSeq();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opBoolSeqAsync(obj, inSeq, context)
            %OPBOOLSEQASYNC
            %
            %   Input Arguments
            %     inSeq
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
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readBoolSeq();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opBoolSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opBoolList(obj, inSeq, context)
            %OPBOOLLIST
            %
            %   Input Arguments
            %     inSeq
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            %     outSeq
            %       logical vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolList', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readBoolSeq();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opBoolListAsync(obj, inSeq, context)
            %OPBOOLLISTASYNC
            %
            %   Input Arguments
            %     inSeq
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBoolList, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readBoolSeq();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opBoolList', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opByteSeq(obj, inSeq, context)
            %OPBYTESEQ
            %
            %   Input Arguments
            %     inSeq
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     outSeq
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opByteSeqAsync(obj, inSeq, context)
            %OPBYTESEQASYNC
            %
            %   Input Arguments
            %     inSeq
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
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opByteSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opByteList(obj, inSeq, context)
            %OPBYTELIST
            %
            %   Input Arguments
            %     inSeq
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     outSeq
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteList', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opByteListAsync(obj, inSeq, context)
            %OPBYTELISTASYNC
            %
            %   Input Arguments
            %     inSeq
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteList, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opByteList', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opMyByteSeq(obj, inSeq, context)
            %OPMYBYTESEQ
            %
            %   Input Arguments
            %     inSeq
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     outSeq
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyByteSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opMyByteSeqAsync(obj, inSeq, context)
            %OPMYBYTESEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyByteSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opMyByteSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opStringSeq(obj, inSeq, context)
            %OPSTRINGSEQ
            %
            %   Input Arguments
            %     inSeq
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            %     outSeq
            %       string vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readStringSeq();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opStringSeqAsync(obj, inSeq, context)
            %OPSTRINGSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readStringSeq();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opStringSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opStringList(obj, inSeq, context)
            %OPSTRINGLIST
            %
            %   Input Arguments
            %     inSeq
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            %     outSeq
            %       string vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringList', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readStringSeq();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opStringListAsync(obj, inSeq, context)
            %OPSTRINGLISTASYNC
            %
            %   Input Arguments
            %     inSeq
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringList, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readStringSeq();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opStringList', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opFixedSeq(obj, inSeq, context)
            %OPFIXEDSEQ
            %
            %   Input Arguments
            %     inSeq
            %       Test.Fixed vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.Fixed vector
            %     outSeq
            %       Test.Fixed vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.Fixed
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.FixedSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFixedSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.FixedSeq.read(is_);
            returnValue = Test.FixedSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = opFixedSeqAsync(obj, inSeq, context)
            %OPFIXEDSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       Test.Fixed vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opFixedSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.Fixed
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.FixedSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.FixedSeq.read(is_);
                returnValue = Test.FixedSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opFixedSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opFixedList(obj, inSeq, context)
            %OPFIXEDLIST
            %
            %   Input Arguments
            %     inSeq
            %       Test.Fixed vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.Fixed vector
            %     outSeq
            %       Test.Fixed vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.Fixed
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.FixedList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFixedList', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.FixedList.read(is_);
            returnValue = Test.FixedList.read(is_);
            is_.endEncapsulation();
        end

        function future = opFixedListAsync(obj, inSeq, context)
            %OPFIXEDLISTASYNC
            %
            %   Input Arguments
            %     inSeq
            %       Test.Fixed vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opFixedList, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.Fixed
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.FixedList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.FixedList.read(is_);
                returnValue = Test.FixedList.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opFixedList', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opVariableSeq(obj, inSeq, context)
            %OPVARIABLESEQ
            %
            %   Input Arguments
            %     inSeq
            %       Test.Variable vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.Variable vector
            %     outSeq
            %       Test.Variable vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.Variable
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.VariableSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opVariableSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.VariableSeq.read(is_);
            returnValue = Test.VariableSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = opVariableSeqAsync(obj, inSeq, context)
            %OPVARIABLESEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       Test.Variable vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opVariableSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.Variable
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.VariableSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.VariableSeq.read(is_);
                returnValue = Test.VariableSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opVariableSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opVariableList(obj, inSeq, context)
            %OPVARIABLELIST
            %
            %   Input Arguments
            %     inSeq
            %       Test.Variable vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.Variable vector
            %     outSeq
            %       Test.Variable vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.Variable
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.VariableList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opVariableList', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.VariableList.read(is_);
            returnValue = Test.VariableList.read(is_);
            is_.endEncapsulation();
        end

        function future = opVariableListAsync(obj, inSeq, context)
            %OPVARIABLELISTASYNC
            %
            %   Input Arguments
            %     inSeq
            %       Test.Variable vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opVariableList, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.Variable
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.VariableList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.VariableList.read(is_);
                returnValue = Test.VariableList.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opVariableList', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opStringStringDictSeq(obj, inSeq, context)
            %OPSTRINGSTRINGDICTSEQ
            %
            %   Input Arguments
            %     inSeq
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     outSeq
            %       cell array
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringDictSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringStringDictSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.StringStringDictSeq.read(is_);
            returnValue = Test.StringStringDictSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = opStringStringDictSeqAsync(obj, inSeq, context)
            %OPSTRINGSTRINGDICTSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringStringDictSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringDictSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.StringStringDictSeq.read(is_);
                returnValue = Test.StringStringDictSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opStringStringDictSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opStringStringDictList(obj, inSeq, context)
            %OPSTRINGSTRINGDICTLIST
            %
            %   Input Arguments
            %     inSeq
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     outSeq
            %       cell array
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringDictList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringStringDictList', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.StringStringDictList.read(is_);
            returnValue = Test.StringStringDictList.read(is_);
            is_.endEncapsulation();
        end

        function future = opStringStringDictListAsync(obj, inSeq, context)
            %OPSTRINGSTRINGDICTLISTASYNC
            %
            %   Input Arguments
            %     inSeq
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringStringDictList, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringDictList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.StringStringDictList.read(is_);
                returnValue = Test.StringStringDictList.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opStringStringDictList', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opESeq(obj, inSeq, context)
            %OPESEQ
            %
            %   Input Arguments
            %     inSeq
            %       Test.E vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.E vector
            %     outSeq
            %       Test.E vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.E
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ESeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opESeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.ESeq.read(is_);
            returnValue = Test.ESeq.read(is_);
            is_.endEncapsulation();
        end

        function future = opESeqAsync(obj, inSeq, context)
            %OPESEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       Test.E vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opESeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.E
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ESeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.ESeq.read(is_);
                returnValue = Test.ESeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opESeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opEList(obj, inSeq, context)
            %OPELIST
            %
            %   Input Arguments
            %     inSeq
            %       Test.E vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.E vector
            %     outSeq
            %       Test.E vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.E
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.EList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opEList', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.EList.read(is_);
            returnValue = Test.EList.read(is_);
            is_.endEncapsulation();
        end

        function future = opEListAsync(obj, inSeq, context)
            %OPELISTASYNC
            %
            %   Input Arguments
            %     inSeq
            %       Test.E vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opEList, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.E
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.EList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.EList.read(is_);
                returnValue = Test.EList.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opEList', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opDPrxSeq(obj, inSeq, context)
            %OPDPRXSEQ
            %
            %   Input Arguments
            %     inSeq
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     outSeq
            %       cell array
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.DPrxSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDPrxSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.DPrxSeq.read(is_);
            returnValue = Test.DPrxSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = opDPrxSeqAsync(obj, inSeq, context)
            %OPDPRXSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opDPrxSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.DPrxSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.DPrxSeq.read(is_);
                returnValue = Test.DPrxSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opDPrxSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opDPrxList(obj, inSeq, context)
            %OPDPRXLIST
            %
            %   Input Arguments
            %     inSeq
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     outSeq
            %       cell array
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.DPrxList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDPrxList', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.DPrxList.read(is_);
            returnValue = Test.DPrxList.read(is_);
            is_.endEncapsulation();
        end

        function future = opDPrxListAsync(obj, inSeq, context)
            %OPDPRXLISTASYNC
            %
            %   Input Arguments
            %     inSeq
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opDPrxList, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.DPrxList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.DPrxList.read(is_);
                returnValue = Test.DPrxList.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opDPrxList', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opCSeq(obj, inSeq, context)
            %OPCSEQ
            %
            %   Input Arguments
            %     inSeq
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     outSeq
            %       cell array
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.CSeq.write(os_, inSeq);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.CSeq.read(is_);
            returnValue = Test.CSeq.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            outSeq = Test.CSeq.convert(outSeq);
            returnValue = Test.CSeq.convert(returnValue);
        end

        function future = opCSeqAsync(obj, inSeq, context)
            %OPCSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opCSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.CSeq.write(os_, inSeq);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.CSeq.read(is_);
                returnValue = Test.CSeq.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.CSeq.convert(returnValue);
                varargout{2} = Test.CSeq.convert(outSeq);
            end
            future = obj.iceInvokeAsync('opCSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opCList(obj, inSeq, context)
            %OPCLIST
            %
            %   Input Arguments
            %     inSeq
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     outSeq
            %       cell array
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.CList.write(os_, inSeq);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCList', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.CList.read(is_);
            returnValue = Test.CList.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            outSeq = Test.CList.convert(outSeq);
            returnValue = Test.CList.convert(returnValue);
        end

        function future = opCListAsync(obj, inSeq, context)
            %OPCLISTASYNC
            %
            %   Input Arguments
            %     inSeq
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opCList, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.CList.write(os_, inSeq);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.CList.read(is_);
                returnValue = Test.CList.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.CList.convert(returnValue);
                varargout{2} = Test.CList.convert(outSeq);
            end
            future = obj.iceInvokeAsync('opCList', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function copy = opOutArrayByteSeq(obj, org, context)
            %OPOUTARRAYBYTESEQ
            %
            %   Input Arguments
            %     org
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     copy
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                org (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(org);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOutArrayByteSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            copy = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opOutArrayByteSeqAsync(obj, org, context)
            %OPOUTARRAYBYTESEQASYNC
            %
            %   Input Arguments
            %     org
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOutArrayByteSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                org (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(org);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                copy = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = copy;
            end
            future = obj.iceInvokeAsync('opOutArrayByteSeq', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function [returnValue, odict] = opIntStringDict(obj, idict, context)
            %OPINTSTRINGDICT
            %
            %   Input Arguments
            %     idict
            %       int32, string) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32, string) scalar
            %     odict
            %       int32, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                idict (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.IntStringDict.write(os_, idict);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntStringDict', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            odict = Test.IntStringDict.read(is_);
            returnValue = Test.IntStringDict.read(is_);
            is_.endEncapsulation();
        end

        function future = opIntStringDictAsync(obj, idict, context)
            %OPINTSTRINGDICTASYNC
            %
            %   Input Arguments
            %     idict
            %       int32, string) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opIntStringDict, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                idict (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.IntStringDict.write(os_, idict);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                odict = Test.IntStringDict.read(is_);
                returnValue = Test.IntStringDict.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = odict;
            end
            future = obj.iceInvokeAsync('opIntStringDict', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, odict] = opVarDict(obj, idict, context)
            %OPVARDICT
            %
            %   Input Arguments
            %     idict
            %       string, int32) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64, int64) scalar
            %     odict
            %       string, int32) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                idict (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringIntDict.write(os_, idict);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opVarDict', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            odict = Test.StringIntDict.read(is_);
            returnValue = Test.LongLongDict.read(is_);
            is_.endEncapsulation();
        end

        function future = opVarDictAsync(obj, idict, context)
            %OPVARDICTASYNC
            %
            %   Input Arguments
            %     idict
            %       string, int32) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opVarDict, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                idict (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringIntDict.write(os_, idict);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                odict = Test.StringIntDict.read(is_);
                returnValue = Test.LongLongDict.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = odict;
            end
            future = obj.iceInvokeAsync('opVarDict', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outS] = opShortBuffer(obj, inS, context)
            %OPSHORTBUFFER
            %
            %   Input Arguments
            %     inS
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 vector
            %     outS
            %       int16 vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inS (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(inS);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortBuffer', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outS = is_.readShortSeq();
            returnValue = is_.readShortSeq();
            is_.endEncapsulation();
        end

        function future = opShortBufferAsync(obj, inS, context)
            %OPSHORTBUFFERASYNC
            %
            %   Input Arguments
            %     inS
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opShortBuffer, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inS (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(inS);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outS = is_.readShortSeq();
                returnValue = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outS;
            end
            future = obj.iceInvokeAsync('opShortBuffer', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outS] = opBoolBuffer(obj, inS, context)
            %OPBOOLBUFFER
            %
            %   Input Arguments
            %     inS
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            %     outS
            %       logical vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inS (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(inS);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolBuffer', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outS = is_.readBoolSeq();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opBoolBufferAsync(obj, inS, context)
            %OPBOOLBUFFERASYNC
            %
            %   Input Arguments
            %     inS
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBoolBuffer, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inS (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(inS);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outS = is_.readBoolSeq();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outS;
            end
            future = obj.iceInvokeAsync('opBoolBuffer', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function returnValue = opBufferStruct(obj, s, context)
            %OPBUFFERSTRUCT
            %
            %   Input Arguments
            %     s
            %       Test.BufferStruct scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.BufferStruct scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                s (1, 1) Test.BufferStruct
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.BufferStruct.ice_write(os_, s);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBufferStruct', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.BufferStruct.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opBufferStructAsync(obj, s, context)
            %OPBUFFERSTRUCTASYNC
            %
            %   Input Arguments
            %     s
            %       Test.BufferStruct scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBufferStruct, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                s (1, 1) Test.BufferStruct
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.BufferStruct.ice_write(os_, s);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.BufferStruct.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opBufferStruct', 0, true, os_, 1, @unmarshal, {}, context);
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
end
