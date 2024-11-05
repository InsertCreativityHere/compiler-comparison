
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MetricsPrx < Ice.ObjectPrx
    methods
        function op(obj, varargin)
            obj.iceInvoke('op', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('op', 0, false, [], 0, [], {}, varargin{:});
        end
        function fail(obj, varargin)
            obj.iceInvoke('fail', 2, false, [], false, {}, varargin{:});
        end
        function r_ = failAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('fail', 2, false, [], 0, [], {}, varargin{:});
        end
        function opWithUserException(obj, varargin)
            obj.iceInvoke('opWithUserException', 0, true, [], false, Test.MetricsPrx.opWithUserException_ex_, varargin{:});
        end
        function r_ = opWithUserExceptionAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('opWithUserException', 0, true, [], 0, [], Test.MetricsPrx.opWithUserException_ex_, varargin{:});
        end
        function opWithRequestFailedException(obj, varargin)
            obj.iceInvoke('opWithRequestFailedException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opWithRequestFailedExceptionAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('opWithRequestFailedException', 0, false, [], 0, [], {}, varargin{:});
        end
        function opWithLocalException(obj, varargin)
            obj.iceInvoke('opWithLocalException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opWithLocalExceptionAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('opWithLocalException', 0, false, [], 0, [], {}, varargin{:});
        end
        function opWithUnknownException(obj, varargin)
            obj.iceInvoke('opWithUnknownException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opWithUnknownExceptionAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('opWithUnknownException', 0, false, [], 0, [], {}, varargin{:});
        end
        function opByteS(obj, bs, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(bs);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opByteS', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = opByteSAsync(obj, bs, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(bs);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('opByteS', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = getAdmin(obj, varargin)
            is_ = obj.iceInvoke('getAdmin', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = getAdminAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getAdmin', 0, true, [], 1, @unmarshal, {}, varargin{:});
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
            id = '::Test::Metrics';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.MetricsPrx');
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
            % Returns (Test.MetricsPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MetricsPrx.ice_staticId(), 'Test.MetricsPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.MetricsPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MetricsPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        opWithUserException_ex_ = { 'Test.UserEx' }
    end
end
