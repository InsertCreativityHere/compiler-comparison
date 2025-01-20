
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function result = op(obj, varargin)
            is_ = obj.iceInvoke('op', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = opAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('op', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = callOpOn(obj, proxy, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('callOpOn', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = callOpOnAsync(obj, proxy, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('callOpOn', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function throwUserException1(obj, varargin)
            obj.iceInvoke('throwUserException1', 0, true, [], false, Test.TestIntfPrx.throwUserException1_ex_, varargin{:});
        end
        function r_ = throwUserException1Async(obj, varargin)
            r_ = obj.iceInvokeAsync('throwUserException1', 0, true, [], 0, [], Test.TestIntfPrx.throwUserException1_ex_, varargin{:});
        end
        function throwUserException2(obj, varargin)
            obj.iceInvoke('throwUserException2', 0, true, [], false, Test.TestIntfPrx.throwUserException2_ex_, varargin{:});
        end
        function r_ = throwUserException2Async(obj, varargin)
            r_ = obj.iceInvokeAsync('throwUserException2', 0, true, [], 0, [], Test.TestIntfPrx.throwUserException2_ex_, varargin{:});
        end
        function throwUnhandledException1(obj, varargin)
            obj.iceInvoke('throwUnhandledException1', 0, false, [], false, {}, varargin{:});
        end
        function r_ = throwUnhandledException1Async(obj, varargin)
            r_ = obj.iceInvokeAsync('throwUnhandledException1', 0, false, [], 0, [], {}, varargin{:});
        end
        function throwUnhandledException2(obj, varargin)
            obj.iceInvoke('throwUnhandledException2', 0, false, [], false, {}, varargin{:});
        end
        function r_ = throwUnhandledException2Async(obj, varargin)
            r_ = obj.iceInvokeAsync('throwUnhandledException2', 0, false, [], 0, [], {}, varargin{:});
        end
        function sleep(obj, ms, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(ms);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sleep', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = sleepAsync(obj, ms, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(ms);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('sleep', 0, false, os_, 0, [], {}, varargin{:});
        end
        function shutdown(obj, varargin)
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::TestIntf';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.TestIntfPrx');
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
            % Returns (Test.TestIntfPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestIntfPrx.ice_staticId(), 'Test.TestIntfPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.TestIntfPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestIntfPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        throwUserException1_ex_ = { 'Test.TestException' }
        throwUserException2_ex_ = { 'Test.TestException' }
    end
end
