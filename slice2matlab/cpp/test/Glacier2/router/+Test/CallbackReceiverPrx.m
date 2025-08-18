classdef CallbackReceiverPrx < Ice.ObjectPrx
    %CALLBACKRECEIVERPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.CallbackReceiverPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   CallbackReceiverPrx Methods:
    %     callback
    %     callbackAsync - An asynchronous callback.
    %     callbackEx
    %     callbackExAsync - An asynchronous callbackEx.
    %     callbackWithPayload
    %     callbackWithPayloadAsync - An asynchronous callbackWithPayload.
    %     concurrentCallback
    %     concurrentCallbackAsync - An asynchronous concurrentCallback.
    %     waitCallback
    %     waitCallbackAsync - An asynchronous waitCallback.
    %
    %   CallbackReceiverPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::CallbackReceiver.
    %     uncheckedCast - Creates a CallbackReceiverPrx from another proxy without any validation.
    %
    %   Generated from Callback.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function callback(obj, context)
            %CALLBACK
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.CallbackReceiverPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('callback', 0, false, [], false, {}, context);
        end

        function future = callbackAsync(obj, context)
            %CALLBACKASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also callback, Ice.Future.
            
            arguments
                obj (1, 1) Test.CallbackReceiverPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('callback', 0, false, [], 0, [], {}, context);
        end

        function callbackEx(obj, context)
            %CALLBACKEX
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.CallbackException
            
            arguments
                obj (1, 1) Test.CallbackReceiverPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('callbackEx', 0, true, [], false, Test.CallbackReceiverPrx.callbackEx_ex_, context);
        end

        function future = callbackExAsync(obj, context)
            %CALLBACKEXASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also callbackEx, Ice.Future.
            
            arguments
                obj (1, 1) Test.CallbackReceiverPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('callbackEx', 0, true, [], 0, [], Test.CallbackReceiverPrx.callbackEx_ex_, context);
        end

        function returnValue = concurrentCallback(obj, number, context)
            %CONCURRENTCALLBACK
            %
            %   Input Arguments
            %     number
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.CallbackReceiverPrx
                number (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(number);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('concurrentCallback', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = concurrentCallbackAsync(obj, number, context)
            %CONCURRENTCALLBACKASYNC
            %
            %   Input Arguments
            %     number
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also concurrentCallback, Ice.Future.
            
            arguments
                obj (1, 1) Test.CallbackReceiverPrx
                number (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(number);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('concurrentCallback', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function waitCallback(obj, context)
            %WAITCALLBACK
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.CallbackReceiverPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('waitCallback', 0, false, [], false, {}, context);
        end

        function future = waitCallbackAsync(obj, context)
            %WAITCALLBACKASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also waitCallback, Ice.Future.
            
            arguments
                obj (1, 1) Test.CallbackReceiverPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('waitCallback', 0, false, [], 0, [], {}, context);
        end

        function callbackWithPayload(obj, payload, context)
            %CALLBACKWITHPAYLOAD
            %
            %   Input Arguments
            %     payload
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.CallbackReceiverPrx
                payload (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(payload);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('callbackWithPayload', 0, false, os_, false, {}, context);
        end

        function future = callbackWithPayloadAsync(obj, payload, context)
            %CALLBACKWITHPAYLOADASYNC
            %
            %   Input Arguments
            %     payload
            %       uint8 vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also callbackWithPayload, Ice.Future.
            
            arguments
                obj (1, 1) Test.CallbackReceiverPrx
                payload (1, :) uint8
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(payload);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('callbackWithPayload', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::CallbackReceiver';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.CallbackReceiverPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::CallbackReceiver.
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
            %     r - A Test.CallbackReceiverPrx scalar if the target object implements Slice interface 
            %       ::Test::CallbackReceiver; otherwise, an empty array of Test.CallbackReceiverPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.CallbackReceiverPrx.ice_staticId(), 'Test.CallbackReceiverPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.CallbackReceiverPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.CallbackReceiverPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.CallbackReceiverPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        callbackEx_ex_ = { 'Test.CallbackException' }
    end
end
