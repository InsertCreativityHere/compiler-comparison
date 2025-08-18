classdef ServerFactoryPrx < Ice.ObjectPrx
    %SERVERFACTORYPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.ServerFactoryPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ServerFactoryPrx Methods:
    %     createServer
    %     createServerAsync - An asynchronous createServer.
    %     destroyServer
    %     destroyServerAsync - An asynchronous destroyServer.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   ServerFactoryPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::ServerFactory.
    %     uncheckedCast - Creates a ServerFactoryPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = createServer(obj, props, context)
            %CREATESERVER
            %
            %   Input Arguments
            %     props
            %       string, string) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.ServerPrx scalar | empty array of Test.ServerPrx
            
            arguments
                obj (1, 1) Test.ServerFactoryPrx
                props (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.Properties.write(os_, props);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('createServer', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Test.ServerPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = createServerAsync(obj, props, context)
            %CREATESERVERASYNC
            %
            %   Input Arguments
            %     props
            %       string, string) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also createServer, Ice.Future.
            
            arguments
                obj (1, 1) Test.ServerFactoryPrx
                props (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.Properties.write(os_, props);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.ServerPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('createServer', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function destroyServer(obj, srv, context)
            %DESTROYSERVER
            %
            %   Input Arguments
            %     srv
            %       Test.ServerPrx scalar | empty array of Test.ServerPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ServerFactoryPrx
                srv Test.ServerPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(srv);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('destroyServer', 0, false, os_, false, {}, context);
        end

        function future = destroyServerAsync(obj, srv, context)
            %DESTROYSERVERASYNC
            %
            %   Input Arguments
            %     srv
            %       Test.ServerPrx scalar | empty array of Test.ServerPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also destroyServer, Ice.Future.
            
            arguments
                obj (1, 1) Test.ServerFactoryPrx
                srv Test.ServerPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(srv);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('destroyServer', 0, false, os_, 0, [], {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ServerFactoryPrx
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
                obj (1, 1) Test.ServerFactoryPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::ServerFactory';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.ServerFactoryPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::ServerFactory.
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
            %     r - A Test.ServerFactoryPrx scalar if the target object implements Slice interface 
            %       ::Test::ServerFactory; otherwise, an empty array of Test.ServerFactoryPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.ServerFactoryPrx.ice_staticId(), 'Test.ServerFactoryPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.ServerFactoryPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.ServerFactoryPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.ServerFactoryPrx', varargin{:});
        end
    end
end
