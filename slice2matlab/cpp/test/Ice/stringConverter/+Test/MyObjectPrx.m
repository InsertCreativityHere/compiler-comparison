
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MyObjectPrx < Ice.ObjectPrx
    methods
        function result = widen(obj, msg, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(msg);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('widen', 0, true, os_, true, Test.MyObjectPrx.widen_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = widenAsync(obj, msg, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(msg);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('widen', 0, true, os_, 1, @unmarshal, Test.MyObjectPrx.widen_ex_, varargin{:});
        end
        function result = narrow(obj, wmsg, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(wmsg);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('narrow', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = narrowAsync(obj, wmsg, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(wmsg);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('narrow', 0, true, os_, 1, @unmarshal, {}, varargin{:});
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
            id = '::Test::MyObject';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.MyObjectPrx');
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
            % Returns (Test.MyObjectPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MyObjectPrx.ice_staticId(), 'Test.MyObjectPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.MyObjectPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MyObjectPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        widen_ex_ = { 'Test.BadEncodingException' }
    end
end
