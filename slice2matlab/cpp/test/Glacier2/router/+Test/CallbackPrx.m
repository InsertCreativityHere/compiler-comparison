
% Copyright (c) ZeroC, Inc.
% Generated from Callback.ice by slice2matlab version 3.8.0-alpha.0

classdef CallbackPrx < Ice.ObjectPrx
    methods
        function initiateCallback(obj, proxy, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initiateCallback', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = initiateCallbackAsync(obj, proxy, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('initiateCallback', 0, false, os_, 0, [], {}, varargin{:});
        end
        function initiateCallbackEx(obj, proxy, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initiateCallbackEx', 0, true, os_, false, Test.CallbackPrx.initiateCallbackEx_ex_, varargin{:});
        end
        function r_ = initiateCallbackExAsync(obj, proxy, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('initiateCallbackEx', 0, true, os_, 0, [], Test.CallbackPrx.initiateCallbackEx_ex_, varargin{:});
        end
        function result = initiateConcurrentCallback(obj, number, proxy, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(number);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('initiateConcurrentCallback', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = initiateConcurrentCallbackAsync(obj, number, proxy, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(number);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('initiateConcurrentCallback', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function initiateWaitCallback(obj, proxy, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initiateWaitCallback', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = initiateWaitCallbackAsync(obj, proxy, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('initiateWaitCallback', 0, false, os_, 0, [], {}, varargin{:});
        end
        function initiateCallbackWithPayload(obj, proxy, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initiateCallbackWithPayload', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = initiateCallbackWithPayloadAsync(obj, proxy, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('initiateCallbackWithPayload', 0, false, os_, 0, [], {}, varargin{:});
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
            id = '::Test::Callback';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.CallbackPrx');
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
            % Returns (Test.CallbackPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.CallbackPrx.ice_staticId(), 'Test.CallbackPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.CallbackPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.CallbackPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        initiateCallbackEx_ex_ = { 'Test.CallbackException' }
    end
end
