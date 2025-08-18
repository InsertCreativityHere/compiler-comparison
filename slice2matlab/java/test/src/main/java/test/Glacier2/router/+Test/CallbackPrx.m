classdef CallbackPrx < Ice.ObjectPrx
    %CALLBACKPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.CallbackPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   CallbackPrx Methods:
    %     initiateCallback
    %     initiateCallbackAsync - An asynchronous initiateCallback.
    %     initiateCallbackEx
    %     initiateCallbackExAsync - An asynchronous initiateCallbackEx.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   CallbackPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Callback.
    %     uncheckedCast - Creates a CallbackPrx from another proxy without any validation.
    %
    %   Generated from Callback.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function initiateCallback(obj, proxy, context)
            %INITIATECALLBACK
            %
            %   Input Arguments
            %     proxy
            %       Test.CallbackReceiverPrx scalar | empty array of Test.CallbackReceiverPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.CallbackPrx
                proxy Test.CallbackReceiverPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initiateCallback', 0, false, os_, false, {}, context);
        end

        function future = initiateCallbackAsync(obj, proxy, context)
            %INITIATECALLBACKASYNC
            %
            %   Input Arguments
            %     proxy
            %       Test.CallbackReceiverPrx scalar | empty array of Test.CallbackReceiverPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also initiateCallback, Ice.Future.
            
            arguments
                obj (1, 1) Test.CallbackPrx
                proxy Test.CallbackReceiverPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('initiateCallback', 0, false, os_, 0, [], {}, context);
        end

        function initiateCallbackEx(obj, proxy, context)
            %INITIATECALLBACKEX
            %
            %   Input Arguments
            %     proxy
            %       Test.CallbackReceiverPrx scalar | empty array of Test.CallbackReceiverPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.CallbackException
            
            arguments
                obj (1, 1) Test.CallbackPrx
                proxy Test.CallbackReceiverPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initiateCallbackEx', 0, true, os_, false, Test.CallbackPrx.initiateCallbackEx_ex_, context);
        end

        function future = initiateCallbackExAsync(obj, proxy, context)
            %INITIATECALLBACKEXASYNC
            %
            %   Input Arguments
            %     proxy
            %       Test.CallbackReceiverPrx scalar | empty array of Test.CallbackReceiverPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also initiateCallbackEx, Ice.Future.
            
            arguments
                obj (1, 1) Test.CallbackPrx
                proxy Test.CallbackReceiverPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('initiateCallbackEx', 0, true, os_, 0, [], Test.CallbackPrx.initiateCallbackEx_ex_, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.CallbackPrx
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
                obj (1, 1) Test.CallbackPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Callback';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.CallbackPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Callback.
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
            %     r - A Test.CallbackPrx scalar if the target object implements Slice interface 
            %       ::Test::Callback; otherwise, an empty array of Test.CallbackPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.CallbackPrx.ice_staticId(), 'Test.CallbackPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.CallbackPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.CallbackPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.CallbackPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        initiateCallbackEx_ex_ = { 'Test.CallbackException' }
    end
end
