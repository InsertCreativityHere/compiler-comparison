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
    %     callOpOn
    %     callOpOnAsync - An asynchronous callOpOn.
    %     op
    %     opAsync - An asynchronous op.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     sleep
    %     sleepAsync - An asynchronous sleep.
    %     throwUnhandledException1
    %     throwUnhandledException1Async - An asynchronous throwUnhandledException1.
    %     throwUnhandledException2
    %     throwUnhandledException2Async - An asynchronous throwUnhandledException2.
    %     throwUserException1
    %     throwUserException1Async - An asynchronous throwUserException1.
    %     throwUserException2
    %     throwUserException2Async - An asynchronous throwUserException2.
    %
    %   TestIntfPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntf.
    %     uncheckedCast - Creates a TestIntfPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = op(obj, context)
            %OP
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
            is_ = obj.iceInvoke('op', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
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
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('op', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = callOpOn(obj, proxy, context)
            %CALLOPON
            %
            %   Input Arguments
            %     proxy
            %       Test.TestIntfPrx scalar | empty array of Test.TestIntfPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                proxy Test.TestIntfPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('callOpOn', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = callOpOnAsync(obj, proxy, context)
            %CALLOPONASYNC
            %
            %   Input Arguments
            %     proxy
            %       Test.TestIntfPrx scalar | empty array of Test.TestIntfPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also callOpOn, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                proxy Test.TestIntfPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('callOpOn', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function throwUserException1(obj, context)
            %THROWUSEREXCEPTION1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.TestException
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwUserException1', 0, true, [], false, Test.TestIntfPrx.throwUserException1_ex_, context);
        end

        function future = throwUserException1Async(obj, context)
            %THROWUSEREXCEPTION1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwUserException1, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwUserException1', 0, true, [], 0, [], Test.TestIntfPrx.throwUserException1_ex_, context);
        end

        function throwUserException2(obj, context)
            %THROWUSEREXCEPTION2
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.TestException
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwUserException2', 0, true, [], false, Test.TestIntfPrx.throwUserException2_ex_, context);
        end

        function future = throwUserException2Async(obj, context)
            %THROWUSEREXCEPTION2ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwUserException2, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwUserException2', 0, true, [], 0, [], Test.TestIntfPrx.throwUserException2_ex_, context);
        end

        function throwUnhandledException1(obj, context)
            %THROWUNHANDLEDEXCEPTION1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwUnhandledException1', 0, false, [], false, {}, context);
        end

        function future = throwUnhandledException1Async(obj, context)
            %THROWUNHANDLEDEXCEPTION1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwUnhandledException1, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwUnhandledException1', 0, false, [], 0, [], {}, context);
        end

        function throwUnhandledException2(obj, context)
            %THROWUNHANDLEDEXCEPTION2
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwUnhandledException2', 0, false, [], false, {}, context);
        end

        function future = throwUnhandledException2Async(obj, context)
            %THROWUNHANDLEDEXCEPTION2ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwUnhandledException2, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwUnhandledException2', 0, false, [], 0, [], {}, context);
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

    properties (Constant, Access = private)
        throwUserException1_ex_ = { 'Test.TestException' }
        throwUserException2_ex_ = { 'Test.TestException' }
    end
end
