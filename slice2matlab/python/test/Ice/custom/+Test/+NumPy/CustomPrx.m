classdef CustomPrx < Ice.ObjectPrx
    %CUSTOMPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.NumPy.CustomPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   CustomPrx Methods:
    %     opBogusNumpyArrayType
    %     opBogusNumpyArrayTypeAsync - An asynchronous opBogusNumpyArrayType.
    %     opBoolMatrix
    %     opBoolMatrixAsync - An asynchronous opBoolMatrix.
    %     opBoolSeq
    %     opBoolSeqAsync - An asynchronous opBoolSeq.
    %     opByteMatrix
    %     opByteMatrixAsync - An asynchronous opByteMatrix.
    %     opByteSeq
    %     opByteSeqAsync - An asynchronous opByteSeq.
    %     opComplex128Seq
    %     opComplex128SeqAsync - An asynchronous opComplex128Seq.
    %     opD
    %     opDAsync - An asynchronous opD.
    %     opDoubleMatrix
    %     opDoubleMatrixAsync - An asynchronous opDoubleMatrix.
    %     opDoubleSeq
    %     opDoubleSeqAsync - An asynchronous opDoubleSeq.
    %     opFloatMatrix
    %     opFloatMatrixAsync - An asynchronous opFloatMatrix.
    %     opFloatSeq
    %     opFloatSeqAsync - An asynchronous opFloatSeq.
    %     opIntMatrix
    %     opIntMatrixAsync - An asynchronous opIntMatrix.
    %     opIntSeq
    %     opIntSeqAsync - An asynchronous opIntSeq.
    %     opLongMatrix
    %     opLongMatrixAsync - An asynchronous opLongMatrix.
    %     opLongSeq
    %     opLongSeqAsync - An asynchronous opLongSeq.
    %     opShortMatrix
    %     opShortMatrixAsync - An asynchronous opShortMatrix.
    %     opShortSeq
    %     opShortSeqAsync - An asynchronous opShortSeq.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   CustomPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::NumPy::Custom.
    %     uncheckedCast - Creates a CustomPrx from another proxy without any validation.
    %
    %   Generated from TestNumPy.ice by slice2matlab version 3.8.0-alpha.0

    methods
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
                obj (1, 1) Test.NumPy.CustomPrx
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
                obj (1, 1) Test.NumPy.CustomPrx
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
                obj (1, 1) Test.NumPy.CustomPrx
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
                obj (1, 1) Test.NumPy.CustomPrx
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
                obj (1, 1) Test.NumPy.CustomPrx
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
                obj (1, 1) Test.NumPy.CustomPrx
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
                obj (1, 1) Test.NumPy.CustomPrx
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
                obj (1, 1) Test.NumPy.CustomPrx
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
                obj (1, 1) Test.NumPy.CustomPrx
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
                obj (1, 1) Test.NumPy.CustomPrx
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
                obj (1, 1) Test.NumPy.CustomPrx
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
                obj (1, 1) Test.NumPy.CustomPrx
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
                obj (1, 1) Test.NumPy.CustomPrx
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
                obj (1, 1) Test.NumPy.CustomPrx
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

        function returnValue = opComplex128Seq(obj, v1, context)
            %OPCOMPLEX128SEQ
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
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                v1 (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(v1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opComplex128Seq', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opComplex128SeqAsync(obj, v1, context)
            %OPCOMPLEX128SEQASYNC
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
            %   See also opComplex128Seq, Ice.Future.
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                v1 (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(v1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opComplex128Seq', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opBoolMatrix(obj, context)
            %OPBOOLMATRIX
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opBoolMatrix', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opBoolMatrixAsync(obj, context)
            %OPBOOLMATRIXASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBoolMatrix, Ice.Future.
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opBoolMatrix', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = opByteMatrix(obj, context)
            %OPBYTEMATRIX
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opByteMatrix', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opByteMatrixAsync(obj, context)
            %OPBYTEMATRIXASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteMatrix, Ice.Future.
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opByteMatrix', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = opShortMatrix(obj, context)
            %OPSHORTMATRIX
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 vector
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opShortMatrix', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readShortSeq();
            is_.endEncapsulation();
        end

        function future = opShortMatrixAsync(obj, context)
            %OPSHORTMATRIXASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opShortMatrix, Ice.Future.
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opShortMatrix', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = opIntMatrix(obj, context)
            %OPINTMATRIX
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 vector
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opIntMatrix', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readIntSeq();
            is_.endEncapsulation();
        end

        function future = opIntMatrixAsync(obj, context)
            %OPINTMATRIXASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opIntMatrix, Ice.Future.
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opIntMatrix', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = opLongMatrix(obj, context)
            %OPLONGMATRIX
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 vector
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opLongMatrix', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readLongSeq();
            is_.endEncapsulation();
        end

        function future = opLongMatrixAsync(obj, context)
            %OPLONGMATRIXASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLongMatrix, Ice.Future.
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opLongMatrix', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = opFloatMatrix(obj, context)
            %OPFLOATMATRIX
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       single vector
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opFloatMatrix', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readFloatSeq();
            is_.endEncapsulation();
        end

        function future = opFloatMatrixAsync(obj, context)
            %OPFLOATMATRIXASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opFloatMatrix, Ice.Future.
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opFloatMatrix', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = opDoubleMatrix(obj, context)
            %OPDOUBLEMATRIX
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       double vector
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opDoubleMatrix', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readDoubleSeq();
            is_.endEncapsulation();
        end

        function future = opDoubleMatrixAsync(obj, context)
            %OPDOUBLEMATRIXASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opDoubleMatrix, Ice.Future.
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opDoubleMatrix', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = opBogusNumpyArrayType(obj, context)
            %OPBOGUSNUMPYARRAYTYPE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opBogusNumpyArrayType', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opBogusNumpyArrayTypeAsync(obj, context)
            %OPBOGUSNUMPYARRAYTYPEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBogusNumpyArrayType, Ice.Future.
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opBogusNumpyArrayType', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = opD(obj, d, context)
            %OPD
            %
            %   Input Arguments
            %     d
            %       Test.NumPy.D scalar | empty array of Test.NumPy.D
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.NumPy.D scalar | empty array of Test.NumPy.D
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                d Test.NumPy.D {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(d);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.NumPy.D');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = opDAsync(obj, d, context)
            %OPDASYNC
            %
            %   Input Arguments
            %     d
            %       Test.NumPy.D scalar | empty array of Test.NumPy.D
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opD, Ice.Future.
            
            arguments
                obj (1, 1) Test.NumPy.CustomPrx
                d Test.NumPy.D {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(d);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.NumPy.D');
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
                obj (1, 1) Test.NumPy.CustomPrx
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
                obj (1, 1) Test.NumPy.CustomPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::NumPy::Custom';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.NumPy.CustomPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::NumPy::Custom.
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
            %     r - A Test.NumPy.CustomPrx scalar if the target object implements Slice interface 
            %       ::Test::NumPy::Custom; otherwise, an empty array of Test.NumPy.CustomPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.NumPy.CustomPrx.ice_staticId(), 'Test.NumPy.CustomPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.NumPy.CustomPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.NumPy.CustomPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.NumPy.CustomPrx', varargin{:});
        end
    end
end
