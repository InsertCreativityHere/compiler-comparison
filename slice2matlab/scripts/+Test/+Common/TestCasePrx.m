classdef TestCasePrx < Ice.ObjectPrx
    %TESTCASEPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.Common.TestCasePrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   TestCasePrx Methods:
    %     destroy
    %     destroyAsync - An asynchronous destroy.
    %     runClientSide
    %     runClientSideAsync - An asynchronous runClientSide.
    %     startServerSide
    %     startServerSideAsync - An asynchronous startServerSide.
    %     stopServerSide
    %     stopServerSideAsync - An asynchronous stopServerSide.
    %
    %   TestCasePrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Common::TestCase.
    %     uncheckedCast - Creates a TestCasePrx from another proxy without any validation.
    %
    %   Generated from Controller.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = startServerSide(obj, config, context)
            %STARTSERVERSIDE
            %
            %   Input Arguments
            %     config
            %       Test.Common.Config scalar | empty array of Test.Common.Config
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            %
            %   Exceptions
            %     Test.Common.TestCaseFailedException
            
            arguments
                obj (1, 1) Test.Common.TestCasePrx
                config Test.Common.Config {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(config);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('startServerSide', 0, true, os_, true, Test.Common.TestCasePrx.startServerSide_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = startServerSideAsync(obj, config, context)
            %STARTSERVERSIDEASYNC
            %
            %   Input Arguments
            %     config
            %       Test.Common.Config scalar | empty array of Test.Common.Config
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also startServerSide, Ice.Future.
            
            arguments
                obj (1, 1) Test.Common.TestCasePrx
                config Test.Common.Config {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(config);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('startServerSide', 0, true, os_, 1, @unmarshal, Test.Common.TestCasePrx.startServerSide_ex_, context);
        end

        function returnValue = stopServerSide(obj, success, context)
            %STOPSERVERSIDE
            %
            %   Input Arguments
            %     success
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            %
            %   Exceptions
            %     Test.Common.TestCaseFailedException
            
            arguments
                obj (1, 1) Test.Common.TestCasePrx
                success (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(success);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('stopServerSide', 0, true, os_, true, Test.Common.TestCasePrx.stopServerSide_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = stopServerSideAsync(obj, success, context)
            %STOPSERVERSIDEASYNC
            %
            %   Input Arguments
            %     success
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also stopServerSide, Ice.Future.
            
            arguments
                obj (1, 1) Test.Common.TestCasePrx
                success (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(success);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('stopServerSide', 0, true, os_, 1, @unmarshal, Test.Common.TestCasePrx.stopServerSide_ex_, context);
        end

        function returnValue = runClientSide(obj, host, config, context)
            %RUNCLIENTSIDE
            %
            %   Input Arguments
            %     host
            %       character vector
            %     config
            %       Test.Common.Config scalar | empty array of Test.Common.Config
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       character vector
            %
            %   Exceptions
            %     Test.Common.TestCaseFailedException
            
            arguments
                obj (1, 1) Test.Common.TestCasePrx
                host (1, :) char
                config Test.Common.Config {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(host);
            os_.writeValue(config);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('runClientSide', 0, true, os_, true, Test.Common.TestCasePrx.runClientSide_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = runClientSideAsync(obj, host, config, context)
            %RUNCLIENTSIDEASYNC
            %
            %   Input Arguments
            %     host
            %       character vector
            %     config
            %       Test.Common.Config scalar | empty array of Test.Common.Config
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also runClientSide, Ice.Future.
            
            arguments
                obj (1, 1) Test.Common.TestCasePrx
                host (1, :) char
                config Test.Common.Config {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(host);
            os_.writeValue(config);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('runClientSide', 0, true, os_, 1, @unmarshal, Test.Common.TestCasePrx.runClientSide_ex_, context);
        end

        function destroy(obj, context)
            %DESTROY
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.Common.TestCasePrx
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
                obj (1, 1) Test.Common.TestCasePrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('destroy', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Common::TestCase';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.Common.TestCasePrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Common::TestCase.
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
            %     r - A Test.Common.TestCasePrx scalar if the target object implements Slice interface 
            %       ::Test::Common::TestCase; otherwise, an empty array of Test.Common.TestCasePrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Common.TestCasePrx.ice_staticId(), 'Test.Common.TestCasePrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.Common.TestCasePrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.Common.TestCasePrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Common.TestCasePrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        startServerSide_ex_ = { 'Test.Common.TestCaseFailedException' }
        stopServerSide_ex_ = { 'Test.Common.TestCaseFailedException' }
        runClientSide_ex_ = { 'Test.Common.TestCaseFailedException' }
    end
end
