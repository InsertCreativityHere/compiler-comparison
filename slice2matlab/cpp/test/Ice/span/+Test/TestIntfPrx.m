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
    %     opByteSpan
    %     opByteSpanAsync - An asynchronous opByteSpan.
    %     opOptionalByteSpan
    %     opOptionalByteSpanAsync - An asynchronous opOptionalByteSpan.
    %     opOptionalShortSpan
    %     opOptionalShortSpanAsync - An asynchronous opOptionalShortSpan.
    %     opOptionalStringSpan
    %     opOptionalStringSpanAsync - An asynchronous opOptionalStringSpan.
    %     opShortSpan
    %     opShortSpanAsync - An asynchronous opShortSpan.
    %     opStringSpan
    %     opStringSpanAsync - An asynchronous opStringSpan.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   TestIntfPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntf.
    %     uncheckedCast - Creates a TestIntfPrx from another proxy without any validation.
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [returnValue, dataOut] = opByteSpan(obj, dataIn, context)
            %OPBYTESPAN
            %
            %   Input Arguments
            %     dataIn
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector
            %     dataOut
            %       uint8 vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                dataIn (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(dataIn);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteSpan', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            dataOut = is_.readByteSeq();
            returnValue = is_.readByteSeq();
            is_.endEncapsulation();
        end

        function future = opByteSpanAsync(obj, dataIn, context)
            %OPBYTESPANASYNC
            %
            %   Input Arguments
            %     dataIn
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opByteSpan, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                dataIn (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(dataIn);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                dataOut = is_.readByteSeq();
                returnValue = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = dataOut;
            end
            future = obj.iceInvokeAsync('opByteSpan', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, dataOut] = opShortSpan(obj, dataIn, context)
            %OPSHORTSPAN
            %
            %   Input Arguments
            %     dataIn
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 vector
            %     dataOut
            %       int16 vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                dataIn (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(dataIn);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortSpan', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            dataOut = is_.readShortSeq();
            returnValue = is_.readShortSeq();
            is_.endEncapsulation();
        end

        function future = opShortSpanAsync(obj, dataIn, context)
            %OPSHORTSPANASYNC
            %
            %   Input Arguments
            %     dataIn
            %       int16 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opShortSpan, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                dataIn (1, :) int16
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(dataIn);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                dataOut = is_.readShortSeq();
                returnValue = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = dataOut;
            end
            future = obj.iceInvokeAsync('opShortSpan', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, dataOut] = opStringSpan(obj, dataIn, context)
            %OPSTRINGSPAN
            %
            %   Input Arguments
            %     dataIn
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            %     dataOut
            %       string vector
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                dataIn (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(dataIn);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringSpan', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            dataOut = is_.readStringSeq();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = opStringSpanAsync(obj, dataIn, context)
            %OPSTRINGSPANASYNC
            %
            %   Input Arguments
            %     dataIn
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opStringSpan, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                dataIn (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(dataIn);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                dataOut = is_.readStringSeq();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = dataOut;
            end
            future = obj.iceInvokeAsync('opStringSpan', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, dataOut] = opOptionalByteSpan(obj, dataIn, context)
            %OPOPTIONALBYTESPAN
            %
            %   Input Arguments
            %     dataIn
            %       uint8 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       uint8 vector | Ice.Unset
            %     dataOut
            %       uint8 vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                dataIn (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(1, dataIn);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptionalByteSpan', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readByteSeqOpt(10);
            dataOut = is_.readByteSeqOpt(11);
            is_.endEncapsulation();
        end

        function future = opOptionalByteSpanAsync(obj, dataIn, context)
            %OPOPTIONALBYTESPANASYNC
            %
            %   Input Arguments
            %     dataIn
            %       uint8 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptionalByteSpan, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                dataIn (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(1, dataIn);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readByteSeqOpt(10);
                dataOut = is_.readByteSeqOpt(11);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = dataOut;
            end
            future = obj.iceInvokeAsync('opOptionalByteSpan', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, dataOut] = opOptionalShortSpan(obj, dataIn, context)
            %OPOPTIONALSHORTSPAN
            %
            %   Input Arguments
            %     dataIn
            %       int16 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int16 vector | Ice.Unset
            %     dataOut
            %       int16 vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                dataIn (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeqOpt(1, dataIn);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptionalShortSpan', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readShortSeqOpt(10);
            dataOut = is_.readShortSeqOpt(11);
            is_.endEncapsulation();
        end

        function future = opOptionalShortSpanAsync(obj, dataIn, context)
            %OPOPTIONALSHORTSPANASYNC
            %
            %   Input Arguments
            %     dataIn
            %       int16 vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptionalShortSpan, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                dataIn (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeqOpt(1, dataIn);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readShortSeqOpt(10);
                dataOut = is_.readShortSeqOpt(11);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = dataOut;
            end
            future = obj.iceInvokeAsync('opOptionalShortSpan', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, dataOut] = opOptionalStringSpan(obj, dataIn, context)
            %OPOPTIONALSTRINGSPAN
            %
            %   Input Arguments
            %     dataIn
            %       string vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector | Ice.Unset
            %     dataOut
            %       string vector | Ice.Unset
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                dataIn (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeqOpt(1, dataIn);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptionalStringSpan', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeqOpt(10);
            dataOut = is_.readStringSeqOpt(11);
            is_.endEncapsulation();
        end

        function future = opOptionalStringSpanAsync(obj, dataIn, context)
            %OPOPTIONALSTRINGSPANASYNC
            %
            %   Input Arguments
            %     dataIn
            %       string vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opOptionalStringSpan, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                dataIn (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeqOpt(1, dataIn);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeqOpt(10);
                dataOut = is_.readStringSeqOpt(11);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = dataOut;
            end
            future = obj.iceInvokeAsync('opOptionalStringSpan', 0, true, os_, 2, @unmarshal, {}, context);
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
