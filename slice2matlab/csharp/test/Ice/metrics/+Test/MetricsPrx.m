classdef MetricsPrx < Ice.ObjectPrx
    %METRICSPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.MetricsPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   MetricsPrx Methods:
    %     fail
    %     failAsync - An asynchronous fail.
    %     getAdmin
    %     getAdminAsync - An asynchronous getAdmin.
    %     op
    %     opAsync - An asynchronous op.
    %     opByteS
    %     opByteSAsync - An asynchronous opByteS.
    %     opWithLocalException
    %     opWithLocalExceptionAsync - An asynchronous opWithLocalException.
    %     opWithRequestFailedException
    %     opWithRequestFailedExceptionAsync - An asynchronous opWithRequestFailedException.
    %     opWithUnknownException
    %     opWithUnknownExceptionAsync - An asynchronous opWithUnknownException.
    %     opWithUserException
    %     opWithUserExceptionAsync - An asynchronous opWithUserException.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   MetricsPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Metrics.
    %     uncheckedCast - Creates a MetricsPrx from another proxy without any validation.
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function op(obj, context)
            %OP
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MetricsPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('op', 0, false, [], false, {}, context);
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
                obj (1, 1) Test.MetricsPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('op', 0, false, [], 0, [], {}, context);
        end

        function fail(obj, context)
            %FAIL
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MetricsPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('fail', 2, false, [], false, {}, context);
        end

        function future = failAsync(obj, context)
            %FAILASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also fail, Ice.Future.
            
            arguments
                obj (1, 1) Test.MetricsPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('fail', 2, false, [], 0, [], {}, context);
        end

        function opWithUserException(obj, context)
            %OPWITHUSEREXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.UserEx
            
            arguments
                obj (1, 1) Test.MetricsPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('opWithUserException', 0, true, [], false, Test.MetricsPrx.opWithUserException_ex_, context);
        end

        function future = opWithUserExceptionAsync(obj, context)
            %OPWITHUSEREXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opWithUserException, Ice.Future.
            
            arguments
                obj (1, 1) Test.MetricsPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('opWithUserException', 0, true, [], 0, [], Test.MetricsPrx.opWithUserException_ex_, context);
        end

        function opWithRequestFailedException(obj, context)
            %OPWITHREQUESTFAILEDEXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MetricsPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('opWithRequestFailedException', 0, false, [], false, {}, context);
        end

        function future = opWithRequestFailedExceptionAsync(obj, context)
            %OPWITHREQUESTFAILEDEXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opWithRequestFailedException, Ice.Future.
            
            arguments
                obj (1, 1) Test.MetricsPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('opWithRequestFailedException', 0, false, [], 0, [], {}, context);
        end

        function opWithLocalException(obj, context)
            %OPWITHLOCALEXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MetricsPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('opWithLocalException', 0, false, [], false, {}, context);
        end

        function future = opWithLocalExceptionAsync(obj, context)
            %OPWITHLOCALEXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opWithLocalException, Ice.Future.
            
            arguments
                obj (1, 1) Test.MetricsPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('opWithLocalException', 0, false, [], 0, [], {}, context);
        end

        function opWithUnknownException(obj, context)
            %OPWITHUNKNOWNEXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MetricsPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('opWithUnknownException', 0, false, [], false, {}, context);
        end

        function future = opWithUnknownExceptionAsync(obj, context)
            %OPWITHUNKNOWNEXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opWithUnknownException, Ice.Future.
            
            arguments
                obj (1, 1) Test.MetricsPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('opWithUnknownException', 0, false, [], 0, [], {}, context);
        end

        function opByteS(obj, bs, context)
            %OPBYTES
            %
            %   Input Arguments
            %     bs
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MetricsPrx
                bs (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(bs);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opByteS', 0, false, os_, false, {}, context);
        end

        function future = opByteSAsync(obj, bs, context)
            %OPBYTESASYNC
            %
            %   Input Arguments
            %     bs
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
                obj (1, 1) Test.MetricsPrx
                bs (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(bs);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('opByteS', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = getAdmin(obj, context)
            %GETADMIN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            
            arguments
                obj (1, 1) Test.MetricsPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getAdmin', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = getAdminAsync(obj, context)
            %GETADMINASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getAdmin, Ice.Future.
            
            arguments
                obj (1, 1) Test.MetricsPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getAdmin', 0, true, [], 1, @unmarshal, {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.MetricsPrx
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
                obj (1, 1) Test.MetricsPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Metrics';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.MetricsPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Metrics.
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
            %     r - A Test.MetricsPrx scalar if the target object implements Slice interface 
            %       ::Test::Metrics; otherwise, an empty array of Test.MetricsPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MetricsPrx.ice_staticId(), 'Test.MetricsPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.MetricsPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.MetricsPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MetricsPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        opWithUserException_ex_ = { 'Test.UserEx' }
    end
end
