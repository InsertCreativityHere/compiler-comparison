
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef doPrx < import.breakPrx
    methods
        function public(obj, varargin)
            obj.iceInvoke('public', 0, false, [], false, {}, varargin{:});
        end
        function r_ = publicAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('public', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = goto(obj, if, d, private, mutable, namespace, not, or, varargin)
            os_ = obj.iceStartWriteParams([]);
            import.continue.ice_write(os_, if);
            import.guard.ice_write(os_, d);
            os_.writeValue(private);
            os_.writeProxy(mutable);
            os_.writeProxy(namespace);
            os_.writeValue(not);
            os_.writeLong(or);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('goto', 0, true, os_, true, import.doPrx.goto_ex_, varargin{:});
            is_.startEncapsulation();
            result = import.guard.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = gotoAsync(obj, if, d, private, mutable, namespace, not, or, varargin)
            os_ = obj.iceStartWriteParams([]);
            import.continue.ice_write(os_, if);
            import.guard.ice_write(os_, d);
            os_.writeValue(private);
            os_.writeProxy(mutable);
            os_.writeProxy(namespace);
            os_.writeValue(not);
            os_.writeLong(or);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = import.guard.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('goto', 0, true, os_, 1, @unmarshal, import.doPrx.goto_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::import::do';
        end
        function r = ice_read(is)
            r = is.readProxy('import.doPrx');
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
            % Returns (import.doPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, import.doPrx.ice_staticId(), 'import.doPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (import.doPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'import.doPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        goto_ex_ = { 'import.as', 'import.return' }
    end
end
