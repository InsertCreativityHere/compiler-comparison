classdef BackgroundControllerPrx < Ice.ObjectPrx
    %BACKGROUNDCONTROLLERPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.BackgroundControllerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   BackgroundControllerPrx Methods:
    %     buffered
    %     bufferedAsync - An asynchronous buffered.
    %     holdAdapter
    %     holdAdapterAsync - An asynchronous holdAdapter.
    %     initializeException
    %     initializeExceptionAsync - An asynchronous initializeException.
    %     initializeSocketOperation
    %     initializeSocketOperationAsync - An asynchronous initializeSocketOperation.
    %     pauseCall
    %     pauseCallAsync - An asynchronous pauseCall.
    %     readException
    %     readExceptionAsync - An asynchronous readException.
    %     readReady
    %     readReadyAsync - An asynchronous readReady.
    %     resumeAdapter
    %     resumeAdapterAsync - An asynchronous resumeAdapter.
    %     resumeCall
    %     resumeCallAsync - An asynchronous resumeCall.
    %     writeException
    %     writeExceptionAsync - An asynchronous writeException.
    %     writeReady
    %     writeReadyAsync - An asynchronous writeReady.
    %
    %   BackgroundControllerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::BackgroundController.
    %     uncheckedCast - Creates a BackgroundControllerPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function pauseCall(obj, call, context)
            %PAUSECALL
            %
            %   Input Arguments
            %     call
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                call (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(call);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('pauseCall', 0, false, os_, false, {}, context);
        end

        function future = pauseCallAsync(obj, call, context)
            %PAUSECALLASYNC
            %
            %   Input Arguments
            %     call
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also pauseCall, Ice.Future.
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                call (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(call);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('pauseCall', 0, false, os_, 0, [], {}, context);
        end

        function resumeCall(obj, call, context)
            %RESUMECALL
            %
            %   Input Arguments
            %     call
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                call (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(call);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('resumeCall', 0, false, os_, false, {}, context);
        end

        function future = resumeCallAsync(obj, call, context)
            %RESUMECALLASYNC
            %
            %   Input Arguments
            %     call
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also resumeCall, Ice.Future.
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                call (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(call);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('resumeCall', 0, false, os_, 0, [], {}, context);
        end

        function holdAdapter(obj, context)
            %HOLDADAPTER
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('holdAdapter', 0, false, [], false, {}, context);
        end

        function future = holdAdapterAsync(obj, context)
            %HOLDADAPTERASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also holdAdapter, Ice.Future.
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('holdAdapter', 0, false, [], 0, [], {}, context);
        end

        function resumeAdapter(obj, context)
            %RESUMEADAPTER
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
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
                obj (1, 1) Test.BackgroundControllerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('resumeAdapter', 0, false, [], 0, [], {}, context);
        end

        function initializeSocketOperation(obj, status, context)
            %INITIALIZESOCKETOPERATION
            %
            %   Input Arguments
            %     status
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                status (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(status);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initializeSocketOperation', 0, false, os_, false, {}, context);
        end

        function future = initializeSocketOperationAsync(obj, status, context)
            %INITIALIZESOCKETOPERATIONASYNC
            %
            %   Input Arguments
            %     status
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also initializeSocketOperation, Ice.Future.
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                status (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(status);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('initializeSocketOperation', 0, false, os_, 0, [], {}, context);
        end

        function initializeException(obj, enable, context)
            %INITIALIZEEXCEPTION
            %
            %   Input Arguments
            %     enable
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                enable (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initializeException', 0, false, os_, false, {}, context);
        end

        function future = initializeExceptionAsync(obj, enable, context)
            %INITIALIZEEXCEPTIONASYNC
            %
            %   Input Arguments
            %     enable
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also initializeException, Ice.Future.
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                enable (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('initializeException', 0, false, os_, 0, [], {}, context);
        end

        function readReady(obj, enable, context)
            %READREADY
            %
            %   Input Arguments
            %     enable
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                enable (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('readReady', 0, false, os_, false, {}, context);
        end

        function future = readReadyAsync(obj, enable, context)
            %READREADYASYNC
            %
            %   Input Arguments
            %     enable
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also readReady, Ice.Future.
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                enable (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('readReady', 0, false, os_, 0, [], {}, context);
        end

        function readException(obj, enable, context)
            %READEXCEPTION
            %
            %   Input Arguments
            %     enable
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                enable (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('readException', 0, false, os_, false, {}, context);
        end

        function future = readExceptionAsync(obj, enable, context)
            %READEXCEPTIONASYNC
            %
            %   Input Arguments
            %     enable
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also readException, Ice.Future.
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                enable (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('readException', 0, false, os_, 0, [], {}, context);
        end

        function writeReady(obj, enable, context)
            %WRITEREADY
            %
            %   Input Arguments
            %     enable
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                enable (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('writeReady', 0, false, os_, false, {}, context);
        end

        function future = writeReadyAsync(obj, enable, context)
            %WRITEREADYASYNC
            %
            %   Input Arguments
            %     enable
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also writeReady, Ice.Future.
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                enable (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('writeReady', 0, false, os_, 0, [], {}, context);
        end

        function writeException(obj, enable, context)
            %WRITEEXCEPTION
            %
            %   Input Arguments
            %     enable
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                enable (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('writeException', 0, false, os_, false, {}, context);
        end

        function future = writeExceptionAsync(obj, enable, context)
            %WRITEEXCEPTIONASYNC
            %
            %   Input Arguments
            %     enable
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also writeException, Ice.Future.
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                enable (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('writeException', 0, false, os_, 0, [], {}, context);
        end

        function buffered(obj, enable, context)
            %BUFFERED
            %
            %   Input Arguments
            %     enable
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                enable (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('buffered', 0, false, os_, false, {}, context);
        end

        function future = bufferedAsync(obj, enable, context)
            %BUFFEREDASYNC
            %
            %   Input Arguments
            %     enable
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also buffered, Ice.Future.
            
            arguments
                obj (1, 1) Test.BackgroundControllerPrx
                enable (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('buffered', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::BackgroundController';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.BackgroundControllerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::BackgroundController.
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
            %     r - A Test.BackgroundControllerPrx scalar if the target object implements Slice interface 
            %       ::Test::BackgroundController; otherwise, an empty array of Test.BackgroundControllerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.BackgroundControllerPrx.ice_staticId(), 'Test.BackgroundControllerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.BackgroundControllerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.BackgroundControllerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.BackgroundControllerPrx', varargin{:});
        end
    end
end
