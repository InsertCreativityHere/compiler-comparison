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
    %     asyncException
    %     asyncExceptionAsync - An asynchronous asyncException.
    %     asyncResponse
    %     asyncResponseAsync - An asynchronous asyncResponse.
    %     csException
    %     csExceptionAsync - An asynchronous csException.
    %     impossibleException
    %     impossibleExceptionAsync - An asynchronous impossibleException.
    %     intfUserException
    %     intfUserExceptionAsync - An asynchronous intfUserException.
    %     localException
    %     localExceptionAsync - An asynchronous localException.
    %     requestFailedException
    %     requestFailedExceptionAsync - An asynchronous requestFailedException.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     unknownException
    %     unknownExceptionAsync - An asynchronous unknownException.
    %     unknownExceptionWithServantException
    %     unknownExceptionWithServantExceptionAsync - An asynchronous unknownExceptionWithServantException.
    %     unknownLocalException
    %     unknownLocalExceptionAsync - An asynchronous unknownLocalException.
    %     unknownUserException
    %     unknownUserExceptionAsync - An asynchronous unknownUserException.
    %     userException
    %     userExceptionAsync - An asynchronous userException.
    %
    %   TestIntfPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::TestIntf.
    %     uncheckedCast - Creates a TestIntfPrx from another proxy without any validation.
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function requestFailedException(obj, context)
            %REQUESTFAILEDEXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('requestFailedException', 0, false, [], false, {}, context);
        end

        function future = requestFailedExceptionAsync(obj, context)
            %REQUESTFAILEDEXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also requestFailedException, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('requestFailedException', 0, false, [], 0, [], {}, context);
        end

        function unknownUserException(obj, context)
            %UNKNOWNUSEREXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('unknownUserException', 0, false, [], false, {}, context);
        end

        function future = unknownUserExceptionAsync(obj, context)
            %UNKNOWNUSEREXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also unknownUserException, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('unknownUserException', 0, false, [], 0, [], {}, context);
        end

        function unknownLocalException(obj, context)
            %UNKNOWNLOCALEXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('unknownLocalException', 0, false, [], false, {}, context);
        end

        function future = unknownLocalExceptionAsync(obj, context)
            %UNKNOWNLOCALEXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also unknownLocalException, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('unknownLocalException', 0, false, [], 0, [], {}, context);
        end

        function unknownException(obj, context)
            %UNKNOWNEXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('unknownException', 0, false, [], false, {}, context);
        end

        function future = unknownExceptionAsync(obj, context)
            %UNKNOWNEXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also unknownException, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('unknownException', 0, false, [], 0, [], {}, context);
        end

        function localException(obj, context)
            %LOCALEXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('localException', 0, false, [], false, {}, context);
        end

        function future = localExceptionAsync(obj, context)
            %LOCALEXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also localException, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('localException', 0, false, [], 0, [], {}, context);
        end

        function userException(obj, context)
            %USEREXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('userException', 0, false, [], false, {}, context);
        end

        function future = userExceptionAsync(obj, context)
            %USEREXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also userException, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('userException', 0, false, [], 0, [], {}, context);
        end

        function csException(obj, context)
            %CSEXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('csException', 0, false, [], false, {}, context);
        end

        function future = csExceptionAsync(obj, context)
            %CSEXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also csException, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('csException', 0, false, [], 0, [], {}, context);
        end

        function unknownExceptionWithServantException(obj, context)
            %UNKNOWNEXCEPTIONWITHSERVANTEXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('unknownExceptionWithServantException', 0, false, [], false, {}, context);
        end

        function future = unknownExceptionWithServantExceptionAsync(obj, context)
            %UNKNOWNEXCEPTIONWITHSERVANTEXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also unknownExceptionWithServantException, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('unknownExceptionWithServantException', 0, false, [], 0, [], {}, context);
        end

        function returnValue = impossibleException(obj, shouldThrow, context)
            %IMPOSSIBLEEXCEPTION
            %
            %   Input Arguments
            %     shouldThrow
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            %
            %   Exceptions
            %     Test.TestImpossibleException
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                shouldThrow (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(shouldThrow);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('impossibleException', 0, true, os_, true, Test.TestIntfPrx.impossibleException_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = impossibleExceptionAsync(obj, shouldThrow, context)
            %IMPOSSIBLEEXCEPTIONASYNC
            %
            %   Input Arguments
            %     shouldThrow
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also impossibleException, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                shouldThrow (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(shouldThrow);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('impossibleException', 0, true, os_, 1, @unmarshal, Test.TestIntfPrx.impossibleException_ex_, context);
        end

        function returnValue = intfUserException(obj, shouldThrow, context)
            %INTFUSEREXCEPTION
            %
            %   Input Arguments
            %     shouldThrow
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            %
            %   Exceptions
            %     Test.TestIntfUserException
            %     Test.TestImpossibleException
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                shouldThrow (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(shouldThrow);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('intfUserException', 0, true, os_, true, Test.TestIntfPrx.intfUserException_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = intfUserExceptionAsync(obj, shouldThrow, context)
            %INTFUSEREXCEPTIONASYNC
            %
            %   Input Arguments
            %     shouldThrow
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also intfUserException, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                shouldThrow (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(shouldThrow);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('intfUserException', 0, true, os_, 1, @unmarshal, Test.TestIntfPrx.intfUserException_ex_, context);
        end

        function asyncResponse(obj, context)
            %ASYNCRESPONSE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.TestIntfUserException
            %     Test.TestImpossibleException
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('asyncResponse', 0, true, [], false, Test.TestIntfPrx.asyncResponse_ex_, context);
        end

        function future = asyncResponseAsync(obj, context)
            %ASYNCRESPONSEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also asyncResponse, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('asyncResponse', 0, true, [], 0, [], Test.TestIntfPrx.asyncResponse_ex_, context);
        end

        function asyncException(obj, context)
            %ASYNCEXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.TestIntfUserException
            %     Test.TestImpossibleException
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('asyncException', 0, true, [], false, Test.TestIntfPrx.asyncException_ex_, context);
        end

        function future = asyncExceptionAsync(obj, context)
            %ASYNCEXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also asyncException, Ice.Future.
            
            arguments
                obj (1, 1) Test.TestIntfPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('asyncException', 0, true, [], 0, [], Test.TestIntfPrx.asyncException_ex_, context);
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
        impossibleException_ex_ = { 'Test.TestImpossibleException' }
        intfUserException_ex_ = { 'Test.TestIntfUserException', 'Test.TestImpossibleException' }
        asyncResponse_ex_ = { 'Test.TestIntfUserException', 'Test.TestImpossibleException' }
        asyncException_ex_ = { 'Test.TestIntfUserException', 'Test.TestImpossibleException' }
    end
end
