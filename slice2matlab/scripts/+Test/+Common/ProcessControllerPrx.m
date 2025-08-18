classdef ProcessControllerPrx < Ice.ObjectPrx
    %PROCESSCONTROLLERPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.Common.ProcessControllerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ProcessControllerPrx Methods:
    %     getHost
    %     getHostAsync - An asynchronous getHost.
    %     start
    %     startAsync - An asynchronous start.
    %
    %   ProcessControllerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Common::ProcessController.
    %     uncheckedCast - Creates a ProcessControllerPrx from another proxy without any validation.
    %
    %   Generated from Controller.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = start(obj, testsuite, exe, args, context)
            %START
            %
            %   Input Arguments
            %     testsuite
            %       character vector
            %     exe
            %       character vector
            %     args
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.Common.ProcessPrx scalar | empty array of Test.Common.ProcessPrx
            %
            %   Exceptions
            %     Test.Common.ProcessFailedException
            
            arguments
                obj (1, 1) Test.Common.ProcessControllerPrx
                testsuite (1, :) char
                exe (1, :) char
                args (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(testsuite);
            os_.writeString(exe);
            os_.writeStringSeq(args);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('start', 0, true, os_, true, Test.Common.ProcessControllerPrx.start_ex_, context);
            is_.startEncapsulation();
            returnValue = Test.Common.ProcessPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = startAsync(obj, testsuite, exe, args, context)
            %STARTASYNC
            %
            %   Input Arguments
            %     testsuite
            %       character vector
            %     exe
            %       character vector
            %     args
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also start, Ice.Future.
            
            arguments
                obj (1, 1) Test.Common.ProcessControllerPrx
                testsuite (1, :) char
                exe (1, :) char
                args (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(testsuite);
            os_.writeString(exe);
            os_.writeStringSeq(args);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.Common.ProcessPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('start', 0, true, os_, 1, @unmarshal, Test.Common.ProcessControllerPrx.start_ex_, context);
        end

        function returnValue = getHost(obj, protocol, ipv6, context)
            %GETHOST
            %
            %   Input Arguments
            %     protocol
            %       character vector
            %     ipv6
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            
            arguments
                obj (1, 1) Test.Common.ProcessControllerPrx
                protocol (1, :) char
                ipv6 (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(protocol);
            os_.writeBool(ipv6);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getHost', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getHostAsync(obj, protocol, ipv6, context)
            %GETHOSTASYNC
            %
            %   Input Arguments
            %     protocol
            %       character vector
            %     ipv6
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getHost, Ice.Future.
            
            arguments
                obj (1, 1) Test.Common.ProcessControllerPrx
                protocol (1, :) char
                ipv6 (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(protocol);
            os_.writeBool(ipv6);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getHost', 0, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Common::ProcessController';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.Common.ProcessControllerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Common::ProcessController.
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
            %     r - A Test.Common.ProcessControllerPrx scalar if the target object implements Slice interface 
            %       ::Test::Common::ProcessController; otherwise, an empty array of Test.Common.ProcessControllerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Common.ProcessControllerPrx.ice_staticId(), 'Test.Common.ProcessControllerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.Common.ProcessControllerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.Common.ProcessControllerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Common.ProcessControllerPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        start_ex_ = { 'Test.Common.ProcessFailedException' }
    end
end
