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
    %     sayHello
    %     sayHelloAsync - An asynchronous sayHello.
    %
    %   HelloPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Hello.
    %     uncheckedCast - Creates a HelloPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function sayHello(obj, context)
            %SAYHELLO
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.HelloPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('sayHello', 0, false, [], false, {}, context);
        end

        function future = sayHelloAsync(obj, context)
            %SAYHELLOASYNC
            %
            %   Input Arguments
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
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('sayHello', 0, false, [], 0, [], {}, context);
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
end
