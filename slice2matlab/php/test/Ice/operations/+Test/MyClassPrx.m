classdef MyClassPrx < Ice.ObjectPrx
    %MYCLASSPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.MyClassPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   MyClassPrx Methods:
    %     opBool
    %     opBoolAsync - An asynchronous opBool.
    %     opBoolBoolSD
    %     opBoolBoolSDAsync - An asynchronous opBoolBoolSD.
    %     opBoolS
    %     opBoolSAsync - An asynchronous opBoolS.
    %     opBoolSS
    %     opBoolSSAsync - An asynchronous opBoolSS.
    %     opByte
    %     opByteAsync - An asynchronous opByte.
    %     opByte1
    %     opByte1Async - An asynchronous opByte1.
    %     opByteBoolD
    %     opByteBoolDAsync - An asynchronous opByteBoolD.
    %     opByteBoolD1
    %     opByteBoolD1Async - An asynchronous opByteBoolD1.
    %     opByteBoolD2
    %     opByteBoolD2Async - An asynchronous opByteBoolD2.
    %     opByteBoolDS
    %     opByteBoolDSAsync - An asynchronous opByteBoolDS.
    %     opByteByteSD
    %     opByteByteSDAsync - An asynchronous opByteByteSD.
    %     opByteS
    %     opByteSAsync - An asynchronous opByteS.
    %     opByteSS
    %     opByteSSAsync - An asynchronous opByteSS.
    %     opContext
    %     opContextAsync - An asynchronous opContext.
    %     opDouble1
    %     opDouble1Async - An asynchronous opDouble1.
    %     opFloat1
    %     opFloat1Async - An asynchronous opFloat1.
    %     opFloatDouble
    %     opFloatDoubleAsync - An asynchronous opFloatDouble.
    %     opFloatDoubleS
    %     opFloatDoubleSAsync - An asynchronous opFloatDoubleS.
    %     opFloatDoubleSS
    %     opFloatDoubleSSAsync - An asynchronous opFloatDoubleSS.
    %     opIdempotent
    %     opIdempotentAsync - An asynchronous opIdempotent.
    %     opInt1
    %     opInt1Async - An asynchronous opInt1.
    %     opIntIntSD
    %     opIntIntSDAsync - An asynchronous opIntIntSD.
    %     opIntS
    %     opIntSAsync - An asynchronous opIntS.
    %     opLong1
    %     opLong1Async - An asynchronous opLong1.
    %     opLongFloatD
    %     opLongFloatDAsync - An asynchronous opLongFloatD.
    %     opLongFloatDS
    %     opLongFloatDSAsync - An asynchronous opLongFloatDS.
    %     opLongLongSD
    %     opLongLongSDAsync - An asynchronous opLongLongSD.
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
    %     opMyClass
    %     opMyClassAsync - An asynchronous opMyClass.
    %     opMyEnum
    %     opMyEnumAsync - An asynchronous opMyEnum.
    %     opMyEnumMyEnumSD
    %     opMyEnumMyEnumSDAsync - An asynchronous opMyEnumMyEnumSD.
    %     opMyEnumStringD
    %     opMyEnumStringDAsync - An asynchronous opMyEnumStringD.
    %     opMyEnumStringDS
    %     opMyEnumStringDSAsync - An asynchronous opMyEnumStringDS.
    %     opShort1
    %     opShort1Async - An asynchronous opShort1.
    %     opShortIntD
    %     opShortIntDAsync - An asynchronous opShortIntD.
    %     opShortIntDS
    %     opShortIntDSAsync - An asynchronous opShortIntDS.
    %     opShortIntLong
    %     opShortIntLongAsync - An asynchronous opShortIntLong.
    %     opShortIntLongS
    %     opShortIntLongSAsync - An asynchronous opShortIntLongS.
    %     opShortIntLongSS
    %     opShortIntLongSSAsync - An asynchronous opShortIntLongSS.
    %     opShortShortSD
    %     opShortShortSDAsync - An asynchronous opShortShortSD.
    %     opString
    %     opStringAsync - An asynchronous opString.
    %     opString1
    %     opString1Async - An asynchronous opString1.
    %     opStringDoubleSD
    %     opStringDoubleSDAsync - An asynchronous opStringDoubleSD.
    %     opStringFloatSD
    %     opStringFloatSDAsync - An asynchronous opStringFloatSD.
    %     opStringLiterals
    %     opStringLiteralsAsync - An asynchronous opStringLiterals.
    %     opStringMyEnumD
    %     opStringMyEnumDAsync - An asynchronous opStringMyEnumD.
    %     opStringMyEnumDS
    %     opStringMyEnumDSAsync - An asynchronous opStringMyEnumDS.
    %     opStringS
    %     opStringSAsync - An asynchronous opStringS.
    %     opStringS1
    %     opStringS1Async - An asynchronous opStringS1.
    %     opStringS2
    %     opStringS2Async - An asynchronous opStringS2.
    %     opStringSS
    %     opStringSSAsync - An asynchronous opStringSS.
    %     opStringStringD
    %     opStringStringDAsync - An asynchronous opStringStringD.
    %     opStringStringDS
    %     opStringStringDSAsync - An asynchronous opStringStringDS.
    %     opStringStringSD
    %     opStringStringSDAsync - An asynchronous opStringStringSD.
    %     opStruct
    %     opStructAsync - An asynchronous opStruct.
    %     opVoid
    %     opVoidAsync - An asynchronous opVoid.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     supportsCompress
    %     supportsCompressAsync - An asynchronous supportsCompress.
    %
    %   MyClassPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::MyClass.
    %     uncheckedCast - Creates a MyClassPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
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
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end

        function returnValue = supportsCompress(obj, context)
            %SUPPORTSCOMPRESS
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('supportsCompress', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = supportsCompressAsync(obj, context)
            %SUPPORTSCOMPRESSASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also supportsCompress, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('supportsCompress', 0, true, [], 1, @unmarshal, {}, context);
        end

        function opVoid(obj, context)
            %OPVOID
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
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
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('opVoid', 0, false, [], 0, [], {}, context);
        end

        function [returnValue, p3] = opByte(obj, p1, p2, context)
            %OPBYTE
            %
            %   Input Arguments
            %     p1
            %       uint8 scalar
            %     p2
            %       uint8 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 scalar
            %     p3
            %       uint8 scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) uint8
                p2 (1, 1) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByte(p1);
            os_.writeByte(p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByte', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = is_.readByte();
            returnValue = is_.readByte();
            is_.endEncapsulation();
        end

        function future = opByteAsync(obj, p1, p2, context)
            %OPBYTEASYNC
            %
            %   Input Arguments
            %     p1
            %       uint8 scalar
            %     p2
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
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) uint8
                p2 (1, 1) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByte(p1);
            os_.writeByte(p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readByte();
                returnValue = is_.readByte();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opByte', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opBool(obj, p1, p2, context)
            %OPBOOL
            %
            %   Input Arguments
            %     p1
            %       logical scalar
            %     p2
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical scalar
            %     p3
            %       logical scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) logical
                p2 (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(p1);
            os_.writeBool(p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBool', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = is_.readBool();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = opBoolAsync(obj, p1, p2, context)
            %OPBOOLASYNC
            %
            %   Input Arguments
            %     p1
            %       logical scalar
            %     p2
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
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) logical
                p2 (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(p1);
            os_.writeBool(p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readBool();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opBool', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p4, p5, p6] = opShortIntLong(obj, p1, p2, p3, context)
            %OPSHORTINTLONG
            %
            %   Input Arguments
            %     p1
            %       int16 scalar
            %     p2
            %       int32 scalar
            %     p3
            %       int64 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 scalar
            %     p4
            %       int16 scalar
            %     p5
            %       int32 scalar
            %     p6
            %       int64 scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) int16
                p2 (1, 1) int32
                p3 (1, 1) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShort(p1);
            os_.writeInt(p2);
            os_.writeLong(p3);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortIntLong', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p4 = is_.readShort();
            p5 = is_.readInt();
            p6 = is_.readLong();
            returnValue = is_.readLong();
            is_.endEncapsulation();
        end

        function future = opShortIntLongAsync(obj, p1, p2, p3, context)
            %OPSHORTINTLONGASYNC
            %
            %   Input Arguments
            %     p1
            %       int16 scalar
            %     p2
            %       int32 scalar
            %     p3
            %       int64 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opShortIntLong, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) int16
                p2 (1, 1) int32
                p3 (1, 1) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShort(p1);
            os_.writeInt(p2);
            os_.writeLong(p3);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p4 = is_.readShort();
                p5 = is_.readInt();
                p6 = is_.readLong();
                returnValue = is_.readLong();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p4;
                varargout{3} = p5;
                varargout{4} = p6;
            end
            future = obj.iceInvokeAsync('opShortIntLong', 0, true, os_, 4, @unmarshal, {}, context);
        end

        function [returnValue, p3, p4] = opFloatDouble(obj, p1, p2, context)
            %OPFLOATDOUBLE
            %
            %   Input Arguments
            %     p1
            %       single scalar
            %     p2
            %       double scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       double scalar
            %     p3
            %       single scalar
            %     p4
            %       double scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) single
                p2 (1, 1) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloat(p1);
            os_.writeDouble(p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloatDouble', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = is_.readFloat();
            p4 = is_.readDouble();
            returnValue = is_.readDouble();
            is_.endEncapsulation();
        end

        function future = opFloatDoubleAsync(obj, p1, p2, context)
            %OPFLOATDOUBLEASYNC
            %
            %   Input Arguments
            %     p1
            %       single scalar
            %     p2
            %       double scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opFloatDouble, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) single
                p2 (1, 1) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloat(p1);
            os_.writeDouble(p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readFloat();
                p4 = is_.readDouble();
                returnValue = is_.readDouble();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
                varargout{3} = p4;
            end
            future = obj.iceInvokeAsync('opFloatDouble', 0, true, os_, 3, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opString(obj, p1, p2, context)
            %OPSTRING
            %
            %   Input Arguments
            %     p1
            %       character vector
            %     p2
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            %     p3
            %       character vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) char
                p2 (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(p1);
            os_.writeString(p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opString', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = is_.readString();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = opStringAsync(obj, p1, p2, context)
            %OPSTRINGASYNC
            %
            %   Input Arguments
            %     p1
            %       character vector
            %     p2
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opString, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) char
                p2 (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(p1);
            os_.writeString(p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readString();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opString', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p2] = opMyEnum(obj, p1, context)
            %OPMYENUM
            %
            %   Input Arguments
            %     p1
            %       Test.MyEnum scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MyEnum scalar
            %     p2
            %       Test.MyEnum scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) Test.MyEnum
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnum.ice_write(os_, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyEnum', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p2 = Test.MyEnum.ice_read(is_);
            returnValue = Test.MyEnum.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opMyEnumAsync(obj, p1, context)
            %OPMYENUMASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.MyEnum scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyEnum, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) Test.MyEnum
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnum.ice_write(os_, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p2 = Test.MyEnum.ice_read(is_);
                returnValue = Test.MyEnum.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p2;
            end
            future = obj.iceInvokeAsync('opMyEnum', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p2, p3] = opMyClass(obj, p1, context)
            %OPMYCLASS
            %
            %   Input Arguments
            %     p1
            %       Test.MyClassPrx scalar | empty array of Test.MyClassPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MyClassPrx scalar | empty array of Test.MyClassPrx
            %     p2
            %       Test.MyClassPrx scalar | empty array of Test.MyClassPrx
            %     p3
            %       Test.MyClassPrx scalar | empty array of Test.MyClassPrx
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 Test.MyClassPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyClass', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p2 = Test.MyClassPrx.ice_read(is_);
            p3 = Test.MyClassPrx.ice_read(is_);
            returnValue = Test.MyClassPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opMyClassAsync(obj, p1, context)
            %OPMYCLASSASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.MyClassPrx scalar | empty array of Test.MyClassPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyClass, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 Test.MyClassPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p2 = Test.MyClassPrx.ice_read(is_);
                p3 = Test.MyClassPrx.ice_read(is_);
                returnValue = Test.MyClassPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p2;
                varargout{3} = p3;
            end
            future = obj.iceInvokeAsync('opMyClass', 0, true, os_, 3, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opStruct(obj, p1, p2, context)
            %OPSTRUCT
            %
            %   Input Arguments
            %     p1
            %       Test.Structure scalar
            %     p2
            %       Test.Structure scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.Structure scalar
            %     p3
            %       Test.Structure scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) Test.Structure
                p2 (1, 1) Test.Structure
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.Structure.ice_write(os_, p1);
            Test.Structure.ice_write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStruct', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.Structure.ice_read(is_);
            returnValue = Test.Structure.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opStructAsync(obj, p1, p2, context)
            %OPSTRUCTASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.Structure scalar
            %     p2
            %       Test.Structure scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStruct, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) Test.Structure
                p2 (1, 1) Test.Structure
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.Structure.ice_write(os_, p1);
            Test.Structure.ice_write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.Structure.ice_read(is_);
                returnValue = Test.Structure.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opStruct', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opByteS(obj, p1, p2, context)
            %OPBYTES
            %
            %   Input Arguments
            %     p1
            %       uint8 vector
            %     p2
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     p3
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) uint8
                p2 (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(p1);
            os_.writeByteSeq(p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opByteSAsync(obj, p1, p2, context)
            %OPBYTESASYNC
            %
            %   Input Arguments
            %     p1
            %       uint8 vector
            %     p2
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) uint8
                p2 (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(p1);
            os_.writeByteSeq(p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opByteS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opBoolS(obj, p1, p2, context)
            %OPBOOLS
            %
            %   Input Arguments
            %     p1
            %       logical vector
            %     p2
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            %     p3
            %       logical vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) logical
                p2 (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(p1);
            os_.writeBoolSeq(p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = is_.readBoolSeq();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opBoolSAsync(obj, p1, p2, context)
            %OPBOOLSASYNC
            %
            %   Input Arguments
            %     p1
            %       logical vector
            %     p2
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBoolS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) logical
                p2 (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(p1);
            os_.writeBoolSeq(p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readBoolSeq();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opBoolS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p4, p5, p6] = opShortIntLongS(obj, p1, p2, p3, context)
            %OPSHORTINTLONGS
            %
            %   Input Arguments
            %     p1
            %       int16 vector
            %     p2
            %       int32 vector
            %     p3
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 vector
            %     p4
            %       int16 vector
            %     p5
            %       int32 vector
            %     p6
            %       int64 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) int16
                p2 (1, :) int32
                p3 (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(p1);
            os_.writeIntSeq(p2);
            os_.writeLongSeq(p3);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortIntLongS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p4 = is_.readShortSeq();
            p5 = is_.readIntSeq();
            p6 = is_.readLongSeq();
            returnValue = is_.readLongSeq();
            is_.endEncapsulation();
        end

        function future = opShortIntLongSAsync(obj, p1, p2, p3, context)
            %OPSHORTINTLONGSASYNC
            %
            %   Input Arguments
            %     p1
            %       int16 vector
            %     p2
            %       int32 vector
            %     p3
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opShortIntLongS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) int16
                p2 (1, :) int32
                p3 (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(p1);
            os_.writeIntSeq(p2);
            os_.writeLongSeq(p3);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p4 = is_.readShortSeq();
                p5 = is_.readIntSeq();
                p6 = is_.readLongSeq();
                returnValue = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p4;
                varargout{3} = p5;
                varargout{4} = p6;
            end
            future = obj.iceInvokeAsync('opShortIntLongS', 0, true, os_, 4, @unmarshal, {}, context);
        end

        function [returnValue, p3, p4] = opFloatDoubleS(obj, p1, p2, context)
            %OPFLOATDOUBLES
            %
            %   Input Arguments
            %     p1
            %       single vector
            %     p2
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       double vector
            %     p3
            %       single vector
            %     p4
            %       double vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) single
                p2 (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(p1);
            os_.writeDoubleSeq(p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloatDoubleS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = is_.readFloatSeq();
            p4 = is_.readDoubleSeq();
            returnValue = is_.readDoubleSeq();
            is_.endEncapsulation();
        end

        function future = opFloatDoubleSAsync(obj, p1, p2, context)
            %OPFLOATDOUBLESASYNC
            %
            %   Input Arguments
            %     p1
            %       single vector
            %     p2
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opFloatDoubleS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) single
                p2 (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(p1);
            os_.writeDoubleSeq(p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readFloatSeq();
                p4 = is_.readDoubleSeq();
                returnValue = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
                varargout{3} = p4;
            end
            future = obj.iceInvokeAsync('opFloatDoubleS', 0, true, os_, 3, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opStringS(obj, p1, p2, context)
            %OPSTRINGS
            %
            %   Input Arguments
            %     p1
            %       string vector
            %     p2
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            %     p3
            %       string vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) string
                p2 (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(p1);
            os_.writeStringSeq(p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = is_.readStringSeq();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opStringSAsync(obj, p1, p2, context)
            %OPSTRINGSASYNC
            %
            %   Input Arguments
            %     p1
            %       string vector
            %     p2
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) string
                p2 (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(p1);
            os_.writeStringSeq(p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = is_.readStringSeq();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opStringS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opByteSS(obj, p1, p2, context)
            %OPBYTESS
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     p3
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ByteSS.write(os_, p1);
            Test.ByteSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteSS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.ByteSS.read(is_);
            returnValue = Test.ByteSS.read(is_);
            is_.endEncapsulation();
        end

        function future = opByteSSAsync(obj, p1, p2, context)
            %OPBYTESSASYNC
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteSS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ByteSS.write(os_, p1);
            Test.ByteSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.ByteSS.read(is_);
                returnValue = Test.ByteSS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opByteSS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opBoolSS(obj, p1, p2, context)
            %OPBOOLSS
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     p3
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.BoolSS.write(os_, p1);
            Test.BoolSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolSS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.BoolSS.read(is_);
            returnValue = Test.BoolSS.read(is_);
            is_.endEncapsulation();
        end

        function future = opBoolSSAsync(obj, p1, p2, context)
            %OPBOOLSSASYNC
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBoolSS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.BoolSS.write(os_, p1);
            Test.BoolSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.BoolSS.read(is_);
                returnValue = Test.BoolSS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opBoolSS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p4, p5, p6] = opShortIntLongSS(obj, p1, p2, p3, context)
            %OPSHORTINTLONGSS
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     p3
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     p4
            %       cell array
            %     p5
            %       cell array
            %     p6
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                p3 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ShortSS.write(os_, p1);
            Test.IntSS.write(os_, p2);
            Test.LongSS.write(os_, p3);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortIntLongSS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p4 = Test.ShortSS.read(is_);
            p5 = Test.IntSS.read(is_);
            p6 = Test.LongSS.read(is_);
            returnValue = Test.LongSS.read(is_);
            is_.endEncapsulation();
        end

        function future = opShortIntLongSSAsync(obj, p1, p2, p3, context)
            %OPSHORTINTLONGSSASYNC
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     p3
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opShortIntLongSS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                p3 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ShortSS.write(os_, p1);
            Test.IntSS.write(os_, p2);
            Test.LongSS.write(os_, p3);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p4 = Test.ShortSS.read(is_);
                p5 = Test.IntSS.read(is_);
                p6 = Test.LongSS.read(is_);
                returnValue = Test.LongSS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p4;
                varargout{3} = p5;
                varargout{4} = p6;
            end
            future = obj.iceInvokeAsync('opShortIntLongSS', 0, true, os_, 4, @unmarshal, {}, context);
        end

        function [returnValue, p3, p4] = opFloatDoubleSS(obj, p1, p2, context)
            %OPFLOATDOUBLESS
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     p3
            %       cell array
            %     p4
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.FloatSS.write(os_, p1);
            Test.DoubleSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloatDoubleSS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.FloatSS.read(is_);
            p4 = Test.DoubleSS.read(is_);
            returnValue = Test.DoubleSS.read(is_);
            is_.endEncapsulation();
        end

        function future = opFloatDoubleSSAsync(obj, p1, p2, context)
            %OPFLOATDOUBLESSASYNC
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opFloatDoubleSS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.FloatSS.write(os_, p1);
            Test.DoubleSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.FloatSS.read(is_);
                p4 = Test.DoubleSS.read(is_);
                returnValue = Test.DoubleSS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
                varargout{3} = p4;
            end
            future = obj.iceInvokeAsync('opFloatDoubleSS', 0, true, os_, 3, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opStringSS(obj, p1, p2, context)
            %OPSTRINGSS
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     p3
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringSS.write(os_, p1);
            Test.StringSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringSS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.StringSS.read(is_);
            returnValue = Test.StringSS.read(is_);
            is_.endEncapsulation();
        end

        function future = opStringSSAsync(obj, p1, p2, context)
            %OPSTRINGSSASYNC
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringSS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringSS.write(os_, p1);
            Test.StringSS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringSS.read(is_);
                returnValue = Test.StringSS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opStringSS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opByteBoolD(obj, p1, p2, context)
            %OPBYTEBOOLD
            %
            %   Input Arguments
            %     p1
            %       uint8, logical) scalar
            %     p2
            %       uint8, logical) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8, logical) scalar
            %     p3
            %       uint8, logical) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ByteBoolD.write(os_, p1);
            Test.ByteBoolD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteBoolD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.ByteBoolD.read(is_);
            returnValue = Test.ByteBoolD.read(is_);
            is_.endEncapsulation();
        end

        function future = opByteBoolDAsync(obj, p1, p2, context)
            %OPBYTEBOOLDASYNC
            %
            %   Input Arguments
            %     p1
            %       uint8, logical) scalar
            %     p2
            %       uint8, logical) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteBoolD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ByteBoolD.write(os_, p1);
            Test.ByteBoolD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.ByteBoolD.read(is_);
                returnValue = Test.ByteBoolD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opByteBoolD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opShortIntD(obj, p1, p2, context)
            %OPSHORTINTD
            %
            %   Input Arguments
            %     p1
            %       int16, int32) scalar
            %     p2
            %       int16, int32) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16, int32) scalar
            %     p3
            %       int16, int32) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ShortIntD.write(os_, p1);
            Test.ShortIntD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortIntD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.ShortIntD.read(is_);
            returnValue = Test.ShortIntD.read(is_);
            is_.endEncapsulation();
        end

        function future = opShortIntDAsync(obj, p1, p2, context)
            %OPSHORTINTDASYNC
            %
            %   Input Arguments
            %     p1
            %       int16, int32) scalar
            %     p2
            %       int16, int32) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opShortIntD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ShortIntD.write(os_, p1);
            Test.ShortIntD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.ShortIntD.read(is_);
                returnValue = Test.ShortIntD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opShortIntD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opLongFloatD(obj, p1, p2, context)
            %OPLONGFLOATD
            %
            %   Input Arguments
            %     p1
            %       int64, single) scalar
            %     p2
            %       int64, single) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64, single) scalar
            %     p3
            %       int64, single) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LongFloatD.write(os_, p1);
            Test.LongFloatD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLongFloatD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.LongFloatD.read(is_);
            returnValue = Test.LongFloatD.read(is_);
            is_.endEncapsulation();
        end

        function future = opLongFloatDAsync(obj, p1, p2, context)
            %OPLONGFLOATDASYNC
            %
            %   Input Arguments
            %     p1
            %       int64, single) scalar
            %     p2
            %       int64, single) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLongFloatD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LongFloatD.write(os_, p1);
            Test.LongFloatD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.LongFloatD.read(is_);
                returnValue = Test.LongFloatD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opLongFloatD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opStringStringD(obj, p1, p2, context)
            %OPSTRINGSTRINGD
            %
            %   Input Arguments
            %     p1
            %       string, string) scalar
            %     p2
            %       string, string) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, string) scalar
            %     p3
            %       string, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringD.write(os_, p1);
            Test.StringStringD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringStringD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.StringStringD.read(is_);
            returnValue = Test.StringStringD.read(is_);
            is_.endEncapsulation();
        end

        function future = opStringStringDAsync(obj, p1, p2, context)
            %OPSTRINGSTRINGDASYNC
            %
            %   Input Arguments
            %     p1
            %       string, string) scalar
            %     p2
            %       string, string) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringStringD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringD.write(os_, p1);
            Test.StringStringD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringStringD.read(is_);
                returnValue = Test.StringStringD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opStringStringD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opStringMyEnumD(obj, p1, p2, context)
            %OPSTRINGMYENUMD
            %
            %   Input Arguments
            %     p1
            %       string, Test.MyEnum) scalar
            %     p2
            %       string, Test.MyEnum) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, Test.MyEnum) scalar
            %     p3
            %       string, Test.MyEnum) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringMyEnumD.write(os_, p1);
            Test.StringMyEnumD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringMyEnumD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.StringMyEnumD.read(is_);
            returnValue = Test.StringMyEnumD.read(is_);
            is_.endEncapsulation();
        end

        function future = opStringMyEnumDAsync(obj, p1, p2, context)
            %OPSTRINGMYENUMDASYNC
            %
            %   Input Arguments
            %     p1
            %       string, Test.MyEnum) scalar
            %     p2
            %       string, Test.MyEnum) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringMyEnumD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringMyEnumD.write(os_, p1);
            Test.StringMyEnumD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringMyEnumD.read(is_);
                returnValue = Test.StringMyEnumD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opStringMyEnumD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opMyEnumStringD(obj, p1, p2, context)
            %OPMYENUMSTRINGD
            %
            %   Input Arguments
            %     p1
            %       Test.MyEnum, string) scalar
            %     p2
            %       Test.MyEnum, string) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MyEnum, string) scalar
            %     p3
            %       Test.MyEnum, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnumStringD.write(os_, p1);
            Test.MyEnumStringD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyEnumStringD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.MyEnumStringD.read(is_);
            returnValue = Test.MyEnumStringD.read(is_);
            is_.endEncapsulation();
        end

        function future = opMyEnumStringDAsync(obj, p1, p2, context)
            %OPMYENUMSTRINGDASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.MyEnum, string) scalar
            %     p2
            %       Test.MyEnum, string) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyEnumStringD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnumStringD.write(os_, p1);
            Test.MyEnumStringD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.MyEnumStringD.read(is_);
                returnValue = Test.MyEnumStringD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opMyEnumStringD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opByteBoolDS(obj, p1, p2, context)
            %OPBYTEBOOLDS
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     p3
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ByteBoolDS.write(os_, p1);
            Test.ByteBoolDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteBoolDS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.ByteBoolDS.read(is_);
            returnValue = Test.ByteBoolDS.read(is_);
            is_.endEncapsulation();
        end

        function future = opByteBoolDSAsync(obj, p1, p2, context)
            %OPBYTEBOOLDSASYNC
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteBoolDS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ByteBoolDS.write(os_, p1);
            Test.ByteBoolDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.ByteBoolDS.read(is_);
                returnValue = Test.ByteBoolDS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opByteBoolDS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opShortIntDS(obj, p1, p2, context)
            %OPSHORTINTDS
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     p3
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ShortIntDS.write(os_, p1);
            Test.ShortIntDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortIntDS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.ShortIntDS.read(is_);
            returnValue = Test.ShortIntDS.read(is_);
            is_.endEncapsulation();
        end

        function future = opShortIntDSAsync(obj, p1, p2, context)
            %OPSHORTINTDSASYNC
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opShortIntDS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ShortIntDS.write(os_, p1);
            Test.ShortIntDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.ShortIntDS.read(is_);
                returnValue = Test.ShortIntDS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opShortIntDS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opLongFloatDS(obj, p1, p2, context)
            %OPLONGFLOATDS
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     p3
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LongFloatDS.write(os_, p1);
            Test.LongFloatDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLongFloatDS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.LongFloatDS.read(is_);
            returnValue = Test.LongFloatDS.read(is_);
            is_.endEncapsulation();
        end

        function future = opLongFloatDSAsync(obj, p1, p2, context)
            %OPLONGFLOATDSASYNC
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLongFloatDS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LongFloatDS.write(os_, p1);
            Test.LongFloatDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.LongFloatDS.read(is_);
                returnValue = Test.LongFloatDS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opLongFloatDS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opStringStringDS(obj, p1, p2, context)
            %OPSTRINGSTRINGDS
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     p3
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringDS.write(os_, p1);
            Test.StringStringDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringStringDS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.StringStringDS.read(is_);
            returnValue = Test.StringStringDS.read(is_);
            is_.endEncapsulation();
        end

        function future = opStringStringDSAsync(obj, p1, p2, context)
            %OPSTRINGSTRINGDSASYNC
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringStringDS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringDS.write(os_, p1);
            Test.StringStringDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringStringDS.read(is_);
                returnValue = Test.StringStringDS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opStringStringDS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opStringMyEnumDS(obj, p1, p2, context)
            %OPSTRINGMYENUMDS
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     p3
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringMyEnumDS.write(os_, p1);
            Test.StringMyEnumDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringMyEnumDS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.StringMyEnumDS.read(is_);
            returnValue = Test.StringMyEnumDS.read(is_);
            is_.endEncapsulation();
        end

        function future = opStringMyEnumDSAsync(obj, p1, p2, context)
            %OPSTRINGMYENUMDSASYNC
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringMyEnumDS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringMyEnumDS.write(os_, p1);
            Test.StringMyEnumDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringMyEnumDS.read(is_);
                returnValue = Test.StringMyEnumDS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opStringMyEnumDS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opMyEnumStringDS(obj, p1, p2, context)
            %OPMYENUMSTRINGDS
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     p3
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnumStringDS.write(os_, p1);
            Test.MyEnumStringDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyEnumStringDS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.MyEnumStringDS.read(is_);
            returnValue = Test.MyEnumStringDS.read(is_);
            is_.endEncapsulation();
        end

        function future = opMyEnumStringDSAsync(obj, p1, p2, context)
            %OPMYENUMSTRINGDSASYNC
            %
            %   Input Arguments
            %     p1
            %       cell array
            %     p2
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyEnumStringDS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) cell
                p2 (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnumStringDS.write(os_, p1);
            Test.MyEnumStringDS.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.MyEnumStringDS.read(is_);
                returnValue = Test.MyEnumStringDS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opMyEnumStringDS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opByteByteSD(obj, p1, p2, context)
            %OPBYTEBYTESD
            %
            %   Input Arguments
            %     p1
            %       uint8, cell) scalar
            %     p2
            %       uint8, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8, cell) scalar
            %     p3
            %       uint8, cell) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ByteByteSD.write(os_, p1);
            Test.ByteByteSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteByteSD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.ByteByteSD.read(is_);
            returnValue = Test.ByteByteSD.read(is_);
            is_.endEncapsulation();
        end

        function future = opByteByteSDAsync(obj, p1, p2, context)
            %OPBYTEBYTESDASYNC
            %
            %   Input Arguments
            %     p1
            %       uint8, cell) scalar
            %     p2
            %       uint8, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteByteSD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ByteByteSD.write(os_, p1);
            Test.ByteByteSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.ByteByteSD.read(is_);
                returnValue = Test.ByteByteSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opByteByteSD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opBoolBoolSD(obj, p1, p2, context)
            %OPBOOLBOOLSD
            %
            %   Input Arguments
            %     p1
            %       logical, cell) scalar
            %     p2
            %       logical, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical, cell) scalar
            %     p3
            %       logical, cell) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.BoolBoolSD.write(os_, p1);
            Test.BoolBoolSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opBoolBoolSD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.BoolBoolSD.read(is_);
            returnValue = Test.BoolBoolSD.read(is_);
            is_.endEncapsulation();
        end

        function future = opBoolBoolSDAsync(obj, p1, p2, context)
            %OPBOOLBOOLSDASYNC
            %
            %   Input Arguments
            %     p1
            %       logical, cell) scalar
            %     p2
            %       logical, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opBoolBoolSD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.BoolBoolSD.write(os_, p1);
            Test.BoolBoolSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.BoolBoolSD.read(is_);
                returnValue = Test.BoolBoolSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opBoolBoolSD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opShortShortSD(obj, p1, p2, context)
            %OPSHORTSHORTSD
            %
            %   Input Arguments
            %     p1
            %       int16, cell) scalar
            %     p2
            %       int16, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16, cell) scalar
            %     p3
            %       int16, cell) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ShortShortSD.write(os_, p1);
            Test.ShortShortSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortShortSD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.ShortShortSD.read(is_);
            returnValue = Test.ShortShortSD.read(is_);
            is_.endEncapsulation();
        end

        function future = opShortShortSDAsync(obj, p1, p2, context)
            %OPSHORTSHORTSDASYNC
            %
            %   Input Arguments
            %     p1
            %       int16, cell) scalar
            %     p2
            %       int16, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opShortShortSD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ShortShortSD.write(os_, p1);
            Test.ShortShortSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.ShortShortSD.read(is_);
                returnValue = Test.ShortShortSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opShortShortSD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opIntIntSD(obj, p1, p2, context)
            %OPINTINTSD
            %
            %   Input Arguments
            %     p1
            %       int32, cell) scalar
            %     p2
            %       int32, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32, cell) scalar
            %     p3
            %       int32, cell) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.IntIntSD.write(os_, p1);
            Test.IntIntSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntIntSD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.IntIntSD.read(is_);
            returnValue = Test.IntIntSD.read(is_);
            is_.endEncapsulation();
        end

        function future = opIntIntSDAsync(obj, p1, p2, context)
            %OPINTINTSDASYNC
            %
            %   Input Arguments
            %     p1
            %       int32, cell) scalar
            %     p2
            %       int32, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opIntIntSD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.IntIntSD.write(os_, p1);
            Test.IntIntSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.IntIntSD.read(is_);
                returnValue = Test.IntIntSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opIntIntSD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opLongLongSD(obj, p1, p2, context)
            %OPLONGLONGSD
            %
            %   Input Arguments
            %     p1
            %       int64, cell) scalar
            %     p2
            %       int64, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64, cell) scalar
            %     p3
            %       int64, cell) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LongLongSD.write(os_, p1);
            Test.LongLongSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLongLongSD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.LongLongSD.read(is_);
            returnValue = Test.LongLongSD.read(is_);
            is_.endEncapsulation();
        end

        function future = opLongLongSDAsync(obj, p1, p2, context)
            %OPLONGLONGSDASYNC
            %
            %   Input Arguments
            %     p1
            %       int64, cell) scalar
            %     p2
            %       int64, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLongLongSD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LongLongSD.write(os_, p1);
            Test.LongLongSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.LongLongSD.read(is_);
                returnValue = Test.LongLongSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opLongLongSD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opStringFloatSD(obj, p1, p2, context)
            %OPSTRINGFLOATSD
            %
            %   Input Arguments
            %     p1
            %       string, cell) scalar
            %     p2
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, cell) scalar
            %     p3
            %       string, cell) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringFloatSD.write(os_, p1);
            Test.StringFloatSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringFloatSD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.StringFloatSD.read(is_);
            returnValue = Test.StringFloatSD.read(is_);
            is_.endEncapsulation();
        end

        function future = opStringFloatSDAsync(obj, p1, p2, context)
            %OPSTRINGFLOATSDASYNC
            %
            %   Input Arguments
            %     p1
            %       string, cell) scalar
            %     p2
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringFloatSD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringFloatSD.write(os_, p1);
            Test.StringFloatSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringFloatSD.read(is_);
                returnValue = Test.StringFloatSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opStringFloatSD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opStringDoubleSD(obj, p1, p2, context)
            %OPSTRINGDOUBLESD
            %
            %   Input Arguments
            %     p1
            %       string, cell) scalar
            %     p2
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, cell) scalar
            %     p3
            %       string, cell) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringDoubleSD.write(os_, p1);
            Test.StringDoubleSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringDoubleSD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.StringDoubleSD.read(is_);
            returnValue = Test.StringDoubleSD.read(is_);
            is_.endEncapsulation();
        end

        function future = opStringDoubleSDAsync(obj, p1, p2, context)
            %OPSTRINGDOUBLESDASYNC
            %
            %   Input Arguments
            %     p1
            %       string, cell) scalar
            %     p2
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringDoubleSD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringDoubleSD.write(os_, p1);
            Test.StringDoubleSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringDoubleSD.read(is_);
                returnValue = Test.StringDoubleSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opStringDoubleSD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opStringStringSD(obj, p1, p2, context)
            %OPSTRINGSTRINGSD
            %
            %   Input Arguments
            %     p1
            %       string, cell) scalar
            %     p2
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, cell) scalar
            %     p3
            %       string, cell) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringSD.write(os_, p1);
            Test.StringStringSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringStringSD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.StringStringSD.read(is_);
            returnValue = Test.StringStringSD.read(is_);
            is_.endEncapsulation();
        end

        function future = opStringStringSDAsync(obj, p1, p2, context)
            %OPSTRINGSTRINGSDASYNC
            %
            %   Input Arguments
            %     p1
            %       string, cell) scalar
            %     p2
            %       string, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringStringSD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringSD.write(os_, p1);
            Test.StringStringSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.StringStringSD.read(is_);
                returnValue = Test.StringStringSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opStringStringSD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, p3] = opMyEnumMyEnumSD(obj, p1, p2, context)
            %OPMYENUMMYENUMSD
            %
            %   Input Arguments
            %     p1
            %       Test.MyEnum, cell) scalar
            %     p2
            %       Test.MyEnum, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.MyEnum, cell) scalar
            %     p3
            %       Test.MyEnum, cell) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnumMyEnumSD.write(os_, p1);
            Test.MyEnumMyEnumSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyEnumMyEnumSD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p3 = Test.MyEnumMyEnumSD.read(is_);
            returnValue = Test.MyEnumMyEnumSD.read(is_);
            is_.endEncapsulation();
        end

        function future = opMyEnumMyEnumSDAsync(obj, p1, p2, context)
            %OPMYENUMMYENUMSDASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.MyEnum, cell) scalar
            %     p2
            %       Test.MyEnum, cell) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyEnumMyEnumSD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                p2 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.MyEnumMyEnumSD.write(os_, p1);
            Test.MyEnumMyEnumSD.write(os_, p2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p3 = Test.MyEnumMyEnumSD.read(is_);
                returnValue = Test.MyEnumMyEnumSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p3;
            end
            future = obj.iceInvokeAsync('opMyEnumMyEnumSD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function returnValue = opIntS(obj, s, context)
            %OPINTS
            %
            %   Input Arguments
            %     s
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                s (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(s);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIntS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readIntSeq();
            is_.endEncapsulation();
        end

        function future = opIntSAsync(obj, s, context)
            %OPINTSASYNC
            %
            %   Input Arguments
            %     s
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opIntS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                s (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(s);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opIntS', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opContext(obj, context)
            %OPCONTEXT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opContext', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.StringStringD.read(is_);
            is_.endEncapsulation();
        end

        function future = opContextAsync(obj, context)
            %OPCONTEXTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opContext, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.StringStringD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opContext', 0, true, [], 1, @unmarshal, {}, context);
        end

        function opIdempotent(obj, context)
            %OPIDEMPOTENT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('opIdempotent', 2, false, [], false, {}, context);
        end

        function future = opIdempotentAsync(obj, context)
            %OPIDEMPOTENTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opIdempotent, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('opIdempotent', 2, false, [], 0, [], {}, context);
        end

        function returnValue = opByte1(obj, opByte1, context)
            %OPBYTE1
            %
            %   Input Arguments
            %     opByte1
            %       uint8 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opByte1 (1, 1) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByte(opByte1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByte1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readByte();
            is_.endEncapsulation();
        end

        function future = opByte1Async(obj, opByte1, context)
            %OPBYTE1ASYNC
            %
            %   Input Arguments
            %     opByte1
            %       uint8 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByte1, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opByte1 (1, 1) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByte(opByte1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readByte();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opByte1', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opShort1(obj, opShort1, context)
            %OPSHORT1
            %
            %   Input Arguments
            %     opShort1
            %       int16 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opShort1 (1, 1) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShort(opShort1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShort1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readShort();
            is_.endEncapsulation();
        end

        function future = opShort1Async(obj, opShort1, context)
            %OPSHORT1ASYNC
            %
            %   Input Arguments
            %     opShort1
            %       int16 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opShort1, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opShort1 (1, 1) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShort(opShort1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readShort();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opShort1', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opInt1(obj, opInt1, context)
            %OPINT1
            %
            %   Input Arguments
            %     opInt1
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opInt1 (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(opInt1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opInt1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = opInt1Async(obj, opInt1, context)
            %OPINT1ASYNC
            %
            %   Input Arguments
            %     opInt1
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opInt1, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opInt1 (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(opInt1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opInt1', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opLong1(obj, opLong1, context)
            %OPLONG1
            %
            %   Input Arguments
            %     opLong1
            %       int64 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opLong1 (1, 1) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(opLong1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLong1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readLong();
            is_.endEncapsulation();
        end

        function future = opLong1Async(obj, opLong1, context)
            %OPLONG1ASYNC
            %
            %   Input Arguments
            %     opLong1
            %       int64 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLong1, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opLong1 (1, 1) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLong(opLong1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readLong();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opLong1', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opFloat1(obj, opFloat1, context)
            %OPFLOAT1
            %
            %   Input Arguments
            %     opFloat1
            %       single scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       single scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opFloat1 (1, 1) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloat(opFloat1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opFloat1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readFloat();
            is_.endEncapsulation();
        end

        function future = opFloat1Async(obj, opFloat1, context)
            %OPFLOAT1ASYNC
            %
            %   Input Arguments
            %     opFloat1
            %       single scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opFloat1, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opFloat1 (1, 1) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloat(opFloat1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readFloat();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opFloat1', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opDouble1(obj, opDouble1, context)
            %OPDOUBLE1
            %
            %   Input Arguments
            %     opDouble1
            %       double scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       double scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opDouble1 (1, 1) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDouble(opDouble1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opDouble1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readDouble();
            is_.endEncapsulation();
        end

        function future = opDouble1Async(obj, opDouble1, context)
            %OPDOUBLE1ASYNC
            %
            %   Input Arguments
            %     opDouble1
            %       double scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opDouble1, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opDouble1 (1, 1) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDouble(opDouble1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readDouble();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opDouble1', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opString1(obj, opString1, context)
            %OPSTRING1
            %
            %   Input Arguments
            %     opString1
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opString1 (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(opString1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opString1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = opString1Async(obj, opString1, context)
            %OPSTRING1ASYNC
            %
            %   Input Arguments
            %     opString1
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opString1, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opString1 (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(opString1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opString1', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opStringS1(obj, opStringS1, context)
            %OPSTRINGS1
            %
            %   Input Arguments
            %     opStringS1
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opStringS1 (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(opStringS1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringS1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opStringS1Async(obj, opStringS1, context)
            %OPSTRINGS1ASYNC
            %
            %   Input Arguments
            %     opStringS1
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringS1, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opStringS1 (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(opStringS1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opStringS1', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opByteBoolD1(obj, opByteBoolD1, context)
            %OPBYTEBOOLD1
            %
            %   Input Arguments
            %     opByteBoolD1
            %       uint8, logical) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8, logical) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opByteBoolD1 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ByteBoolD.write(os_, opByteBoolD1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteBoolD1', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.ByteBoolD.read(is_);
            is_.endEncapsulation();
        end

        function future = opByteBoolD1Async(obj, opByteBoolD1, context)
            %OPBYTEBOOLD1ASYNC
            %
            %   Input Arguments
            %     opByteBoolD1
            %       uint8, logical) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteBoolD1, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                opByteBoolD1 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ByteBoolD.write(os_, opByteBoolD1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.ByteBoolD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opByteBoolD1', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opStringS2(obj, stringS, context)
            %OPSTRINGS2
            %
            %   Input Arguments
            %     stringS
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                stringS (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(stringS);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringS2', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opStringS2Async(obj, stringS, context)
            %OPSTRINGS2ASYNC
            %
            %   Input Arguments
            %     stringS
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringS2, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                stringS (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(stringS);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opStringS2', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opByteBoolD2(obj, byteBoolD, context)
            %OPBYTEBOOLD2
            %
            %   Input Arguments
            %     byteBoolD
            %       uint8, logical) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8, logical) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                byteBoolD (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ByteBoolD.write(os_, byteBoolD);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteBoolD2', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.ByteBoolD.read(is_);
            is_.endEncapsulation();
        end

        function future = opByteBoolD2Async(obj, byteBoolD, context)
            %OPBYTEBOOLD2ASYNC
            %
            %   Input Arguments
            %     byteBoolD
            %       uint8, logical) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteBoolD2, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                byteBoolD (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ByteBoolD.write(os_, byteBoolD);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.ByteBoolD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opByteBoolD2', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = opStringLiterals(obj, context)
            %OPSTRINGLITERALS
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opStringLiterals', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opStringLiteralsAsync(obj, context)
            %OPSTRINGLITERALSASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringLiterals, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opStringLiterals', 0, true, [], 1, @unmarshal, {}, context);
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
            %       Test.Structure scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opMStruct1', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.Structure.ice_read(is_);
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
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.Structure.ice_read(is_);
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
            %       Test.Structure scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.Structure scalar
            %     p2
            %       Test.Structure scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) Test.Structure
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.Structure.ice_write(os_, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMStruct2', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p2 = Test.Structure.ice_read(is_);
            returnValue = Test.Structure.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opMStruct2Async(obj, p1, context)
            %OPMSTRUCT2ASYNC
            %
            %   Input Arguments
            %     p1
            %       Test.Structure scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMStruct2, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) Test.Structure
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.Structure.ice_write(os_, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p2 = Test.Structure.ice_read(is_);
                returnValue = Test.Structure.ice_read(is_);
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
            %       string vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opMSeq1', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeq();
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
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeq();
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
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            %     p2
            %       string vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMSeq2', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p2 = is_.readStringSeq();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opMSeq2Async(obj, p1, context)
            %OPMSEQ2ASYNC
            %
            %   Input Arguments
            %     p1
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMSeq2, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p2 = is_.readStringSeq();
                returnValue = is_.readStringSeq();
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
            %       string, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('opMDict1', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.StringStringD.read(is_);
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
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.StringStringD.read(is_);
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
            %       string, string) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, string) scalar
            %     p2
            %       string, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringD.write(os_, p1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMDict2', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            p2 = Test.StringStringD.read(is_);
            returnValue = Test.StringStringD.read(is_);
            is_.endEncapsulation();
        end

        function future = opMDict2Async(obj, p1, context)
            %OPMDICT2ASYNC
            %
            %   Input Arguments
            %     p1
            %       string, string) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMDict2, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                p1 (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.StringStringD.write(os_, p1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                p2 = Test.StringStringD.read(is_);
                returnValue = Test.StringStringD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = p2;
            end
            future = obj.iceInvokeAsync('opMDict2', 0, true, os_, 2, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::MyClass';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.MyClassPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::MyClass.
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
            %     r - A Test.MyClassPrx scalar if the target object implements Slice interface 
            %       ::Test::MyClass; otherwise, an empty array of Test.MyClassPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MyClassPrx.ice_staticId(), 'Test.MyClassPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.MyClassPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.MyClassPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MyClassPrx', varargin{:});
        end
    end
end
