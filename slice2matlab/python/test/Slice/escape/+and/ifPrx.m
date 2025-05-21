
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef ifPrx < and.execPrx & and.delPrx
    methods
        function result = raise(obj, else, return, while, yield, or, global, varargin)
            os_ = obj.iceStartWriteParams([]);
            and.continue.ice_write(os_, else);
            os_.writeValue(return);
            os_.writeProxy(while);
            os_.writeProxy(yield);
            os_.writeProxy(or);
            os_.writeInt(global);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('raise', 0, true, os_, true, and.ifPrx.raise_ex_, varargin{:});
            is_.startEncapsulation();
            result = and.assert.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = raiseAsync(obj, else, return, while, yield, or, global, varargin)
            os_ = obj.iceStartWriteParams([]);
            and.continue.ice_write(os_, else);
            os_.writeValue(return);
            os_.writeProxy(while);
            os_.writeProxy(yield);
            os_.writeProxy(or);
            os_.writeInt(global);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = and.assert.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('raise', 0, true, os_, 1, @unmarshal, and.ifPrx.raise_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::if';
        end
        function r = ice_read(is)
            r = is.readProxy('and.ifPrx');
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
            % Returns (and.ifPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, and.ifPrx.ice_staticId(), 'and.ifPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (and.ifPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'and.ifPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        raise_ex_ = { 'and.is' }
    end
end
