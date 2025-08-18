classdef ResponderPrx < Ice.ObjectPrx
    %RESPONDERPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.ResponderPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ResponderPrx Methods:
    %     pendingResponseCount
    %     pendingResponseCountAsync - An asynchronous pendingResponseCount.
    %     start
    %     startAsync - An asynchronous start.
    %     stop
    %     stopAsync - An asynchronous stop.
    %
    %   ResponderPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Responder.
    %     uncheckedCast - Creates a ResponderPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function start(obj, context)
            %START
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ResponderPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('start', 0, false, [], false, {}, context);
        end

        function future = startAsync(obj, context)
            %STARTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also start, Ice.Future.
            
            arguments
                obj (1, 1) Test.ResponderPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('start', 0, false, [], 0, [], {}, context);
        end

        function stop(obj, context)
            %STOP
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ResponderPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('stop', 0, false, [], false, {}, context);
        end

        function future = stopAsync(obj, context)
            %STOPASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also stop, Ice.Future.
            
            arguments
                obj (1, 1) Test.ResponderPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('stop', 0, false, [], 0, [], {}, context);
        end

        function returnValue = pendingResponseCount(obj, context)
            %PENDINGRESPONSECOUNT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.ResponderPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('pendingResponseCount', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = pendingResponseCountAsync(obj, context)
            %PENDINGRESPONSECOUNTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also pendingResponseCount, Ice.Future.
            
            arguments
                obj (1, 1) Test.ResponderPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('pendingResponseCount', 0, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Responder';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.ResponderPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Responder.
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
            %     r - A Test.ResponderPrx scalar if the target object implements Slice interface 
            %       ::Test::Responder; otherwise, an empty array of Test.ResponderPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.ResponderPrx.ice_staticId(), 'Test.ResponderPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.ResponderPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.ResponderPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.ResponderPrx', varargin{:});
        end
    end
end
