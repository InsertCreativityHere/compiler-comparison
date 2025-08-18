classdef ProcessPrx < Ice.ObjectPrx
    %PROCESSPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.Common.ProcessPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ProcessPrx Methods:
    %     terminate
    %     terminateAsync - An asynchronous terminate.
    %     waitReady
    %     waitReadyAsync - An asynchronous waitReady.
    %     waitSuccess
    %     waitSuccessAsync - An asynchronous waitSuccess.
    %
    %   ProcessPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Common::Process.
    %     uncheckedCast - Creates a ProcessPrx from another proxy without any validation.
    %
    %   Generated from Controller.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function waitReady(obj, timeout, context)
            %WAITREADY
            %
            %   Input Arguments
            %     timeout
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     Test.Common.ProcessFailedException
            
            arguments
                obj (1, 1) Test.Common.ProcessPrx
                timeout (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(timeout);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('waitReady', 0, true, os_, false, Test.Common.ProcessPrx.waitReady_ex_, context);
        end

        function future = waitReadyAsync(obj, timeout, context)
            %WAITREADYASYNC
            %
            %   Input Arguments
            %     timeout
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also waitReady, Ice.Future.
            
            arguments
                obj (1, 1) Test.Common.ProcessPrx
                timeout (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(timeout);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('waitReady', 0, true, os_, 0, [], Test.Common.ProcessPrx.waitReady_ex_, context);
        end

        function returnValue = waitSuccess(obj, timeout, context)
            %WAITSUCCESS
            %
            %   Input Arguments
            %     timeout
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            %
            %   Exceptions
            %     Test.Common.ProcessFailedException
            
            arguments
                obj (1, 1) Test.Common.ProcessPrx
                timeout (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(timeout);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('waitSuccess', 0, true, os_, true, Test.Common.ProcessPrx.waitSuccess_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = waitSuccessAsync(obj, timeout, context)
            %WAITSUCCESSASYNC
            %
            %   Input Arguments
            %     timeout
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also waitSuccess, Ice.Future.
            
            arguments
                obj (1, 1) Test.Common.ProcessPrx
                timeout (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(timeout);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('waitSuccess', 0, true, os_, 1, @unmarshal, Test.Common.ProcessPrx.waitSuccess_ex_, context);
        end

        function returnValue = terminate(obj, context)
            %TERMINATE
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            
            arguments
                obj (1, 1) Test.Common.ProcessPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('terminate', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = terminateAsync(obj, context)
            %TERMINATEASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also terminate, Ice.Future.
            
            arguments
                obj (1, 1) Test.Common.ProcessPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('terminate', 0, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Common::Process';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.Common.ProcessPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Common::Process.
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
            %     r - A Test.Common.ProcessPrx scalar if the target object implements Slice interface 
            %       ::Test::Common::Process; otherwise, an empty array of Test.Common.ProcessPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Common.ProcessPrx.ice_staticId(), 'Test.Common.ProcessPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.Common.ProcessPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.Common.ProcessPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Common.ProcessPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        waitReady_ex_ = { 'Test.Common.ProcessFailedException' }
        waitSuccess_ex_ = { 'Test.Common.ProcessFailedException' }
    end
end
