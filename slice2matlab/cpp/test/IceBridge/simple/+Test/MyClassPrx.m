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
    %     callCallback
    %     callCallbackAsync - An asynchronous callCallback.
    %     callDatagramCallback
    %     callDatagramCallbackAsync - An asynchronous callDatagramCallback.
    %     closeConnection
    %     closeConnectionAsync - An asynchronous closeConnection.
    %     datagram
    %     datagramAsync - An asynchronous datagram.
    %     getCallbackCount
    %     getCallbackCountAsync - An asynchronous getCallbackCount.
    %     getCallbackDatagramCount
    %     getCallbackDatagramCountAsync - An asynchronous getCallbackDatagramCount.
    %     getConnectionCount
    %     getConnectionCountAsync - An asynchronous getConnectionCount.
    %     getConnectionInfo
    %     getConnectionInfoAsync - An asynchronous getConnectionInfo.
    %     getDatagramCount
    %     getDatagramCountAsync - An asynchronous getDatagramCount.
    %     incCounter
    %     incCounterAsync - An asynchronous incCounter.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     waitCounter
    %     waitCounterAsync - An asynchronous waitCounter.
    %
    %   MyClassPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::MyClass.
    %     uncheckedCast - Creates a MyClassPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function callCallback(obj, context)
            %CALLCALLBACK
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('callCallback', 0, false, [], false, {}, context);
        end

        function future = callCallbackAsync(obj, context)
            %CALLCALLBACKASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also callCallback, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('callCallback', 0, false, [], 0, [], {}, context);
        end

        function returnValue = getCallbackCount(obj, context)
            %GETCALLBACKCOUNT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getCallbackCount', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getCallbackCountAsync(obj, context)
            %GETCALLBACKCOUNTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getCallbackCount, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getCallbackCount', 0, true, [], 1, @unmarshal, {}, context);
        end

        function incCounter(obj, expected, context)
            %INCCOUNTER
            %
            %   Input Arguments
            %     expected
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                expected (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(expected);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('incCounter', 0, false, os_, false, {}, context);
        end

        function future = incCounterAsync(obj, expected, context)
            %INCCOUNTERASYNC
            %
            %   Input Arguments
            %     expected
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also incCounter, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                expected (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(expected);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('incCounter', 0, false, os_, 0, [], {}, context);
        end

        function waitCounter(obj, value, context)
            %WAITCOUNTER
            %
            %   Input Arguments
            %     value
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                value (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(value);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('waitCounter', 0, false, os_, false, {}, context);
        end

        function future = waitCounterAsync(obj, value, context)
            %WAITCOUNTERASYNC
            %
            %   Input Arguments
            %     value
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also waitCounter, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                value (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(value);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('waitCounter', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = getConnectionCount(obj, context)
            %GETCONNECTIONCOUNT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getConnectionCount', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getConnectionCountAsync(obj, context)
            %GETCONNECTIONCOUNTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getConnectionCount, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getConnectionCount', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getConnectionInfo(obj, context)
            %GETCONNECTIONINFO
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getConnectionInfo', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getConnectionInfoAsync(obj, context)
            %GETCONNECTIONINFOASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getConnectionInfo, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getConnectionInfo', 0, true, [], 1, @unmarshal, {}, context);
        end

        function closeConnection(obj, force, context)
            %CLOSECONNECTION
            %
            %   Input Arguments
            %     force
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                force (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(force);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('closeConnection', 0, false, os_, false, {}, context);
        end

        function future = closeConnectionAsync(obj, force, context)
            %CLOSECONNECTIONASYNC
            %
            %   Input Arguments
            %     force
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also closeConnection, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                force (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(force);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('closeConnection', 0, false, os_, 0, [], {}, context);
        end

        function datagram(obj, context)
            %DATAGRAM
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('datagram', 0, false, [], false, {}, context);
        end

        function future = datagramAsync(obj, context)
            %DATAGRAMASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also datagram, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('datagram', 0, false, [], 0, [], {}, context);
        end

        function returnValue = getDatagramCount(obj, context)
            %GETDATAGRAMCOUNT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getDatagramCount', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getDatagramCountAsync(obj, context)
            %GETDATAGRAMCOUNTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getDatagramCount, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getDatagramCount', 0, true, [], 1, @unmarshal, {}, context);
        end

        function callDatagramCallback(obj, context)
            %CALLDATAGRAMCALLBACK
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('callDatagramCallback', 0, false, [], false, {}, context);
        end

        function future = callDatagramCallbackAsync(obj, context)
            %CALLDATAGRAMCALLBACKASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also callDatagramCallback, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('callDatagramCallback', 0, false, [], 0, [], {}, context);
        end

        function returnValue = getCallbackDatagramCount(obj, context)
            %GETCALLBACKDATAGRAMCOUNT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getCallbackDatagramCount', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getCallbackDatagramCountAsync(obj, context)
            %GETCALLBACKDATAGRAMCOUNTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getCallbackDatagramCount, Ice.Future.
            
            arguments
                obj (1, 1) Test.MyClassPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getCallbackDatagramCount', 0, true, [], 1, @unmarshal, {}, context);
        end

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
