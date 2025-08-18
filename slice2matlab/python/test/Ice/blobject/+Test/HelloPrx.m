classdef HelloPrx < Ice.ObjectPrx
    %HELLOPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.HelloPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   HelloPrx Methods:
    %     add
    %     addAsync - An asynchronous add.
    %     raiseUE
    %     raiseUEAsync - An asynchronous raiseUE.
    %     sayHello
    %     sayHelloAsync - An asynchronous sayHello.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   HelloPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Hello.
    %     uncheckedCast - Creates a HelloPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function sayHello(obj, delay, context)
            %SAYHELLO
            %
            %   Input Arguments
            %     delay
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.HelloPrx
                delay (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(delay);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sayHello', 0, false, os_, false, {}, context);
        end

        function future = sayHelloAsync(obj, delay, context)
            %SAYHELLOASYNC
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
            %   See also sayHello, Ice.Future.
            
            arguments
                obj (1, 1) Test.HelloPrx
                delay (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(delay);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('sayHello', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = add(obj, s1, s2, context)
            %ADD
            %
            %   Input Arguments
            %     s1
            %       int32 scalar
            %     s2
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.HelloPrx
                s1 (1, 1) int32
                s2 (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(s1);
            os_.writeInt(s2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('add', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = addAsync(obj, s1, s2, context)
            %ADDASYNC
            %
            %   Input Arguments
            %     s1
            %       int32 scalar
            %     s2
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also add, Ice.Future.
            
            arguments
                obj (1, 1) Test.HelloPrx
                s1 (1, 1) int32
                s2 (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(s1);
            os_.writeInt(s2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('add', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function raiseUE(obj, context)
            %RAISEUE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.UE
            
            arguments
                obj (1, 1) Test.HelloPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('raiseUE', 0, true, [], false, Test.HelloPrx.raiseUE_ex_, context);
        end

        function future = raiseUEAsync(obj, context)
            %RAISEUEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also raiseUE, Ice.Future.
            
            arguments
                obj (1, 1) Test.HelloPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('raiseUE', 0, true, [], 0, [], Test.HelloPrx.raiseUE_ex_, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.HelloPrx
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
                obj (1, 1) Test.HelloPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Hello';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.HelloPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Hello.
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
            %     r - A Test.HelloPrx scalar if the target object implements Slice interface 
            %       ::Test::Hello; otherwise, an empty array of Test.HelloPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.HelloPrx.ice_staticId(), 'Test.HelloPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.HelloPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.HelloPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.HelloPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        raiseUE_ex_ = { 'Test.UE' }
    end
end
