classdef RemoteCommunicatorPrx < Ice.ObjectPrx
    %REMOTECOMMUNICATORPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.RemoteCommunicatorPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   RemoteCommunicatorPrx Methods:
    %     destroy
    %     destroyAsync - An asynchronous destroy.
    %     getAdmin
    %     getAdminAsync - An asynchronous getAdmin.
    %     getChanges
    %     getChangesAsync - An asynchronous getChanges.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %     waitForShutdown
    %     waitForShutdownAsync - An asynchronous waitForShutdown.
    %
    %   RemoteCommunicatorPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::RemoteCommunicator.
    %     uncheckedCast - Creates a RemoteCommunicatorPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
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
                obj (1, 1) Test.RemoteCommunicatorPrx
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
                obj (1, 1) Test.RemoteCommunicatorPrx
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

        function returnValue = getChanges(obj, context)
            %GETCHANGES
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string, string) scalar
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getChanges', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Ice.PropertyDict.read(is_);
            is_.endEncapsulation();
        end

        function future = getChangesAsync(obj, context)
            %GETCHANGESASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getChanges, Ice.Future.
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Ice.PropertyDict.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getChanges', 0, true, [], 1, @unmarshal, {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
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
                obj (1, 1) Test.RemoteCommunicatorPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end

        function waitForShutdown(obj, context)
            %WAITFORSHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('waitForShutdown', 0, false, [], false, {}, context);
        end

        function future = waitForShutdownAsync(obj, context)
            %WAITFORSHUTDOWNASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also waitForShutdown, Ice.Future.
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('waitForShutdown', 0, false, [], 0, [], {}, context);
        end

        function destroy(obj, context)
            %DESTROY
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('destroy', 0, false, [], false, {}, context);
        end

        function future = destroyAsync(obj, context)
            %DESTROYASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also destroy, Ice.Future.
            
            arguments
                obj (1, 1) Test.RemoteCommunicatorPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('destroy', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::RemoteCommunicator';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.RemoteCommunicatorPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::RemoteCommunicator.
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
            %     r - A Test.RemoteCommunicatorPrx scalar if the target object implements Slice interface 
            %       ::Test::RemoteCommunicator; otherwise, an empty array of Test.RemoteCommunicatorPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.RemoteCommunicatorPrx.ice_staticId(), 'Test.RemoteCommunicatorPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.RemoteCommunicatorPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.RemoteCommunicatorPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.RemoteCommunicatorPrx', varargin{:});
        end
    end
end
