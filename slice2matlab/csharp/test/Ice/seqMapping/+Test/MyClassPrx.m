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
    %     opABoolS
    %     opABoolSAsync - An asynchronous opABoolS.
    %     opAByteS
    %     opAByteSAsync - An asynchronous opAByteS.
    %     opACRS
    %     opACRSAsync - An asynchronous opACRS.
    %     opACVS
    %     opACVSAsync - An asynchronous opACVS.
    %     opADoubleS
    %     opADoubleSAsync - An asynchronous opADoubleS.
    %     opAEnS
    %     opAEnSAsync - An asynchronous opAEnS.
    %     opAFloatS
    %     opAFloatSAsync - An asynchronous opAFloatS.
    %     opAIPrxS
    %     opAIPrxSAsync - An asynchronous opAIPrxS.
    %     opAIntS
    %     opAIntSAsync - An asynchronous opAIntS.
    %     opALongS
    %     opALongSAsync - An asynchronous opALongS.
    %     opAObjectPrxS
    %     opAObjectPrxSAsync - An asynchronous opAObjectPrxS.
    %     opAObjectS
    %     opAObjectSAsync - An asynchronous opAObjectS.
    %     opAShortS
    %     opAShortSAsync - An asynchronous opAShortS.
    %     opAStringS
    %     opAStringSAsync - An asynchronous opAStringS.
    %     opAStructS
    %     opAStructSAsync - An asynchronous opAStructS.
    %     opAStructSD
    %     opAStructSDAsync - An asynchronous opAStructSD.
    %     opCustomCVS
    %     opCustomCVSAsync - An asynchronous opCustomCVS.
    %     opCustomCVSS
    %     opCustomCVSSAsync - An asynchronous opCustomCVSS.
    %     opCustomIntS
    %     opCustomIntSAsync - An asynchronous opCustomIntS.
    %     opCustomIntSS
    %     opCustomIntSSAsync - An asynchronous opCustomIntSS.
    %     opKBoolS
    %     opKBoolSAsync - An asynchronous opKBoolS.
    %     opKByteS
    %     opKByteSAsync - An asynchronous opKByteS.
    %     opKDoubleS
    %     opKDoubleSAsync - An asynchronous opKDoubleS.
    %     opKEnS
    %     opKEnSAsync - An asynchronous opKEnS.
    %     opKFloatS
    %     opKFloatSAsync - An asynchronous opKFloatS.
    %     opKIPrxS
    %     opKIPrxSAsync - An asynchronous opKIPrxS.
    %     opKIntS
    %     opKIntSAsync - An asynchronous opKIntS.
    %     opKLongS
    %     opKLongSAsync - An asynchronous opKLongS.
    %     opKObjectPrxS
    %     opKObjectPrxSAsync - An asynchronous opKObjectPrxS.
    %     opKShortS
    %     opKShortSAsync - An asynchronous opKShortS.
    %     opKStringS
    %     opKStringSAsync - An asynchronous opKStringS.
    %     opKStructS
    %     opKStructSAsync - An asynchronous opKStructS.
    %     opKStructSD
    %     opKStructSDAsync - An asynchronous opKStructSD.
    %     opLBoolS
    %     opLBoolSAsync - An asynchronous opLBoolS.
    %     opLByteS
    %     opLByteSAsync - An asynchronous opLByteS.
    %     opLCRS
    %     opLCRSAsync - An asynchronous opLCRS.
    %     opLCVS
    %     opLCVSAsync - An asynchronous opLCVS.
    %     opLDoubleS
    %     opLDoubleSAsync - An asynchronous opLDoubleS.
    %     opLEnS
    %     opLEnSAsync - An asynchronous opLEnS.
    %     opLFloatS
    %     opLFloatSAsync - An asynchronous opLFloatS.
    %     opLIPrxS
    %     opLIPrxSAsync - An asynchronous opLIPrxS.
    %     opLIntS
    %     opLIntSAsync - An asynchronous opLIntS.
    %     opLLongS
    %     opLLongSAsync - An asynchronous opLLongS.
    %     opLObjectPrxS
    %     opLObjectPrxSAsync - An asynchronous opLObjectPrxS.
    %     opLObjectS
    %     opLObjectSAsync - An asynchronous opLObjectS.
    %     opLShortS
    %     opLShortSAsync - An asynchronous opLShortS.
    %     opLStringS
    %     opLStringSAsync - An asynchronous opLStringS.
    %     opLStructS
    %     opLStructSAsync - An asynchronous opLStructS.
    %     opLStructSD
    %     opLStructSDAsync - An asynchronous opLStructSD.
    %     opQBoolS
    %     opQBoolSAsync - An asynchronous opQBoolS.
    %     opQByteS
    %     opQByteSAsync - An asynchronous opQByteS.
    %     opQDoubleS
    %     opQDoubleSAsync - An asynchronous opQDoubleS.
    %     opQEnS
    %     opQEnSAsync - An asynchronous opQEnS.
    %     opQFloatS
    %     opQFloatSAsync - An asynchronous opQFloatS.
    %     opQIPrxS
    %     opQIPrxSAsync - An asynchronous opQIPrxS.
    %     opQIntS
    %     opQIntSAsync - An asynchronous opQIntS.
    %     opQLongS
    %     opQLongSAsync - An asynchronous opQLongS.
    %     opQObjectPrxS
    %     opQObjectPrxSAsync - An asynchronous opQObjectPrxS.
    %     opQShortS
    %     opQShortSAsync - An asynchronous opQShortS.
    %     opQStringS
    %     opQStringSAsync - An asynchronous opQStringS.
    %     opQStructS
    %     opQStructSAsync - An asynchronous opQStructS.
    %     opQStructSD
    %     opQStructSDAsync - An asynchronous opQStructSD.
    %     opSBoolS
    %     opSBoolSAsync - An asynchronous opSBoolS.
    %     opSByteS
    %     opSByteSAsync - An asynchronous opSByteS.
    %     opSDoubleS
    %     opSDoubleSAsync - An asynchronous opSDoubleS.
    %     opSEnS
    %     opSEnSAsync - An asynchronous opSEnS.
    %     opSFloatS
    %     opSFloatSAsync - An asynchronous opSFloatS.
    %     opSIPrxS
    %     opSIPrxSAsync - An asynchronous opSIPrxS.
    %     opSIntS
    %     opSIntSAsync - An asynchronous opSIntS.
    %     opSLongS
    %     opSLongSAsync - An asynchronous opSLongS.
    %     opSObjectPrxS
    %     opSObjectPrxSAsync - An asynchronous opSObjectPrxS.
    %     opSShortS
    %     opSShortSAsync - An asynchronous opSShortS.
    %     opSStringS
    %     opSStringSAsync - An asynchronous opSStringS.
    %     opSStructS
    %     opSStructSAsync - An asynchronous opSStructS.
    %     opSStructSD
    %     opSStructSDAsync - An asynchronous opSStructSD.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   MyClassPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::MyClass.
    %     uncheckedCast - Creates a MyClassPrx from another proxy without any validation.
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

        function [returnValue, o] = opAByteS(obj, i, context)
            %OPABYTES
            %
            %   Input Arguments
            %     i
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     o
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAByteS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opAByteSAsync(obj, i, context)
            %OPABYTESASYNC
            %
            %   Input Arguments
            %     i
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opAByteS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opAByteS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opLByteS(obj, i, context)
            %OPLBYTES
            %
            %   Input Arguments
            %     i
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     o
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLByteS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opLByteSAsync(obj, i, context)
            %OPLBYTESASYNC
            %
            %   Input Arguments
            %     i
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLByteS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opLByteS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opKByteS(obj, i, context)
            %OPKBYTES
            %
            %   Input Arguments
            %     i
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     o
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKByteS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opKByteSAsync(obj, i, context)
            %OPKBYTESASYNC
            %
            %   Input Arguments
            %     i
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opKByteS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opKByteS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opQByteS(obj, i, context)
            %OPQBYTES
            %
            %   Input Arguments
            %     i
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     o
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQByteS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opQByteSAsync(obj, i, context)
            %OPQBYTESASYNC
            %
            %   Input Arguments
            %     i
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opQByteS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opQByteS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opSByteS(obj, i, context)
            %OPSBYTES
            %
            %   Input Arguments
            %     i
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     o
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSByteS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opSByteSAsync(obj, i, context)
            %OPSBYTESASYNC
            %
            %   Input Arguments
            %     i
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSByteS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opSByteS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opABoolS(obj, i, context)
            %OPABOOLS
            %
            %   Input Arguments
            %     i
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            %     o
            %       logical vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opABoolS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readBoolSeq();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opABoolSAsync(obj, i, context)
            %OPABOOLSASYNC
            %
            %   Input Arguments
            %     i
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opABoolS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readBoolSeq();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opABoolS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opLBoolS(obj, i, context)
            %OPLBOOLS
            %
            %   Input Arguments
            %     i
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            %     o
            %       logical vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLBoolS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readBoolSeq();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opLBoolSAsync(obj, i, context)
            %OPLBOOLSASYNC
            %
            %   Input Arguments
            %     i
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLBoolS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readBoolSeq();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opLBoolS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opKBoolS(obj, i, context)
            %OPKBOOLS
            %
            %   Input Arguments
            %     i
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            %     o
            %       logical vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKBoolS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readBoolSeq();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opKBoolSAsync(obj, i, context)
            %OPKBOOLSASYNC
            %
            %   Input Arguments
            %     i
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opKBoolS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readBoolSeq();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opKBoolS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opQBoolS(obj, i, context)
            %OPQBOOLS
            %
            %   Input Arguments
            %     i
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            %     o
            %       logical vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQBoolS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readBoolSeq();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opQBoolSAsync(obj, i, context)
            %OPQBOOLSASYNC
            %
            %   Input Arguments
            %     i
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opQBoolS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readBoolSeq();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opQBoolS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opSBoolS(obj, i, context)
            %OPSBOOLS
            %
            %   Input Arguments
            %     i
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical vector
            %     o
            %       logical vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSBoolS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readBoolSeq();
            returnValue = is_.readBoolSeq();
            is_.endEncapsulation();
        end

        function future = opSBoolSAsync(obj, i, context)
            %OPSBOOLSASYNC
            %
            %   Input Arguments
            %     i
            %       logical vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSBoolS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readBoolSeq();
                returnValue = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opSBoolS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opAShortS(obj, i, context)
            %OPASHORTS
            %
            %   Input Arguments
            %     i
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 vector
            %     o
            %       int16 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAShortS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readShortSeq();
            returnValue = is_.readShortSeq();
            is_.endEncapsulation();
        end

        function future = opAShortSAsync(obj, i, context)
            %OPASHORTSASYNC
            %
            %   Input Arguments
            %     i
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opAShortS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readShortSeq();
                returnValue = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opAShortS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opLShortS(obj, i, context)
            %OPLSHORTS
            %
            %   Input Arguments
            %     i
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 vector
            %     o
            %       int16 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLShortS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readShortSeq();
            returnValue = is_.readShortSeq();
            is_.endEncapsulation();
        end

        function future = opLShortSAsync(obj, i, context)
            %OPLSHORTSASYNC
            %
            %   Input Arguments
            %     i
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLShortS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readShortSeq();
                returnValue = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opLShortS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opKShortS(obj, i, context)
            %OPKSHORTS
            %
            %   Input Arguments
            %     i
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 vector
            %     o
            %       int16 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKShortS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readShortSeq();
            returnValue = is_.readShortSeq();
            is_.endEncapsulation();
        end

        function future = opKShortSAsync(obj, i, context)
            %OPKSHORTSASYNC
            %
            %   Input Arguments
            %     i
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opKShortS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readShortSeq();
                returnValue = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opKShortS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opQShortS(obj, i, context)
            %OPQSHORTS
            %
            %   Input Arguments
            %     i
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 vector
            %     o
            %       int16 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQShortS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readShortSeq();
            returnValue = is_.readShortSeq();
            is_.endEncapsulation();
        end

        function future = opQShortSAsync(obj, i, context)
            %OPQSHORTSASYNC
            %
            %   Input Arguments
            %     i
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opQShortS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readShortSeq();
                returnValue = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opQShortS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opSShortS(obj, i, context)
            %OPSSHORTS
            %
            %   Input Arguments
            %     i
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 vector
            %     o
            %       int16 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSShortS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readShortSeq();
            returnValue = is_.readShortSeq();
            is_.endEncapsulation();
        end

        function future = opSShortSAsync(obj, i, context)
            %OPSSHORTSASYNC
            %
            %   Input Arguments
            %     i
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSShortS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readShortSeq();
                returnValue = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opSShortS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opAIntS(obj, i, context)
            %OPAINTS
            %
            %   Input Arguments
            %     i
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 vector
            %     o
            %       int32 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAIntS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readIntSeq();
            returnValue = is_.readIntSeq();
            is_.endEncapsulation();
        end

        function future = opAIntSAsync(obj, i, context)
            %OPAINTSASYNC
            %
            %   Input Arguments
            %     i
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opAIntS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                returnValue = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opAIntS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opLIntS(obj, i, context)
            %OPLINTS
            %
            %   Input Arguments
            %     i
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 vector
            %     o
            %       int32 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLIntS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readIntSeq();
            returnValue = is_.readIntSeq();
            is_.endEncapsulation();
        end

        function future = opLIntSAsync(obj, i, context)
            %OPLINTSASYNC
            %
            %   Input Arguments
            %     i
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLIntS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                returnValue = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opLIntS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opKIntS(obj, i, context)
            %OPKINTS
            %
            %   Input Arguments
            %     i
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 vector
            %     o
            %       int32 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKIntS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readIntSeq();
            returnValue = is_.readIntSeq();
            is_.endEncapsulation();
        end

        function future = opKIntSAsync(obj, i, context)
            %OPKINTSASYNC
            %
            %   Input Arguments
            %     i
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opKIntS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                returnValue = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opKIntS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opQIntS(obj, i, context)
            %OPQINTS
            %
            %   Input Arguments
            %     i
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 vector
            %     o
            %       int32 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQIntS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readIntSeq();
            returnValue = is_.readIntSeq();
            is_.endEncapsulation();
        end

        function future = opQIntSAsync(obj, i, context)
            %OPQINTSASYNC
            %
            %   Input Arguments
            %     i
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opQIntS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                returnValue = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opQIntS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opSIntS(obj, i, context)
            %OPSINTS
            %
            %   Input Arguments
            %     i
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 vector
            %     o
            %       int32 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSIntS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readIntSeq();
            returnValue = is_.readIntSeq();
            is_.endEncapsulation();
        end

        function future = opSIntSAsync(obj, i, context)
            %OPSINTSASYNC
            %
            %   Input Arguments
            %     i
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSIntS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                returnValue = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opSIntS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opALongS(obj, i, context)
            %OPALONGS
            %
            %   Input Arguments
            %     i
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 vector
            %     o
            %       int64 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opALongS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readLongSeq();
            returnValue = is_.readLongSeq();
            is_.endEncapsulation();
        end

        function future = opALongSAsync(obj, i, context)
            %OPALONGSASYNC
            %
            %   Input Arguments
            %     i
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opALongS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readLongSeq();
                returnValue = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opALongS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opLLongS(obj, i, context)
            %OPLLONGS
            %
            %   Input Arguments
            %     i
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 vector
            %     o
            %       int64 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLLongS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readLongSeq();
            returnValue = is_.readLongSeq();
            is_.endEncapsulation();
        end

        function future = opLLongSAsync(obj, i, context)
            %OPLLONGSASYNC
            %
            %   Input Arguments
            %     i
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLLongS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readLongSeq();
                returnValue = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opLLongS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opKLongS(obj, i, context)
            %OPKLONGS
            %
            %   Input Arguments
            %     i
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 vector
            %     o
            %       int64 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKLongS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readLongSeq();
            returnValue = is_.readLongSeq();
            is_.endEncapsulation();
        end

        function future = opKLongSAsync(obj, i, context)
            %OPKLONGSASYNC
            %
            %   Input Arguments
            %     i
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opKLongS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readLongSeq();
                returnValue = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opKLongS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opQLongS(obj, i, context)
            %OPQLONGS
            %
            %   Input Arguments
            %     i
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 vector
            %     o
            %       int64 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQLongS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readLongSeq();
            returnValue = is_.readLongSeq();
            is_.endEncapsulation();
        end

        function future = opQLongSAsync(obj, i, context)
            %OPQLONGSASYNC
            %
            %   Input Arguments
            %     i
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opQLongS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readLongSeq();
                returnValue = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opQLongS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opSLongS(obj, i, context)
            %OPSLONGS
            %
            %   Input Arguments
            %     i
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 vector
            %     o
            %       int64 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSLongS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readLongSeq();
            returnValue = is_.readLongSeq();
            is_.endEncapsulation();
        end

        function future = opSLongSAsync(obj, i, context)
            %OPSLONGSASYNC
            %
            %   Input Arguments
            %     i
            %       int64 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSLongS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readLongSeq();
                returnValue = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opSLongS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opAFloatS(obj, i, context)
            %OPAFLOATS
            %
            %   Input Arguments
            %     i
            %       single vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       single vector
            %     o
            %       single vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAFloatS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readFloatSeq();
            returnValue = is_.readFloatSeq();
            is_.endEncapsulation();
        end

        function future = opAFloatSAsync(obj, i, context)
            %OPAFLOATSASYNC
            %
            %   Input Arguments
            %     i
            %       single vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opAFloatS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readFloatSeq();
                returnValue = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opAFloatS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opLFloatS(obj, i, context)
            %OPLFLOATS
            %
            %   Input Arguments
            %     i
            %       single vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       single vector
            %     o
            %       single vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLFloatS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readFloatSeq();
            returnValue = is_.readFloatSeq();
            is_.endEncapsulation();
        end

        function future = opLFloatSAsync(obj, i, context)
            %OPLFLOATSASYNC
            %
            %   Input Arguments
            %     i
            %       single vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLFloatS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readFloatSeq();
                returnValue = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opLFloatS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opKFloatS(obj, i, context)
            %OPKFLOATS
            %
            %   Input Arguments
            %     i
            %       single vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       single vector
            %     o
            %       single vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKFloatS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readFloatSeq();
            returnValue = is_.readFloatSeq();
            is_.endEncapsulation();
        end

        function future = opKFloatSAsync(obj, i, context)
            %OPKFLOATSASYNC
            %
            %   Input Arguments
            %     i
            %       single vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opKFloatS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readFloatSeq();
                returnValue = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opKFloatS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opQFloatS(obj, i, context)
            %OPQFLOATS
            %
            %   Input Arguments
            %     i
            %       single vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       single vector
            %     o
            %       single vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQFloatS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readFloatSeq();
            returnValue = is_.readFloatSeq();
            is_.endEncapsulation();
        end

        function future = opQFloatSAsync(obj, i, context)
            %OPQFLOATSASYNC
            %
            %   Input Arguments
            %     i
            %       single vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opQFloatS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readFloatSeq();
                returnValue = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opQFloatS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opSFloatS(obj, i, context)
            %OPSFLOATS
            %
            %   Input Arguments
            %     i
            %       single vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       single vector
            %     o
            %       single vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSFloatS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readFloatSeq();
            returnValue = is_.readFloatSeq();
            is_.endEncapsulation();
        end

        function future = opSFloatSAsync(obj, i, context)
            %OPSFLOATSASYNC
            %
            %   Input Arguments
            %     i
            %       single vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSFloatS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) single
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readFloatSeq();
                returnValue = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opSFloatS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opADoubleS(obj, i, context)
            %OPADOUBLES
            %
            %   Input Arguments
            %     i
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       double vector
            %     o
            %       double vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opADoubleS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readDoubleSeq();
            returnValue = is_.readDoubleSeq();
            is_.endEncapsulation();
        end

        function future = opADoubleSAsync(obj, i, context)
            %OPADOUBLESASYNC
            %
            %   Input Arguments
            %     i
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opADoubleS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readDoubleSeq();
                returnValue = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opADoubleS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opLDoubleS(obj, i, context)
            %OPLDOUBLES
            %
            %   Input Arguments
            %     i
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       double vector
            %     o
            %       double vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLDoubleS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readDoubleSeq();
            returnValue = is_.readDoubleSeq();
            is_.endEncapsulation();
        end

        function future = opLDoubleSAsync(obj, i, context)
            %OPLDOUBLESASYNC
            %
            %   Input Arguments
            %     i
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLDoubleS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readDoubleSeq();
                returnValue = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opLDoubleS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opKDoubleS(obj, i, context)
            %OPKDOUBLES
            %
            %   Input Arguments
            %     i
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       double vector
            %     o
            %       double vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKDoubleS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readDoubleSeq();
            returnValue = is_.readDoubleSeq();
            is_.endEncapsulation();
        end

        function future = opKDoubleSAsync(obj, i, context)
            %OPKDOUBLESASYNC
            %
            %   Input Arguments
            %     i
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opKDoubleS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readDoubleSeq();
                returnValue = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opKDoubleS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opQDoubleS(obj, i, context)
            %OPQDOUBLES
            %
            %   Input Arguments
            %     i
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       double vector
            %     o
            %       double vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQDoubleS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readDoubleSeq();
            returnValue = is_.readDoubleSeq();
            is_.endEncapsulation();
        end

        function future = opQDoubleSAsync(obj, i, context)
            %OPQDOUBLESASYNC
            %
            %   Input Arguments
            %     i
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opQDoubleS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readDoubleSeq();
                returnValue = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opQDoubleS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opSDoubleS(obj, i, context)
            %OPSDOUBLES
            %
            %   Input Arguments
            %     i
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       double vector
            %     o
            %       double vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSDoubleS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readDoubleSeq();
            returnValue = is_.readDoubleSeq();
            is_.endEncapsulation();
        end

        function future = opSDoubleSAsync(obj, i, context)
            %OPSDOUBLESASYNC
            %
            %   Input Arguments
            %     i
            %       double vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSDoubleS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) double
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readDoubleSeq();
                returnValue = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opSDoubleS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opAStringS(obj, i, context)
            %OPASTRINGS
            %
            %   Input Arguments
            %     i
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            %     o
            %       string vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAStringS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readStringSeq();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opAStringSAsync(obj, i, context)
            %OPASTRINGSASYNC
            %
            %   Input Arguments
            %     i
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opAStringS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readStringSeq();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opAStringS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opLStringS(obj, i, context)
            %OPLSTRINGS
            %
            %   Input Arguments
            %     i
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            %     o
            %       string vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLStringS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readStringSeq();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opLStringSAsync(obj, i, context)
            %OPLSTRINGSASYNC
            %
            %   Input Arguments
            %     i
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLStringS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readStringSeq();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opLStringS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opKStringS(obj, i, context)
            %OPKSTRINGS
            %
            %   Input Arguments
            %     i
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            %     o
            %       string vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKStringS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readStringSeq();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opKStringSAsync(obj, i, context)
            %OPKSTRINGSASYNC
            %
            %   Input Arguments
            %     i
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opKStringS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readStringSeq();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opKStringS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opQStringS(obj, i, context)
            %OPQSTRINGS
            %
            %   Input Arguments
            %     i
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            %     o
            %       string vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQStringS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readStringSeq();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opQStringSAsync(obj, i, context)
            %OPQSTRINGSASYNC
            %
            %   Input Arguments
            %     i
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opQStringS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readStringSeq();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opQStringS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opSStringS(obj, i, context)
            %OPSSTRINGS
            %
            %   Input Arguments
            %     i
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            %     o
            %       string vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSStringS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readStringSeq();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opSStringSAsync(obj, i, context)
            %OPSSTRINGSASYNC
            %
            %   Input Arguments
            %     i
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSStringS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readStringSeq();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opSStringS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opAObjectS(obj, i, context)
            %OPAOBJECTS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AObjectS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAObjectS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.AObjectS.read(is_);
            returnValue = Test.AObjectS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.AObjectS.convert(o);
            returnValue = Test.AObjectS.convert(returnValue);
        end

        function future = opAObjectSAsync(obj, i, context)
            %OPAOBJECTSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opAObjectS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AObjectS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AObjectS.read(is_);
                returnValue = Test.AObjectS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.AObjectS.convert(returnValue);
                varargout{2} = Test.AObjectS.convert(o);
            end
            future = obj.iceInvokeAsync('opAObjectS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opLObjectS(obj, i, context)
            %OPLOBJECTS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LObjectS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLObjectS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.LObjectS.read(is_);
            returnValue = Test.LObjectS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.LObjectS.convert(o);
            returnValue = Test.LObjectS.convert(returnValue);
        end

        function future = opLObjectSAsync(obj, i, context)
            %OPLOBJECTSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLObjectS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LObjectS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LObjectS.read(is_);
                returnValue = Test.LObjectS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.LObjectS.convert(returnValue);
                varargout{2} = Test.LObjectS.convert(o);
            end
            future = obj.iceInvokeAsync('opLObjectS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opAObjectPrxS(obj, i, context)
            %OPAOBJECTPRXS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAObjectPrxS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.AObjectPrxS.read(is_);
            returnValue = Test.AObjectPrxS.read(is_);
            is_.endEncapsulation();
        end

        function future = opAObjectPrxSAsync(obj, i, context)
            %OPAOBJECTPRXSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opAObjectPrxS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AObjectPrxS.read(is_);
                returnValue = Test.AObjectPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opAObjectPrxS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opLObjectPrxS(obj, i, context)
            %OPLOBJECTPRXS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLObjectPrxS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.LObjectPrxS.read(is_);
            returnValue = Test.LObjectPrxS.read(is_);
            is_.endEncapsulation();
        end

        function future = opLObjectPrxSAsync(obj, i, context)
            %OPLOBJECTPRXSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLObjectPrxS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LObjectPrxS.read(is_);
                returnValue = Test.LObjectPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opLObjectPrxS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opKObjectPrxS(obj, i, context)
            %OPKOBJECTPRXS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.KObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKObjectPrxS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.KObjectPrxS.read(is_);
            returnValue = Test.KObjectPrxS.read(is_);
            is_.endEncapsulation();
        end

        function future = opKObjectPrxSAsync(obj, i, context)
            %OPKOBJECTPRXSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opKObjectPrxS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.KObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.KObjectPrxS.read(is_);
                returnValue = Test.KObjectPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opKObjectPrxS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opQObjectPrxS(obj, i, context)
            %OPQOBJECTPRXS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.QObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQObjectPrxS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.QObjectPrxS.read(is_);
            returnValue = Test.QObjectPrxS.read(is_);
            is_.endEncapsulation();
        end

        function future = opQObjectPrxSAsync(obj, i, context)
            %OPQOBJECTPRXSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opQObjectPrxS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.QObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.QObjectPrxS.read(is_);
                returnValue = Test.QObjectPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opQObjectPrxS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opSObjectPrxS(obj, i, context)
            %OPSOBJECTPRXS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSObjectPrxS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.SObjectPrxS.read(is_);
            returnValue = Test.SObjectPrxS.read(is_);
            is_.endEncapsulation();
        end

        function future = opSObjectPrxSAsync(obj, i, context)
            %OPSOBJECTPRXSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSObjectPrxS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.SObjectPrxS.read(is_);
                returnValue = Test.SObjectPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opSObjectPrxS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opAStructS(obj, i, context)
            %OPASTRUCTS
            %
            %   Input Arguments
            %     i
            %       Test.S vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.S vector
            %     o
            %       Test.S vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.S
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAStructS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.AStructS.read(is_);
            returnValue = Test.AStructS.read(is_);
            is_.endEncapsulation();
        end

        function future = opAStructSAsync(obj, i, context)
            %OPASTRUCTSASYNC
            %
            %   Input Arguments
            %     i
            %       Test.S vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opAStructS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.S
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AStructS.read(is_);
                returnValue = Test.AStructS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opAStructS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opLStructS(obj, i, context)
            %OPLSTRUCTS
            %
            %   Input Arguments
            %     i
            %       Test.S vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.S vector
            %     o
            %       Test.S vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.S
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLStructS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.LStructS.read(is_);
            returnValue = Test.LStructS.read(is_);
            is_.endEncapsulation();
        end

        function future = opLStructSAsync(obj, i, context)
            %OPLSTRUCTSASYNC
            %
            %   Input Arguments
            %     i
            %       Test.S vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLStructS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.S
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LStructS.read(is_);
                returnValue = Test.LStructS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opLStructS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opKStructS(obj, i, context)
            %OPKSTRUCTS
            %
            %   Input Arguments
            %     i
            %       Test.S vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.S vector
            %     o
            %       Test.S vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.S
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.KStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKStructS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.KStructS.read(is_);
            returnValue = Test.KStructS.read(is_);
            is_.endEncapsulation();
        end

        function future = opKStructSAsync(obj, i, context)
            %OPKSTRUCTSASYNC
            %
            %   Input Arguments
            %     i
            %       Test.S vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opKStructS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.S
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.KStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.KStructS.read(is_);
                returnValue = Test.KStructS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opKStructS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opQStructS(obj, i, context)
            %OPQSTRUCTS
            %
            %   Input Arguments
            %     i
            %       Test.S vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.S vector
            %     o
            %       Test.S vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.S
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.QStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQStructS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.QStructS.read(is_);
            returnValue = Test.QStructS.read(is_);
            is_.endEncapsulation();
        end

        function future = opQStructSAsync(obj, i, context)
            %OPQSTRUCTSASYNC
            %
            %   Input Arguments
            %     i
            %       Test.S vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opQStructS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.S
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.QStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.QStructS.read(is_);
                returnValue = Test.QStructS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opQStructS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opSStructS(obj, i, context)
            %OPSSTRUCTS
            %
            %   Input Arguments
            %     i
            %       Test.S vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.S vector
            %     o
            %       Test.S vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.S
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSStructS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.SStructS.read(is_);
            returnValue = Test.SStructS.read(is_);
            is_.endEncapsulation();
        end

        function future = opSStructSAsync(obj, i, context)
            %OPSSTRUCTSASYNC
            %
            %   Input Arguments
            %     i
            %       Test.S vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSStructS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.S
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.SStructS.read(is_);
                returnValue = Test.SStructS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opSStructS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opAStructSD(obj, i, context)
            %OPASTRUCTSD
            %
            %   Input Arguments
            %     i
            %       Test.SD vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SD vector
            %     o
            %       Test.SD vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.SD
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAStructSD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.AStructSD.read(is_);
            returnValue = Test.AStructSD.read(is_);
            is_.endEncapsulation();
        end

        function future = opAStructSDAsync(obj, i, context)
            %OPASTRUCTSDASYNC
            %
            %   Input Arguments
            %     i
            %       Test.SD vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opAStructSD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.SD
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AStructSD.read(is_);
                returnValue = Test.AStructSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opAStructSD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opLStructSD(obj, i, context)
            %OPLSTRUCTSD
            %
            %   Input Arguments
            %     i
            %       Test.SD vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SD vector
            %     o
            %       Test.SD vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.SD
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLStructSD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.LStructSD.read(is_);
            returnValue = Test.LStructSD.read(is_);
            is_.endEncapsulation();
        end

        function future = opLStructSDAsync(obj, i, context)
            %OPLSTRUCTSDASYNC
            %
            %   Input Arguments
            %     i
            %       Test.SD vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLStructSD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.SD
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LStructSD.read(is_);
                returnValue = Test.LStructSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opLStructSD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opKStructSD(obj, i, context)
            %OPKSTRUCTSD
            %
            %   Input Arguments
            %     i
            %       Test.SD vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SD vector
            %     o
            %       Test.SD vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.SD
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.KStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKStructSD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.KStructSD.read(is_);
            returnValue = Test.KStructSD.read(is_);
            is_.endEncapsulation();
        end

        function future = opKStructSDAsync(obj, i, context)
            %OPKSTRUCTSDASYNC
            %
            %   Input Arguments
            %     i
            %       Test.SD vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opKStructSD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.SD
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.KStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.KStructSD.read(is_);
                returnValue = Test.KStructSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opKStructSD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opQStructSD(obj, i, context)
            %OPQSTRUCTSD
            %
            %   Input Arguments
            %     i
            %       Test.SD vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SD vector
            %     o
            %       Test.SD vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.SD
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.QStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQStructSD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.QStructSD.read(is_);
            returnValue = Test.QStructSD.read(is_);
            is_.endEncapsulation();
        end

        function future = opQStructSDAsync(obj, i, context)
            %OPQSTRUCTSDASYNC
            %
            %   Input Arguments
            %     i
            %       Test.SD vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opQStructSD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.SD
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.QStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.QStructSD.read(is_);
                returnValue = Test.QStructSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opQStructSD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opSStructSD(obj, i, context)
            %OPSSTRUCTSD
            %
            %   Input Arguments
            %     i
            %       Test.SD vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.SD vector
            %     o
            %       Test.SD vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.SD
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSStructSD', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.SStructSD.read(is_);
            returnValue = Test.SStructSD.read(is_);
            is_.endEncapsulation();
        end

        function future = opSStructSDAsync(obj, i, context)
            %OPSSTRUCTSDASYNC
            %
            %   Input Arguments
            %     i
            %       Test.SD vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSStructSD, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.SD
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.SStructSD.read(is_);
                returnValue = Test.SStructSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opSStructSD', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opACVS(obj, i, context)
            %OPACVS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ACVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opACVS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.ACVS.read(is_);
            returnValue = Test.ACVS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.ACVS.convert(o);
            returnValue = Test.ACVS.convert(returnValue);
        end

        function future = opACVSAsync(obj, i, context)
            %OPACVSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opACVS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ACVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.ACVS.read(is_);
                returnValue = Test.ACVS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.ACVS.convert(returnValue);
                varargout{2} = Test.ACVS.convert(o);
            end
            future = obj.iceInvokeAsync('opACVS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opLCVS(obj, i, context)
            %OPLCVS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LCVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLCVS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.LCVS.read(is_);
            returnValue = Test.LCVS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.LCVS.convert(o);
            returnValue = Test.LCVS.convert(returnValue);
        end

        function future = opLCVSAsync(obj, i, context)
            %OPLCVSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLCVS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LCVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LCVS.read(is_);
                returnValue = Test.LCVS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.LCVS.convert(returnValue);
                varargout{2} = Test.LCVS.convert(o);
            end
            future = obj.iceInvokeAsync('opLCVS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opACRS(obj, i, context)
            %OPACRS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ACRS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opACRS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.ACRS.read(is_);
            returnValue = Test.ACRS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.ACRS.convert(o);
            returnValue = Test.ACRS.convert(returnValue);
        end

        function future = opACRSAsync(obj, i, context)
            %OPACRSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opACRS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.ACRS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.ACRS.read(is_);
                returnValue = Test.ACRS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.ACRS.convert(returnValue);
                varargout{2} = Test.ACRS.convert(o);
            end
            future = obj.iceInvokeAsync('opACRS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opLCRS(obj, i, context)
            %OPLCRS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LCRS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLCRS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.LCRS.read(is_);
            returnValue = Test.LCRS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.LCRS.convert(o);
            returnValue = Test.LCRS.convert(returnValue);
        end

        function future = opLCRSAsync(obj, i, context)
            %OPLCRSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLCRS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LCRS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LCRS.read(is_);
                returnValue = Test.LCRS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.LCRS.convert(returnValue);
                varargout{2} = Test.LCRS.convert(o);
            end
            future = obj.iceInvokeAsync('opLCRS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opAEnS(obj, i, context)
            %OPAENS
            %
            %   Input Arguments
            %     i
            %       Test.En vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.En vector
            %     o
            %       Test.En vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.En
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAEnS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.AEnS.read(is_);
            returnValue = Test.AEnS.read(is_);
            is_.endEncapsulation();
        end

        function future = opAEnSAsync(obj, i, context)
            %OPAENSASYNC
            %
            %   Input Arguments
            %     i
            %       Test.En vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opAEnS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.En
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AEnS.read(is_);
                returnValue = Test.AEnS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opAEnS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opLEnS(obj, i, context)
            %OPLENS
            %
            %   Input Arguments
            %     i
            %       Test.En vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.En vector
            %     o
            %       Test.En vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.En
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLEnS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.LEnS.read(is_);
            returnValue = Test.LEnS.read(is_);
            is_.endEncapsulation();
        end

        function future = opLEnSAsync(obj, i, context)
            %OPLENSASYNC
            %
            %   Input Arguments
            %     i
            %       Test.En vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLEnS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.En
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LEnS.read(is_);
                returnValue = Test.LEnS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opLEnS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opKEnS(obj, i, context)
            %OPKENS
            %
            %   Input Arguments
            %     i
            %       Test.En vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.En vector
            %     o
            %       Test.En vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.En
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.KEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKEnS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.KEnS.read(is_);
            returnValue = Test.KEnS.read(is_);
            is_.endEncapsulation();
        end

        function future = opKEnSAsync(obj, i, context)
            %OPKENSASYNC
            %
            %   Input Arguments
            %     i
            %       Test.En vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opKEnS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.En
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.KEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.KEnS.read(is_);
                returnValue = Test.KEnS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opKEnS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opQEnS(obj, i, context)
            %OPQENS
            %
            %   Input Arguments
            %     i
            %       Test.En vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.En vector
            %     o
            %       Test.En vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.En
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.QEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQEnS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.QEnS.read(is_);
            returnValue = Test.QEnS.read(is_);
            is_.endEncapsulation();
        end

        function future = opQEnSAsync(obj, i, context)
            %OPQENSASYNC
            %
            %   Input Arguments
            %     i
            %       Test.En vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opQEnS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.En
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.QEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.QEnS.read(is_);
                returnValue = Test.QEnS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opQEnS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opSEnS(obj, i, context)
            %OPSENS
            %
            %   Input Arguments
            %     i
            %       Test.En vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.En vector
            %     o
            %       Test.En vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.En
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSEnS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.SEnS.read(is_);
            returnValue = Test.SEnS.read(is_);
            is_.endEncapsulation();
        end

        function future = opSEnSAsync(obj, i, context)
            %OPSENSASYNC
            %
            %   Input Arguments
            %     i
            %       Test.En vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSEnS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) Test.En
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.SEnS.read(is_);
                returnValue = Test.SEnS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opSEnS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opAIPrxS(obj, i, context)
            %OPAIPRXS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAIPrxS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.AIPrxS.read(is_);
            returnValue = Test.AIPrxS.read(is_);
            is_.endEncapsulation();
        end

        function future = opAIPrxSAsync(obj, i, context)
            %OPAIPRXSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opAIPrxS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.AIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AIPrxS.read(is_);
                returnValue = Test.AIPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opAIPrxS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opLIPrxS(obj, i, context)
            %OPLIPRXS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLIPrxS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.LIPrxS.read(is_);
            returnValue = Test.LIPrxS.read(is_);
            is_.endEncapsulation();
        end

        function future = opLIPrxSAsync(obj, i, context)
            %OPLIPRXSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opLIPrxS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.LIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LIPrxS.read(is_);
                returnValue = Test.LIPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opLIPrxS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opKIPrxS(obj, i, context)
            %OPKIPRXS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.KIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKIPrxS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.KIPrxS.read(is_);
            returnValue = Test.KIPrxS.read(is_);
            is_.endEncapsulation();
        end

        function future = opKIPrxSAsync(obj, i, context)
            %OPKIPRXSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opKIPrxS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.KIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.KIPrxS.read(is_);
                returnValue = Test.KIPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opKIPrxS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opQIPrxS(obj, i, context)
            %OPQIPRXS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.QIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQIPrxS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.QIPrxS.read(is_);
            returnValue = Test.QIPrxS.read(is_);
            is_.endEncapsulation();
        end

        function future = opQIPrxSAsync(obj, i, context)
            %OPQIPRXSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opQIPrxS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.QIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.QIPrxS.read(is_);
                returnValue = Test.QIPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opQIPrxS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opSIPrxS(obj, i, context)
            %OPSIPRXS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSIPrxS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.SIPrxS.read(is_);
            returnValue = Test.SIPrxS.read(is_);
            is_.endEncapsulation();
        end

        function future = opSIPrxSAsync(obj, i, context)
            %OPSIPRXSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opSIPrxS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.SIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.SIPrxS.read(is_);
                returnValue = Test.SIPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opSIPrxS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opCustomIntS(obj, i, context)
            %OPCUSTOMINTS
            %
            %   Input Arguments
            %     i
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 vector
            %     o
            %       int32 vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCustomIntS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = is_.readIntSeq();
            returnValue = is_.readIntSeq();
            is_.endEncapsulation();
        end

        function future = opCustomIntSAsync(obj, i, context)
            %OPCUSTOMINTSASYNC
            %
            %   Input Arguments
            %     i
            %       int32 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opCustomIntS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                returnValue = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opCustomIntS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opCustomCVS(obj, i, context)
            %OPCUSTOMCVS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.CustomCVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCustomCVS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.CustomCVS.read(is_);
            returnValue = Test.CustomCVS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.CustomCVS.convert(o);
            returnValue = Test.CustomCVS.convert(returnValue);
        end

        function future = opCustomCVSAsync(obj, i, context)
            %OPCUSTOMCVSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opCustomCVS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.CustomCVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.CustomCVS.read(is_);
                returnValue = Test.CustomCVS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.CustomCVS.convert(returnValue);
                varargout{2} = Test.CustomCVS.convert(o);
            end
            future = obj.iceInvokeAsync('opCustomCVS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opCustomIntSS(obj, i, context)
            %OPCUSTOMINTSS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.CustomIntSS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCustomIntSS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.CustomIntSS.read(is_);
            returnValue = Test.CustomIntSS.read(is_);
            is_.endEncapsulation();
        end

        function future = opCustomIntSSAsync(obj, i, context)
            %OPCUSTOMINTSSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opCustomIntSS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.CustomIntSS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.CustomIntSS.read(is_);
                returnValue = Test.CustomIntSS.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = o;
            end
            future = obj.iceInvokeAsync('opCustomIntSS', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, o] = opCustomCVSS(obj, i, context)
            %OPCUSTOMCVSS
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       cell array
            %     o
            %       cell array
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.CustomCVSS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCustomCVSS', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            o = Test.CustomCVSS.read(is_);
            returnValue = Test.CustomCVSS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.CustomCVSS.convert(o);
            returnValue = Test.CustomCVSS.convert(returnValue);
        end

        function future = opCustomCVSSAsync(obj, i, context)
            %OPCUSTOMCVSSASYNC
            %
            %   Input Arguments
            %     i
            %       cell array
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opCustomCVSS, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                i (1, :) cell
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.CustomCVSS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.CustomCVSS.read(is_);
                returnValue = Test.CustomCVSS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.CustomCVSS.convert(returnValue);
                varargout{2} = Test.CustomCVSS.convert(o);
            end
            future = obj.iceInvokeAsync('opCustomCVSS', 0, true, os_, 2, @unmarshal, {}, context);
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
