classdef RetryPrx < Ice.ObjectPrx
    %RETRYPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.RetryPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   RetryPrx Methods:
    %     op
    %     opAsync - An asynchronous op.
    %     opIdempotent
    %     opIdempotentAsync - An asynchronous opIdempotent.
    %     opNotIdempotent
    %     opNotIdempotentAsync - An asynchronous opNotIdempotent.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     sleep
    %     sleepAsync - An asynchronous sleep.
    %
    %   RetryPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Retry.
    %     uncheckedCast - Creates a RetryPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function op(obj, kill, context)
            %OP
            %
            %   Input Arguments
            %     kill
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.RetryPrx
                kill (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(kill);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('op', 0, false, os_, false, {}, context);
        end

        function future = opAsync(obj, kill, context)
            %OPASYNC
            %
            %   Input Arguments
            %     kill
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also op, Ice.Future.
            
            arguments
                obj (1, 1) Test.RetryPrx
                kill (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(kill);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('op', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = opIdempotent(obj, c, context)
            %OPIDEMPOTENT
            %
            %   Input Arguments
            %     c
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.RetryPrx
                c (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opIdempotent', 2, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = opIdempotentAsync(obj, c, context)
            %OPIDEMPOTENTASYNC
            %
            %   Input Arguments
            %     c
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opIdempotent, Ice.Future.
            
            arguments
                obj (1, 1) Test.RetryPrx
                c (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('opIdempotent', 2, true, os_, 1, @unmarshal, {}, context);
        end

        function opNotIdempotent(obj, context)
            %OPNOTIDEMPOTENT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.RetryPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('opNotIdempotent', 0, false, [], false, {}, context);
        end

        function future = opNotIdempotentAsync(obj, context)
            %OPNOTIDEMPOTENTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opNotIdempotent, Ice.Future.
            
            arguments
                obj (1, 1) Test.RetryPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('opNotIdempotent', 0, false, [], 0, [], {}, context);
        end

        function sleep(obj, delay, context)
            %SLEEP
            %
            %   Input Arguments
            %     delay
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.RetryPrx
                delay (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(delay);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sleep', 2, false, os_, false, {}, context);
        end

        function future = sleepAsync(obj, delay, context)
            %SLEEPASYNC
            %
            %   Input Arguments
            %     delay
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
                obj (1, 1) Test.RetryPrx
                delay (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(delay);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('sleep', 2, false, os_, 0, [], {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.RetryPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('shutdown', 2, false, [], false, {}, context);
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
                obj (1, 1) Test.RetryPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 2, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Retry';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.RetryPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Retry.
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
            %     r - A Test.RetryPrx scalar if the target object implements Slice interface 
            %       ::Test::Retry; otherwise, an empty array of Test.RetryPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.RetryPrx.ice_staticId(), 'Test.RetryPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.RetryPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.RetryPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.RetryPrx', varargin{:});
        end
    end
end
