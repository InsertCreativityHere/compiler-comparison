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
    %     getNoNamespaceC2AsC1
    %     getNoNamespaceC2AsC1Async - An asynchronous getNoNamespaceC2AsC1.
    %     getNoNamespaceC2AsC2
    %     getNoNamespaceC2AsC2Async - An asynchronous getNoNamespaceC2AsC2.
    %     getWithNamespaceC2AsC1
    %     getWithNamespaceC2AsC1Async - An asynchronous getWithNamespaceC2AsC1.
    %     getWithNamespaceC2AsC2
    %     getWithNamespaceC2AsC2Async - An asynchronous getWithNamespaceC2AsC2.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     throwNoNamespaceE2AsE1
    %     throwNoNamespaceE2AsE1Async - An asynchronous throwNoNamespaceE2AsE1.
    %     throwNoNamespaceE2AsE2
    %     throwNoNamespaceE2AsE2Async - An asynchronous throwNoNamespaceE2AsE2.
    %     throwNoNamespaceNotify
    %     throwNoNamespaceNotifyAsync - An asynchronous throwNoNamespaceNotify.
    %     throwWithNamespaceE2AsE1
    %     throwWithNamespaceE2AsE1Async - An asynchronous throwWithNamespaceE2AsE1.
    %     throwWithNamespaceE2AsE2
    %     throwWithNamespaceE2AsE2Async - An asynchronous throwWithNamespaceE2AsE2.
    %
    %   InitialPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Initial.
    %     uncheckedCast - Creates a InitialPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getNoNamespaceC2AsC1(obj, context)
            %GETNONAMESPACEC2ASC1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       NoNamespace.C1 scalar | empty array of NoNamespace.C1
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getNoNamespaceC2AsC1', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'NoNamespace.C1');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getNoNamespaceC2AsC1Async(obj, context)
            %GETNONAMESPACEC2ASC1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getNoNamespaceC2AsC1, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'NoNamespace.C1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getNoNamespaceC2AsC1', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getNoNamespaceC2AsC2(obj, context)
            %GETNONAMESPACEC2ASC2
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       NoNamespace.C2 scalar | empty array of NoNamespace.C2
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getNoNamespaceC2AsC2', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'NoNamespace.C2');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getNoNamespaceC2AsC2Async(obj, context)
            %GETNONAMESPACEC2ASC2ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getNoNamespaceC2AsC2, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'NoNamespace.C2');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getNoNamespaceC2AsC2', 0, true, [], 1, @unmarshal, {}, context);
        end

        function throwNoNamespaceE2AsE1(obj, context)
            %THROWNONAMESPACEE2ASE1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     NoNamespace.E1
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwNoNamespaceE2AsE1', 0, true, [], false, Test.InitialPrx.throwNoNamespaceE2AsE1_ex_, context);
        end

        function future = throwNoNamespaceE2AsE1Async(obj, context)
            %THROWNONAMESPACEE2ASE1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwNoNamespaceE2AsE1, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwNoNamespaceE2AsE1', 0, true, [], 0, [], Test.InitialPrx.throwNoNamespaceE2AsE1_ex_, context);
        end

        function throwNoNamespaceE2AsE2(obj, context)
            %THROWNONAMESPACEE2ASE2
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     NoNamespace.E2
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwNoNamespaceE2AsE2', 0, true, [], false, Test.InitialPrx.throwNoNamespaceE2AsE2_ex_, context);
        end

        function future = throwNoNamespaceE2AsE2Async(obj, context)
            %THROWNONAMESPACEE2ASE2ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwNoNamespaceE2AsE2, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwNoNamespaceE2AsE2', 0, true, [], 0, [], Test.InitialPrx.throwNoNamespaceE2AsE2_ex_, context);
        end

        function throwNoNamespaceNotify(obj, context)
            %THROWNONAMESPACENOTIFY
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     NoNamespace.notify
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwNoNamespaceNotify', 0, true, [], false, Test.InitialPrx.throwNoNamespaceNotify_ex_, context);
        end

        function future = throwNoNamespaceNotifyAsync(obj, context)
            %THROWNONAMESPACENOTIFYASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwNoNamespaceNotify, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwNoNamespaceNotify', 0, true, [], 0, [], Test.InitialPrx.throwNoNamespaceNotify_ex_, context);
        end

        function returnValue = getWithNamespaceC2AsC1(obj, context)
            %GETWITHNAMESPACEC2ASC1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       WithNamespace.C1 scalar | empty array of WithNamespace.C1
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getWithNamespaceC2AsC1', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'WithNamespace.C1');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getWithNamespaceC2AsC1Async(obj, context)
            %GETWITHNAMESPACEC2ASC1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getWithNamespaceC2AsC1, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'WithNamespace.C1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getWithNamespaceC2AsC1', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getWithNamespaceC2AsC2(obj, context)
            %GETWITHNAMESPACEC2ASC2
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       WithNamespace.C2 scalar | empty array of WithNamespace.C2
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getWithNamespaceC2AsC2', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'WithNamespace.C2');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getWithNamespaceC2AsC2Async(obj, context)
            %GETWITHNAMESPACEC2ASC2ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getWithNamespaceC2AsC2, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'WithNamespace.C2');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getWithNamespaceC2AsC2', 0, true, [], 1, @unmarshal, {}, context);
        end

        function throwWithNamespaceE2AsE1(obj, context)
            %THROWWITHNAMESPACEE2ASE1
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     WithNamespace.E1
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwWithNamespaceE2AsE1', 0, true, [], false, Test.InitialPrx.throwWithNamespaceE2AsE1_ex_, context);
        end

        function future = throwWithNamespaceE2AsE1Async(obj, context)
            %THROWWITHNAMESPACEE2ASE1ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwWithNamespaceE2AsE1, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwWithNamespaceE2AsE1', 0, true, [], 0, [], Test.InitialPrx.throwWithNamespaceE2AsE1_ex_, context);
        end

        function throwWithNamespaceE2AsE2(obj, context)
            %THROWWITHNAMESPACEE2ASE2
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     WithNamespace.E2
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('throwWithNamespaceE2AsE2', 0, true, [], false, Test.InitialPrx.throwWithNamespaceE2AsE2_ex_, context);
        end

        function future = throwWithNamespaceE2AsE2Async(obj, context)
            %THROWWITHNAMESPACEE2ASE2ASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also throwWithNamespaceE2AsE2, Ice.Future.
            
            arguments
                obj (1, 1) Test.InitialPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('throwWithNamespaceE2AsE2', 0, true, [], 0, [], Test.InitialPrx.throwWithNamespaceE2AsE2_ex_, context);
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
        throwNoNamespaceE2AsE1_ex_ = { 'NoNamespace.E1' }
        throwNoNamespaceE2AsE2_ex_ = { 'NoNamespace.E2' }
        throwNoNamespaceNotify_ex_ = { 'NoNamespace.notify' }
        throwWithNamespaceE2AsE1_ex_ = { 'WithNamespace.E1' }
        throwWithNamespaceE2AsE2_ex_ = { 'WithNamespace.E2' }
    end
end
