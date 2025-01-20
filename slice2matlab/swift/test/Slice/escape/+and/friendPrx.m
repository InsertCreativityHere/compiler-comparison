
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef friendPrx < Ice.ObjectPrx
    methods
        function result = goto(obj, if_, d, inline, private, mutable, namespace, new, not, operator, or, protected, public, register, varargin)
            os_ = obj.iceStartWriteParams([]);
            and.continue_.ice_write(os_, if_);
            and.guard.ice_write(os_, d);
            and.defer.ice_write(os_, inline);
            os_.writeValue(private);
            os_.writeProxy(mutable);
            os_.writeProxy(namespace);
            os_.writeProxy(new);
            os_.writeValue(not);
            os_.writeProxy(operator);
            os_.writeInt(or);
            os_.writeInt(protected);
            os_.writeInt(public);
            os_.writeInt(register);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('goto', 0, true, os_, true, and.friendPrx.goto_ex_, varargin{:});
            is_.startEncapsulation();
            result = and.guard.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = gotoAsync(obj, if_, d, inline, private, mutable, namespace, new, not, operator, or, protected, public, register, varargin)
            os_ = obj.iceStartWriteParams([]);
            and.continue_.ice_write(os_, if_);
            and.guard.ice_write(os_, d);
            and.defer.ice_write(os_, inline);
            os_.writeValue(private);
            os_.writeProxy(mutable);
            os_.writeProxy(namespace);
            os_.writeProxy(new);
            os_.writeValue(not);
            os_.writeProxy(operator);
            os_.writeInt(or);
            os_.writeInt(protected);
            os_.writeInt(public);
            os_.writeInt(register);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = and.guard.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('goto', 0, true, os_, 1, @unmarshal, and.friendPrx.goto_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::friend';
        end
        function r = ice_read(is)
            r = is.readProxy('and.friendPrx');
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
            % Returns (and.friendPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, and.friendPrx.ice_staticId(), 'and.friendPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (and.friendPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'and.friendPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        goto_ex_ = { 'and.as', 'and.return_' }
    end
end
