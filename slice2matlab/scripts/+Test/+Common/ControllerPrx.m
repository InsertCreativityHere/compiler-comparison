classdef ControllerPrx < Ice.ObjectPrx
    %CONTROLLERPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.Common.ControllerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ControllerPrx Methods:
    %     getHost
    %     getHostAsync - An asynchronous getHost.
    %     getOptionOverrides
    %     getOptionOverridesAsync - An asynchronous getOptionOverrides.
    %     getTestSuites
    %     getTestSuitesAsync - An asynchronous getTestSuites.
    %     runTestCase
    %     runTestCaseAsync - An asynchronous runTestCase.
    %
    %   ControllerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Common::Controller.
    %     uncheckedCast - Creates a ControllerPrx from another proxy without any validation.
    %
    %   Generated from Controller.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = runTestCase(obj, mapping, testsuite, testcase, cross, context)
            %RUNTESTCASE
            %
            %   Input Arguments
            %     mapping
            %       character vector
            %     testsuite
            %       character vector
            %     testcase
            %       character vector
            %     cross
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.Common.TestCasePrx scalar | empty array of Test.Common.TestCasePrx
            %
            %   Exceptions
            %     Test.Common.TestCaseNotExistException
            
            arguments
                obj (1, 1) Test.Common.ControllerPrx
                mapping (1, :) char
                testsuite (1, :) char
                testcase (1, :) char
                cross (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(mapping);
            os_.writeString(testsuite);
            os_.writeString(testcase);
            os_.writeString(cross);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('runTestCase', 0, true, os_, true, Test.Common.ControllerPrx.runTestCase_ex_, context);
            is_.startEncapsulation();
            returnValue = Test.Common.TestCasePrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = runTestCaseAsync(obj, mapping, testsuite, testcase, cross, context)
            %RUNTESTCASEASYNC
            %
            %   Input Arguments
            %     mapping
            %       character vector
            %     testsuite
            %       character vector
            %     testcase
            %       character vector
            %     cross
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also runTestCase, Ice.Future.
            
            arguments
                obj (1, 1) Test.Common.ControllerPrx
                mapping (1, :) char
                testsuite (1, :) char
                testcase (1, :) char
                cross (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(mapping);
            os_.writeString(testsuite);
            os_.writeString(testcase);
            os_.writeString(cross);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Test.Common.TestCasePrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('runTestCase', 0, true, os_, 1, @unmarshal, Test.Common.ControllerPrx.runTestCase_ex_, context);
        end

        function returnValue = getOptionOverrides(obj, context)
            %GETOPTIONOVERRIDES
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.Common.OptionOverrides scalar | empty array of Test.Common.OptionOverrides
            
            arguments
                obj (1, 1) Test.Common.ControllerPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getOptionOverrides', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Test.Common.OptionOverrides');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getOptionOverridesAsync(obj, context)
            %GETOPTIONOVERRIDESASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getOptionOverrides, Ice.Future.
            
            arguments
                obj (1, 1) Test.Common.ControllerPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Test.Common.OptionOverrides');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getOptionOverrides', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getTestSuites(obj, mapping, context)
            %GETTESTSUITES
            %
            %   Input Arguments
            %     mapping
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       string vector
            
            arguments
                obj (1, 1) Test.Common.ControllerPrx
                mapping (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(mapping);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getTestSuites', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = getTestSuitesAsync(obj, mapping, context)
            %GETTESTSUITESASYNC
            %
            %   Input Arguments
            %     mapping
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getTestSuites, Ice.Future.
            
            arguments
                obj (1, 1) Test.Common.ControllerPrx
                mapping (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(mapping);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getTestSuites', 0, true, os_, 1, @unmarshal, {}, context);
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
                obj (1, 1) Test.Common.ControllerPrx
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
                obj (1, 1) Test.Common.ControllerPrx
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
            id = '::Test::Common::Controller';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.Common.ControllerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Common::Controller.
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
            %     r - A Test.Common.ControllerPrx scalar if the target object implements Slice interface 
            %       ::Test::Common::Controller; otherwise, an empty array of Test.Common.ControllerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Common.ControllerPrx.ice_staticId(), 'Test.Common.ControllerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.Common.ControllerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.Common.ControllerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Common.ControllerPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        runTestCase_ex_ = { 'Test.Common.TestCaseNotExistException' }
    end
end
