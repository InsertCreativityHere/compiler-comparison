
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef HelloPrx < Ice.ObjectPrx
    methods
        function sayHello(obj, delay, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(delay);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sayHello', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = sayHelloAsync(obj, delay, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(delay);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('sayHello', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = add(obj, s1, s2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(s1);
            os_.writeInt(s2);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('add', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = addAsync(obj, s1, s2, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(s1);
            os_.writeInt(s2);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('add', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function raiseUE(obj, varargin)
            obj.iceInvoke('raiseUE', 0, true, [], false, Test.HelloPrx.raiseUE_ex_, varargin{:});
        end
        function r_ = raiseUEAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('raiseUE', 0, true, [], 0, [], Test.HelloPrx.raiseUE_ex_, varargin{:});
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
            id = '::Test::Hello';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.HelloPrx');
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
            % Returns (Test.HelloPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.HelloPrx.ice_staticId(), 'Test.HelloPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.HelloPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.HelloPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        raiseUE_ex_ = { 'Test.UE' }
    end
end
