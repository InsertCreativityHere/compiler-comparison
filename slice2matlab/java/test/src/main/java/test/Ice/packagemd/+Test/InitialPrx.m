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
    %     getTest1C2AsC1
    %     getTest1C2AsC1Async - An asynchronous getTest1C2AsC1.
    %     getTest1C2AsC2
    %     getTest1C2AsC2Async - An asynchronous getTest1C2AsC2.
    %     getTest2C2AsC1
    %     getTest2C2AsC1Async - An asynchronous getTest2C2AsC1.
    %     getTest2C2AsC2
    %     getTest2C2AsC2Async - An asynchronous getTest2C2AsC2.
    %     getTest3C2AsC1
    %     getTest3C2AsC1Async - An asynchronous getTest3C2AsC1.
    %     getTest3C2AsC2
    %     getTest3C2AsC2Async - An asynchronous getTest3C2AsC2.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     throwTest1E2AsE1
    %     throwTest1E2AsE1Async - An asynchronous throwTest1E2AsE1.
    %     throwTest1E2AsE2
    %     throwTest1E2AsE2Async - An asynchronous throwTest1E2AsE2.
    %     throwTest1Notify
    %     throwTest1NotifyAsync - An asynchronous throwTest1Notify.
    %     throwTest2E2AsE1
    %     throwTest2E2AsE1Async - An asynchronous throwTest2E2AsE1.
    %     throwTest2E2AsE2
    %     throwTest2E2AsE2Async - An asynchronous throwTest2E2AsE2.
    %     throwTest3E2AsE1
    %     throwTest3E2AsE1Async - An asynchronous throwTest3E2AsE1.
    %     throwTest3E2AsE2
    %     throwTest3E2AsE2Async - An asynchronous throwTest3E2AsE2.
    %
    %   InitialPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Initial.
    %     uncheckedCast - Creates a InitialPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getTest1C2AsC1(obj, context)
            %GETTEST1C2ASC1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test1.C1 scalar | empty array of Test1.C1
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getTest1C2AsC1', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test1.C1');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getTest1C2AsC1Async(obj, context)
            %GETTEST1C2ASC1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getTest1C2AsC1, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test1.C1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getTest1C2AsC1', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getTest1C2AsC2(obj, context)
            %GETTEST1C2ASC2
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test1.C2 scalar | empty array of Test1.C2
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getTest1C2AsC2', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test1.C2');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getTest1C2AsC2Async(obj, context)
            %GETTEST1C2ASC2ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getTest1C2AsC2, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test1.C2');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getTest1C2AsC2', 0, true, [], 1, @unmarshal, {}, context);
        end

        function throwTest1E2AsE1(obj, context)
            %THROWTEST1E2ASE1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test1.E1
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwTest1E2AsE1', 0, true, [], false, Test.InitialPrx.throwTest1E2AsE1_ex_, context);
        end

        function future = throwTest1E2AsE1Async(obj, context)
            %THROWTEST1E2ASE1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwTest1E2AsE1, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwTest1E2AsE1', 0, true, [], 0, [], Test.InitialPrx.throwTest1E2AsE1_ex_, context);
        end

        function throwTest1E2AsE2(obj, context)
            %THROWTEST1E2ASE2
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test1.E2
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwTest1E2AsE2', 0, true, [], false, Test.InitialPrx.throwTest1E2AsE2_ex_, context);
        end

        function future = throwTest1E2AsE2Async(obj, context)
            %THROWTEST1E2ASE2ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwTest1E2AsE2, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwTest1E2AsE2', 0, true, [], 0, [], Test.InitialPrx.throwTest1E2AsE2_ex_, context);
        end

        function throwTest1Notify(obj, context)
            %THROWTEST1NOTIFY
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test1.notify
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwTest1Notify', 0, true, [], false, Test.InitialPrx.throwTest1Notify_ex_, context);
        end

        function future = throwTest1NotifyAsync(obj, context)
            %THROWTEST1NOTIFYASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwTest1Notify, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwTest1Notify', 0, true, [], 0, [], Test.InitialPrx.throwTest1Notify_ex_, context);
        end

        function returnValue = getTest2C2AsC1(obj, context)
            %GETTEST2C2ASC1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test2.C1 scalar | empty array of Test2.C1
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getTest2C2AsC1', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test2.C1');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getTest2C2AsC1Async(obj, context)
            %GETTEST2C2ASC1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getTest2C2AsC1, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test2.C1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getTest2C2AsC1', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getTest2C2AsC2(obj, context)
            %GETTEST2C2ASC2
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test2.C2 scalar | empty array of Test2.C2
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getTest2C2AsC2', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test2.C2');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getTest2C2AsC2Async(obj, context)
            %GETTEST2C2ASC2ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getTest2C2AsC2, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test2.C2');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getTest2C2AsC2', 0, true, [], 1, @unmarshal, {}, context);
        end

        function throwTest2E2AsE1(obj, context)
            %THROWTEST2E2ASE1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test2.E1
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwTest2E2AsE1', 0, true, [], false, Test.InitialPrx.throwTest2E2AsE1_ex_, context);
        end

        function future = throwTest2E2AsE1Async(obj, context)
            %THROWTEST2E2ASE1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwTest2E2AsE1, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwTest2E2AsE1', 0, true, [], 0, [], Test.InitialPrx.throwTest2E2AsE1_ex_, context);
        end

        function throwTest2E2AsE2(obj, context)
            %THROWTEST2E2ASE2
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test2.E2
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwTest2E2AsE2', 0, true, [], false, Test.InitialPrx.throwTest2E2AsE2_ex_, context);
        end

        function future = throwTest2E2AsE2Async(obj, context)
            %THROWTEST2E2ASE2ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwTest2E2AsE2, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwTest2E2AsE2', 0, true, [], 0, [], Test.InitialPrx.throwTest2E2AsE2_ex_, context);
        end

        function returnValue = getTest3C2AsC1(obj, context)
            %GETTEST3C2ASC1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test3.C1 scalar | empty array of Test3.C1
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getTest3C2AsC1', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test3.C1');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getTest3C2AsC1Async(obj, context)
            %GETTEST3C2ASC1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getTest3C2AsC1, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test3.C1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getTest3C2AsC1', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getTest3C2AsC2(obj, context)
            %GETTEST3C2ASC2
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test3.C2 scalar | empty array of Test3.C2
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getTest3C2AsC2', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test3.C2');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getTest3C2AsC2Async(obj, context)
            %GETTEST3C2ASC2ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getTest3C2AsC2, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test3.C2');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getTest3C2AsC2', 0, true, [], 1, @unmarshal, {}, context);
        end

        function throwTest3E2AsE1(obj, context)
            %THROWTEST3E2ASE1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test3.E1
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwTest3E2AsE1', 0, true, [], false, Test.InitialPrx.throwTest3E2AsE1_ex_, context);
        end

        function future = throwTest3E2AsE1Async(obj, context)
            %THROWTEST3E2ASE1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwTest3E2AsE1, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwTest3E2AsE1', 0, true, [], 0, [], Test.InitialPrx.throwTest3E2AsE1_ex_, context);
        end

        function throwTest3E2AsE2(obj, context)
            %THROWTEST3E2ASE2
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test3.E2
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwTest3E2AsE2', 0, true, [], false, Test.InitialPrx.throwTest3E2AsE2_ex_, context);
        end

        function future = throwTest3E2AsE2Async(obj, context)
            %THROWTEST3E2ASE2ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwTest3E2AsE2, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwTest3E2AsE2', 0, true, [], 0, [], Test.InitialPrx.throwTest3E2AsE2_ex_, context);
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
        throwTest1E2AsE1_ex_ = { 'Test1.E1' }
        throwTest1E2AsE2_ex_ = { 'Test1.E2' }
        throwTest1Notify_ex_ = { 'Test1.notify' }
        throwTest2E2AsE1_ex_ = { 'Test2.E1' }
        throwTest2E2AsE2_ex_ = { 'Test2.E2' }
        throwTest3E2AsE1_ex_ = { 'Test3.E1' }
        throwTest3E2AsE2_ex_ = { 'Test3.E2' }
    end
end
