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
    %     opAArray
    %     opAArrayAsync - An asynchronous opAArray.
    %     opAList
    %     opAListAsync - An asynchronous opAList.
    %     opASeq
    %     opASeqAsync - An asynchronous opASeq.
    %     opBoolSeq
    %     opBoolSeqAsync - An asynchronous opBoolSeq.
    %     opByteBufferSeq
    %     opByteBufferSeqAsync - An asynchronous opByteBufferSeq.
    %     opByteSeq
    %     opByteSeqAsync - An asynchronous opByteSeq.
    %     opDSeq
    %     opDSeqAsync - An asynchronous opDSeq.
    %     opDoubleBufferSeq
    %     opDoubleBufferSeqAsync - An asynchronous opDoubleBufferSeq.
    %     opDoubleSeq
    %     opDoubleSeqAsync - An asynchronous opDoubleSeq.
    %     opESeq
    %     opESeqAsync - An asynchronous opESeq.
    %     opFloatBufferSeq
    %     opFloatBufferSeqAsync - An asynchronous opFloatBufferSeq.
    %     opFloatSeq
    %     opFloatSeqAsync - An asynchronous opFloatSeq.
    %     opIntBufferSeq
    %     opIntBufferSeqAsync - An asynchronous opIntBufferSeq.
    %     opIntSeq
    %     opIntSeqAsync - An asynchronous opIntSeq.
    %     opLongBufferSeq
    %     opLongBufferSeqAsync - An asynchronous opLongBufferSeq.
    %     opLongSeq
    %     opLongSeqAsync - An asynchronous opLongSeq.
    %     opOptAArray
    %     opOptAArrayAsync - An asynchronous opOptAArray.
    %     opOptAList
    %     opOptAListAsync - An asynchronous opOptAList.
    %     opOptASeq
    %     opOptASeqAsync - An asynchronous opOptASeq.
    %     opOptBoolSeq
    %     opOptBoolSeqAsync - An asynchronous opOptBoolSeq.
    %     opOptByteBufferSeq
    %     opOptByteBufferSeqAsync - An asynchronous opOptByteBufferSeq.
    %     opOptByteSeq
    %     opOptByteSeqAsync - An asynchronous opOptByteSeq.
    %     opOptDSeq
    %     opOptDSeqAsync - An asynchronous opOptDSeq.
    %     opOptDoubleBufferSeq
    %     opOptDoubleBufferSeqAsync - An asynchronous opOptDoubleBufferSeq.
    %     opOptDoubleSeq
    %     opOptDoubleSeqAsync - An asynchronous opOptDoubleSeq.
    %     opOptESeq
    %     opOptESeqAsync - An asynchronous opOptESeq.
    %     opOptFloatBufferSeq
    %     opOptFloatBufferSeqAsync - An asynchronous opOptFloatBufferSeq.
    %     opOptFloatSeq
    %     opOptFloatSeqAsync - An asynchronous opOptFloatSeq.
    %     opOptIntBufferSeq
    %     opOptIntBufferSeqAsync - An asynchronous opOptIntBufferSeq.
    %     opOptIntSeq
    %     opOptIntSeqAsync - An asynchronous opOptIntSeq.
    %     opOptLongBufferSeq
    %     opOptLongBufferSeqAsync - An asynchronous opOptLongBufferSeq.
    %     opOptLongSeq
    %     opOptLongSeqAsync - An asynchronous opOptLongSeq.
    %     opOptSSeq
    %     opOptSSeqAsync - An asynchronous opOptSSeq.
    %     opOptShortBufferSeq
    %     opOptShortBufferSeqAsync - An asynchronous opOptShortBufferSeq.
    %     opOptShortSeq
    %     opOptShortSeqAsync - An asynchronous opOptShortSeq.
    %     opOptStringSeq
    %     opOptStringSeqAsync - An asynchronous opOptStringSeq.
    %     opOptStringSeqSeq
    %     opOptStringSeqSeqAsync - An asynchronous opOptStringSeqSeq.
    %     opSSeq
    %     opSSeqAsync - An asynchronous opSSeq.
    %     opShortBufferSeq
    %     opShortBufferSeqAsync - An asynchronous opShortBufferSeq.
    %     opShortSeq
    %     opShortSeqAsync - An asynchronous opShortSeq.
    %     opStringSeq
    %     opStringSeqAsync - An asynchronous opStringSeq.
    %     opStringSeqSeq
    %     opStringSeqSeqAsync - An asynchronous opStringSeqSeq.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   TestIntfPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntf.
    %     uncheckedCast - Creates a TestIntfPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [returnValue, outSeq] = opASeq(obj, inSeq, context)
            %OPASEQ
            %
            %   Input Arguments
            %     inSeq
            %       Test.A vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.A vector
            %     outSeq
            %       Test.A vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.A
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ASeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opASeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.ASeq.read(is_);
            returnValue = Test.ASeq.read(is_);
            is_.endEncapsulation();
        end

        function future = opASeqAsync(obj, inSeq, context)
            %OPASEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       Test.A vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opASeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.A
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ASeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.ASeq.read(is_);
                returnValue = Test.ASeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opASeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opAArray(obj, inSeq, context)
            %OPAARRAY
            %
            %   Input Arguments
            %     inSeq
            %       Test.A vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.A vector
            %     outSeq
            %       Test.A vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.A
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AArray.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAArray', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.AArray.read(is_);
            returnValue = Test.AArray.read(is_);
            is_.endEncapsulation();
        end

        function future = opAArrayAsync(obj, inSeq, context)
            %OPAARRAYASYNC
            %
            %   Input Arguments
            %     inSeq
            %       Test.A vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opAArray, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.A
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AArray.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.AArray.read(is_);
                returnValue = Test.AArray.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opAArray', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opAList(obj, inSeq, context)
            %OPALIST
            %
            %   Input Arguments
            %     inSeq
            %       Test.A vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.A vector
            %     outSeq
            %       Test.A vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.A
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAList', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.AList.read(is_);
            returnValue = Test.AList.read(is_);
            is_.endEncapsulation();
        end

        function future = opAListAsync(obj, inSeq, context)
            %OPALISTASYNC
            %
            %   Input Arguments
            %     inSeq
            %       Test.A vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opAList, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.A
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AList.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.AList.read(is_);
                returnValue = Test.AList.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opAList', 0, true, os_, 2, @unmarshal, {}, context);
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

        function [returnValue, outSeq] = opShortSeq(obj, inSeq, context)
            %OPSHORTSEQ
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
            is_ = obj.iceInvoke('opShortSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readShortSeq();
            returnValue = is_.readShortSeq();
            is_.endEncapsulation();
        end

        function future = opShortSeqAsync(obj, inSeq, context)
            %OPSHORTSEQASYNC
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
            %   See also opShortSeq, Ice.Future.
            
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
            future = obj.iceInvokeAsync('opShortSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opIntSeq(obj, inSeq, context)
            %OPINTSEQ
            %
            %   Input Arguments
            %     inSeq
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 vector
            %     outSeq
            %       int32 vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readIntSeq();
            returnValue = is_.readIntSeq();
            is_.endEncapsulation();
        end

        function future = opIntSeqAsync(obj, inSeq, context)
            %OPINTSEQASYNC
            %
            %   Input Arguments
            %     inSeq
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
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readIntSeq();
                returnValue = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opIntSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opLongSeq(obj, inSeq, context)
            %OPLONGSEQ
            %
            %   Input Arguments
            %     inSeq
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 vector
            %     outSeq
            %       int64 vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLongSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readLongSeq();
            returnValue = is_.readLongSeq();
            is_.endEncapsulation();
        end

        function future = opLongSeqAsync(obj, inSeq, context)
            %OPLONGSEQASYNC
            %
            %   Input Arguments
            %     inSeq
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
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readLongSeq();
                returnValue = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opLongSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opFloatSeq(obj, inSeq, context)
            %OPFLOATSEQ
            %
            %   Input Arguments
            %     inSeq
            %       single vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       single vector
            %     outSeq
            %       single vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloatSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readFloatSeq();
            returnValue = is_.readFloatSeq();
            is_.endEncapsulation();
        end

        function future = opFloatSeqAsync(obj, inSeq, context)
            %OPFLOATSEQASYNC
            %
            %   Input Arguments
            %     inSeq
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
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readFloatSeq();
                returnValue = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opFloatSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opDoubleSeq(obj, inSeq, context)
            %OPDOUBLESEQ
            %
            %   Input Arguments
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
                inSeq (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDoubleSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readDoubleSeq();
            returnValue = is_.readDoubleSeq();
            is_.endEncapsulation();
        end

        function future = opDoubleSeqAsync(obj, inSeq, context)
            %OPDOUBLESEQASYNC
            %
            %   Input Arguments
            %     inSeq
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
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
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
            future = obj.iceInvokeAsync('opDoubleSeq', 0, true, os_, 2, @unmarshal, {}, context);
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

        function [returnValue, outSeq] = opSSeq(obj, inSeq, context)
            %OPSSEQ
            %
            %   Input Arguments
            %     inSeq
            %       Test.S vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.S vector
            %     outSeq
            %       Test.S vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.S
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.SSeq.read(is_);
            returnValue = Test.SSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = opSSeqAsync(obj, inSeq, context)
            %OPSSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       Test.S vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) Test.S
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.SSeq.read(is_);
                returnValue = Test.SSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opSSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opDSeq(obj, inSeq, context)
            %OPDSEQ
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
            Test.DSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.DSeq.read(is_);
            returnValue = Test.DSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = opDSeqAsync(obj, inSeq, context)
            %OPDSEQASYNC
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
            %   See also opDSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.DSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.DSeq.read(is_);
                returnValue = Test.DSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opDSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opStringSeqSeq(obj, inSeq, context)
            %OPSTRINGSEQSEQ
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
            Test.StringSeqSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringSeqSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = Test.StringSeqSeq.read(is_);
            returnValue = Test.StringSeqSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = opStringSeqSeqAsync(obj, inSeq, context)
            %OPSTRINGSEQSEQASYNC
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
            %   See also opStringSeqSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringSeqSeq.write(os_, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = Test.StringSeqSeq.read(is_);
                returnValue = Test.StringSeqSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opStringSeqSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opByteBufferSeq(obj, inSeq, context)
            %OPBYTEBUFFERSEQ
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
            is_ = obj.iceInvoke('opByteBufferSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opByteBufferSeqAsync(obj, inSeq, context)
            %OPBYTEBUFFERSEQASYNC
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
            %   See also opByteBufferSeq, Ice.Future.
            
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
            future = obj.iceInvokeAsync('opByteBufferSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opShortBufferSeq(obj, inSeq, context)
            %OPSHORTBUFFERSEQ
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
            is_ = obj.iceInvoke('opShortBufferSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readShortSeq();
            returnValue = is_.readShortSeq();
            is_.endEncapsulation();
        end

        function future = opShortBufferSeqAsync(obj, inSeq, context)
            %OPSHORTBUFFERSEQASYNC
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
            %   See also opShortBufferSeq, Ice.Future.
            
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
            future = obj.iceInvokeAsync('opShortBufferSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opIntBufferSeq(obj, inSeq, context)
            %OPINTBUFFERSEQ
            %
            %   Input Arguments
            %     inSeq
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 vector
            %     outSeq
            %       int32 vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntBufferSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readIntSeq();
            returnValue = is_.readIntSeq();
            is_.endEncapsulation();
        end

        function future = opIntBufferSeqAsync(obj, inSeq, context)
            %OPINTBUFFERSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opIntBufferSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readIntSeq();
                returnValue = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opIntBufferSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opLongBufferSeq(obj, inSeq, context)
            %OPLONGBUFFERSEQ
            %
            %   Input Arguments
            %     inSeq
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 vector
            %     outSeq
            %       int64 vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLongBufferSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readLongSeq();
            returnValue = is_.readLongSeq();
            is_.endEncapsulation();
        end

        function future = opLongBufferSeqAsync(obj, inSeq, context)
            %OPLONGBUFFERSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLongBufferSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readLongSeq();
                returnValue = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opLongBufferSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opFloatBufferSeq(obj, inSeq, context)
            %OPFLOATBUFFERSEQ
            %
            %   Input Arguments
            %     inSeq
            %       single vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       single vector
            %     outSeq
            %       single vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloatBufferSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readFloatSeq();
            returnValue = is_.readFloatSeq();
            is_.endEncapsulation();
        end

        function future = opFloatBufferSeqAsync(obj, inSeq, context)
            %OPFLOATBUFFERSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       single vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opFloatBufferSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                outSeq = is_.readFloatSeq();
                returnValue = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opFloatBufferSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opDoubleBufferSeq(obj, inSeq, context)
            %OPDOUBLEBUFFERSEQ
            %
            %   Input Arguments
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
                inSeq (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDoubleBufferSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            outSeq = is_.readDoubleSeq();
            returnValue = is_.readDoubleSeq();
            is_.endEncapsulation();
        end

        function future = opDoubleBufferSeqAsync(obj, inSeq, context)
            %OPDOUBLEBUFFERSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opDoubleBufferSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
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
            future = obj.iceInvokeAsync('opDoubleBufferSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptASeq(obj, inSeq, context)
            %OPOPTASEQ
            %
            %   Input Arguments
            %     inSeq
            %       Test.A vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.A vector | Ice.Unset
            %     outSeq
            %       Test.A vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ASeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptASeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.ASeq.readOpt(is_, 1);
            outSeq = Test.ASeq.readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opOptASeqAsync(obj, inSeq, context)
            %OPOPTASEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       Test.A vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptASeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ASeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.ASeq.readOpt(is_, 1);
                outSeq = Test.ASeq.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptASeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptAArray(obj, inSeq, context)
            %OPOPTAARRAY
            %
            %   Input Arguments
            %     inSeq
            %       Test.A vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.A vector | Ice.Unset
            %     outSeq
            %       Test.A vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AArray.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptAArray', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.AArray.readOpt(is_, 1);
            outSeq = Test.AArray.readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opOptAArrayAsync(obj, inSeq, context)
            %OPOPTAARRAYASYNC
            %
            %   Input Arguments
            %     inSeq
            %       Test.A vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptAArray, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AArray.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.AArray.readOpt(is_, 1);
                outSeq = Test.AArray.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptAArray', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptAList(obj, inSeq, context)
            %OPOPTALIST
            %
            %   Input Arguments
            %     inSeq
            %       Test.A vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.A vector | Ice.Unset
            %     outSeq
            %       Test.A vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AList.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptAList', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.AList.readOpt(is_, 1);
            outSeq = Test.AList.readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opOptAListAsync(obj, inSeq, context)
            %OPOPTALISTASYNC
            %
            %   Input Arguments
            %     inSeq
            %       Test.A vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptAList, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AList.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.AList.readOpt(is_, 1);
                outSeq = Test.AList.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptAList', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptBoolSeq(obj, inSeq, context)
            %OPOPTBOOLSEQ
            %
            %   Input Arguments
            %     inSeq
            %       logical vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector | Ice.Unset
            %     outSeq
            %       logical vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptBoolSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBoolSeqOpt(1);
            outSeq = is_.readBoolSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opOptBoolSeqAsync(obj, inSeq, context)
            %OPOPTBOOLSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       logical vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptBoolSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBoolSeqOpt(1);
                outSeq = is_.readBoolSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptBoolSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptByteSeq(obj, inSeq, context)
            %OPOPTBYTESEQ
            %
            %   Input Arguments
            %     inSeq
            %       uint8 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector | Ice.Unset
            %     outSeq
            %       uint8 vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptByteSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readByteSeqOpt(1);
            outSeq = is_.readByteSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opOptByteSeqAsync(obj, inSeq, context)
            %OPOPTBYTESEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       uint8 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptByteSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readByteSeqOpt(1);
                outSeq = is_.readByteSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptByteSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptShortSeq(obj, inSeq, context)
            %OPOPTSHORTSEQ
            %
            %   Input Arguments
            %     inSeq
            %       int16 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 vector | Ice.Unset
            %     outSeq
            %       int16 vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptShortSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readShortSeqOpt(1);
            outSeq = is_.readShortSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opOptShortSeqAsync(obj, inSeq, context)
            %OPOPTSHORTSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       int16 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptShortSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readShortSeqOpt(1);
                outSeq = is_.readShortSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptShortSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptIntSeq(obj, inSeq, context)
            %OPOPTINTSEQ
            %
            %   Input Arguments
            %     inSeq
            %       int32 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 vector | Ice.Unset
            %     outSeq
            %       int32 vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptIntSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readIntSeqOpt(1);
            outSeq = is_.readIntSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opOptIntSeqAsync(obj, inSeq, context)
            %OPOPTINTSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       int32 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptIntSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readIntSeqOpt(1);
                outSeq = is_.readIntSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptIntSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptLongSeq(obj, inSeq, context)
            %OPOPTLONGSEQ
            %
            %   Input Arguments
            %     inSeq
            %       int64 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 vector | Ice.Unset
            %     outSeq
            %       int64 vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptLongSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readLongSeqOpt(1);
            outSeq = is_.readLongSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opOptLongSeqAsync(obj, inSeq, context)
            %OPOPTLONGSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       int64 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptLongSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readLongSeqOpt(1);
                outSeq = is_.readLongSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptLongSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptFloatSeq(obj, inSeq, context)
            %OPOPTFLOATSEQ
            %
            %   Input Arguments
            %     inSeq
            %       single vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       single vector | Ice.Unset
            %     outSeq
            %       single vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptFloatSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readFloatSeqOpt(1);
            outSeq = is_.readFloatSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opOptFloatSeqAsync(obj, inSeq, context)
            %OPOPTFLOATSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       single vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptFloatSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readFloatSeqOpt(1);
                outSeq = is_.readFloatSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptFloatSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptDoubleSeq(obj, inSeq, context)
            %OPOPTDOUBLESEQ
            %
            %   Input Arguments
            %     inSeq
            %       double vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       double vector | Ice.Unset
            %     outSeq
            %       double vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptDoubleSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readDoubleSeqOpt(1);
            outSeq = is_.readDoubleSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opOptDoubleSeqAsync(obj, inSeq, context)
            %OPOPTDOUBLESEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       double vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptDoubleSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readDoubleSeqOpt(1);
                outSeq = is_.readDoubleSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptDoubleSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptStringSeq(obj, inSeq, context)
            %OPOPTSTRINGSEQ
            %
            %   Input Arguments
            %     inSeq
            %       string vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector | Ice.Unset
            %     outSeq
            %       string vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptStringSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeqOpt(1);
            outSeq = is_.readStringSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opOptStringSeqAsync(obj, inSeq, context)
            %OPOPTSTRINGSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       string vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptStringSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeqOpt(1);
                outSeq = is_.readStringSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptStringSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptESeq(obj, inSeq, context)
            %OPOPTESEQ
            %
            %   Input Arguments
            %     inSeq
            %       Test.E vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.E vector | Ice.Unset
            %     outSeq
            %       Test.E vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ESeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptESeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.ESeq.readOpt(is_, 1);
            outSeq = Test.ESeq.readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opOptESeqAsync(obj, inSeq, context)
            %OPOPTESEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       Test.E vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptESeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ESeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.ESeq.readOpt(is_, 1);
                outSeq = Test.ESeq.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptESeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptSSeq(obj, inSeq, context)
            %OPOPTSSEQ
            %
            %   Input Arguments
            %     inSeq
            %       Test.S vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.S vector | Ice.Unset
            %     outSeq
            %       Test.S vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SSeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptSSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.SSeq.readOpt(is_, 1);
            outSeq = Test.SSeq.readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opOptSSeqAsync(obj, inSeq, context)
            %OPOPTSSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       Test.S vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptSSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SSeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.SSeq.readOpt(is_, 1);
                outSeq = Test.SSeq.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptSSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptDSeq(obj, inSeq, context)
            %OPOPTDSEQ
            %
            %   Input Arguments
            %     inSeq
            %       cell array | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array | Ice.Unset
            %     outSeq
            %       cell array | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.DSeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptDSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.DSeq.readOpt(is_, 1);
            outSeq = Test.DSeq.readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opOptDSeqAsync(obj, inSeq, context)
            %OPOPTDSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       cell array | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptDSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.DSeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.DSeq.readOpt(is_, 1);
                outSeq = Test.DSeq.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptDSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptStringSeqSeq(obj, inSeq, context)
            %OPOPTSTRINGSEQSEQ
            %
            %   Input Arguments
            %     inSeq
            %       cell array | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array | Ice.Unset
            %     outSeq
            %       cell array | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringSeqSeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptStringSeqSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.StringSeqSeq.readOpt(is_, 1);
            outSeq = Test.StringSeqSeq.readOpt(is_, 3);
            is_.endEncapsulation();
        end

        function future = opOptStringSeqSeqAsync(obj, inSeq, context)
            %OPOPTSTRINGSEQSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       cell array | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptStringSeqSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringSeqSeq.writeOpt(os_, 2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.StringSeqSeq.readOpt(is_, 1);
                outSeq = Test.StringSeqSeq.readOpt(is_, 3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptStringSeqSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptByteBufferSeq(obj, inSeq, context)
            %OPOPTBYTEBUFFERSEQ
            %
            %   Input Arguments
            %     inSeq
            %       uint8 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector | Ice.Unset
            %     outSeq
            %       uint8 vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptByteBufferSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readByteSeqOpt(1);
            outSeq = is_.readByteSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opOptByteBufferSeqAsync(obj, inSeq, context)
            %OPOPTBYTEBUFFERSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       uint8 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptByteBufferSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readByteSeqOpt(1);
                outSeq = is_.readByteSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptByteBufferSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptShortBufferSeq(obj, inSeq, context)
            %OPOPTSHORTBUFFERSEQ
            %
            %   Input Arguments
            %     inSeq
            %       int16 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 vector | Ice.Unset
            %     outSeq
            %       int16 vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptShortBufferSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readShortSeqOpt(1);
            outSeq = is_.readShortSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opOptShortBufferSeqAsync(obj, inSeq, context)
            %OPOPTSHORTBUFFERSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       int16 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptShortBufferSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readShortSeqOpt(1);
                outSeq = is_.readShortSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptShortBufferSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptIntBufferSeq(obj, inSeq, context)
            %OPOPTINTBUFFERSEQ
            %
            %   Input Arguments
            %     inSeq
            %       int32 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 vector | Ice.Unset
            %     outSeq
            %       int32 vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptIntBufferSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readIntSeqOpt(1);
            outSeq = is_.readIntSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opOptIntBufferSeqAsync(obj, inSeq, context)
            %OPOPTINTBUFFERSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       int32 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptIntBufferSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readIntSeqOpt(1);
                outSeq = is_.readIntSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptIntBufferSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptLongBufferSeq(obj, inSeq, context)
            %OPOPTLONGBUFFERSEQ
            %
            %   Input Arguments
            %     inSeq
            %       int64 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 vector | Ice.Unset
            %     outSeq
            %       int64 vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptLongBufferSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readLongSeqOpt(1);
            outSeq = is_.readLongSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opOptLongBufferSeqAsync(obj, inSeq, context)
            %OPOPTLONGBUFFERSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       int64 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptLongBufferSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readLongSeqOpt(1);
                outSeq = is_.readLongSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptLongBufferSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptFloatBufferSeq(obj, inSeq, context)
            %OPOPTFLOATBUFFERSEQ
            %
            %   Input Arguments
            %     inSeq
            %       single vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       single vector | Ice.Unset
            %     outSeq
            %       single vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptFloatBufferSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readFloatSeqOpt(1);
            outSeq = is_.readFloatSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opOptFloatBufferSeqAsync(obj, inSeq, context)
            %OPOPTFLOATBUFFERSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       single vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptFloatBufferSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readFloatSeqOpt(1);
                outSeq = is_.readFloatSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptFloatBufferSeq', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, outSeq] = opOptDoubleBufferSeq(obj, inSeq, context)
            %OPOPTDOUBLEBUFFERSEQ
            %
            %   Input Arguments
            %     inSeq
            %       double vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       double vector | Ice.Unset
            %     outSeq
            %       double vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptDoubleBufferSeq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readDoubleSeqOpt(1);
            outSeq = is_.readDoubleSeqOpt(3);
            is_.endEncapsulation();
        end

        function future = opOptDoubleBufferSeqAsync(obj, inSeq, context)
            %OPOPTDOUBLEBUFFERSEQASYNC
            %
            %   Input Arguments
            %     inSeq
            %       double vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptDoubleBufferSeq, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                inSeq (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeqOpt(2, inSeq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readDoubleSeqOpt(1);
                outSeq = is_.readDoubleSeqOpt(3);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = outSeq;
            end
            future = obj.iceInvokeAsync('opOptDoubleBufferSeq', 0, true, os_, 2, @unmarshal, {}, context);
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
