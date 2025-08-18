classdef ControllerPrx < Ice.ObjectPrx
    %CONTROLLERPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.ControllerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ControllerPrx Methods:
    %     holdAdapter
    %     holdAdapterAsync - An asynchronous holdAdapter.
    %     resumeAdapter
    %     resumeAdapterAsync - An asynchronous resumeAdapter.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   ControllerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Controller.
    %     uncheckedCast - Creates a ControllerPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function holdAdapter(obj, to, context)
            %HOLDADAPTER
            %
            %   Input Arguments
            %     to
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ControllerPrx
                to (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(to);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('holdAdapter', 0, false, os_, false, {}, context);
        end

        function future = holdAdapterAsync(obj, to, context)
            %HOLDADAPTERASYNC
            %
            %   Input Arguments
            %     to
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also holdAdapter, Ice.Future.
            
            arguments
                obj (1, 1) Test.ControllerPrx
                to (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(to);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('holdAdapter', 0, false, os_, 0, [], {}, context);
        end

        function resumeAdapter(obj, context)
            %RESUMEADAPTER
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ControllerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('resumeAdapter', 0, false, [], false, {}, context);
        end

        function future = resumeAdapterAsync(obj, context)
            %RESUMEADAPTERASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also resumeAdapter, Ice.Future.
            
            arguments
                obj (1, 1) Test.ControllerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('resumeAdapter', 0, false, [], 0, [], {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ControllerPrx
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
                obj (1, 1) Test.ControllerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Controller';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.ControllerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Controller.
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
            %     r - A Test.ControllerPrx scalar if the target object implements Slice interface 
            %       ::Test::Controller; otherwise, an empty array of Test.ControllerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.ControllerPrx.ice_staticId(), 'Test.ControllerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.ControllerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.ControllerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.ControllerPrx', varargin{:});
        end
    end
end
