classdef EchoPrx < Ice.ObjectPrx
    %ECHOPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.EchoPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   EchoPrx Methods:
    %     flushBatch
    %     flushBatchAsync - An asynchronous flushBatch.
    %     setConnection
    %     setConnectionAsync - An asynchronous setConnection.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     startBatch
    %     startBatchAsync - An asynchronous startBatch.
    %
    %   EchoPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Echo.
    %     uncheckedCast - Creates a EchoPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function setConnection(obj, context)
            %SETCONNECTION
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.EchoPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('setConnection', 0, false, [], false, {}, context);
        end

        function future = setConnectionAsync(obj, context)
            %SETCONNECTIONASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setConnection, Ice.Future.
            
            arguments
                obj (1, 1) Test.EchoPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('setConnection', 0, false, [], 0, [], {}, context);
        end

        function startBatch(obj, context)
            %STARTBATCH
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.EchoPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('startBatch', 0, false, [], false, {}, context);
        end

        function future = startBatchAsync(obj, context)
            %STARTBATCHASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also startBatch, Ice.Future.
            
            arguments
                obj (1, 1) Test.EchoPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('startBatch', 0, false, [], 0, [], {}, context);
        end

        function flushBatch(obj, context)
            %FLUSHBATCH
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.EchoPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('flushBatch', 0, false, [], false, {}, context);
        end

        function future = flushBatchAsync(obj, context)
            %FLUSHBATCHASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also flushBatch, Ice.Future.
            
            arguments
                obj (1, 1) Test.EchoPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('flushBatch', 0, false, [], 0, [], {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.EchoPrx
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
                obj (1, 1) Test.EchoPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Echo';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.EchoPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Echo.
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
            %     r - A Test.EchoPrx scalar if the target object implements Slice interface 
            %       ::Test::Echo; otherwise, an empty array of Test.EchoPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.EchoPrx.ice_staticId(), 'Test.EchoPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.EchoPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.EchoPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.EchoPrx', varargin{:});
        end
    end
end
