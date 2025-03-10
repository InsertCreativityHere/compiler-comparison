
% Copyright (c) ZeroC, Inc.
% Generated from Controller.ice by slice2matlab version 3.8.0-alpha.0

classdef ControllerPrx < Ice.ObjectPrx
    methods
        function result = runTestCase(obj, mapping, testsuite, testcase, cross, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(mapping);
            os_.writeString(testsuite);
            os_.writeString(testcase);
            os_.writeString(cross);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('runTestCase', 0, true, os_, true, Test.Common.ControllerPrx.runTestCase_ex_, varargin{:});
            is_.startEncapsulation();
            result = Test.Common.TestCasePrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = runTestCaseAsync(obj, mapping, testsuite, testcase, cross, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(mapping);
            os_.writeString(testsuite);
            os_.writeString(testcase);
            os_.writeString(cross);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.Common.TestCasePrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('runTestCase', 0, true, os_, 1, @unmarshal, Test.Common.ControllerPrx.runTestCase_ex_, varargin{:});
        end
        function result = getOptionOverrides(obj, varargin)
            is_ = obj.iceInvoke('getOptionOverrides', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.Common.OptionOverrides');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getOptionOverridesAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.Common.OptionOverrides');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getOptionOverrides', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getTestSuites(obj, mapping, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(mapping);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getTestSuites', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = getTestSuitesAsync(obj, mapping, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(mapping);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getTestSuites', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = getHost(obj, protocol, ipv6, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(protocol);
            os_.writeBool(ipv6);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getHost', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getHostAsync(obj, protocol, ipv6, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(protocol);
            os_.writeBool(ipv6);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getHost', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Common::Controller';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.Common.ControllerPrx');
        end
        function r = checkedCast(p, varargin)
            % checkedCast   Contacts the remote server to verify that the object implements this type.
            %   Raises a local exception if a communication error occurs. You can optionally supply a
            %   facet name and a context map.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %   context - The optional context map to send with the invocation.
            %
            % Returns (Test.Common.ControllerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Common.ControllerPrx.ice_staticId(), 'Test.Common.ControllerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.Common.ControllerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Common.ControllerPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        runTestCase_ex_ = { 'Test.Common.TestCaseNotExistException' }
    end
end
