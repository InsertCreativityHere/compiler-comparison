classdef InitialPrx < Ice.ObjectPrx
    %INITIALPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.InitialPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   InitialPrx Methods:
    %     getConcreteClass
    %     getConcreteClassAsync - An asynchronous getConcreteClass.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     throwException
    %     throwExceptionAsync - An asynchronous throwException.
    %
    %   InitialPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Initial.
    %     uncheckedCast - Creates a InitialPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getConcreteClass(obj, context)
            %GETCONCRETECLASS
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.ConcreteClass scalar | empty array of Test.ConcreteClass
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getConcreteClass', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.ConcreteClass');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getConcreteClassAsync(obj, context)
            %GETCONCRETECLASSASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getConcreteClass, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.ConcreteClass');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getConcreteClass', 0, true, [], 1, @unmarshal, {}, context);
        end

        function throwException(obj, context)
            %THROWEXCEPTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.E
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwException', 0, true, [], false, Test.InitialPrx.throwException_ex_, context);
        end

        function future = throwExceptionAsync(obj, context)
            %THROWEXCEPTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwException, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwException', 0, true, [], 0, [], Test.InitialPrx.throwException_ex_, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.InitialPrx
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
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Initial';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.InitialPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Initial.
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
            %     r - A Test.InitialPrx scalar if the target object implements Slice interface 
            %       ::Test::Initial; otherwise, an empty array of Test.InitialPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.InitialPrx.ice_staticId(), 'Test.InitialPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.InitialPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.InitialPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.InitialPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        throwException_ex_ = { 'Test.E' }
    end
end
