% printPrx   Summary of printPrx
%
% printPrx Methods:
%   raise
%   raiseAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef printPrx < Ice.ObjectPrx
    methods
        function result = raise(obj, else_, return_, while_, yield, or, global_, varargin)
            % raise
            %
            % Parameters:
            %   else_ (and.continue_)
            %   return_ (and.for_)
            %   while_ (and.delPrx)
            %   yield (and.execPrx)
            %   or (and.ifPrx)
            %   global_ (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (and.assert)
            
            os_ = obj.iceStartWriteParams([]);
            and.continue_.ice_write(os_, else_);
            os_.writeValue(return_);
            os_.writeProxy(while_);
            os_.writeProxy(yield);
            os_.writeProxy(or);
            os_.writeInt(global_);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('raise', 0, true, os_, true, and.printPrx.raise_ex_, varargin{:});
            is_.startEncapsulation();
            result = and.assert.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = raiseAsync(obj, else_, return_, while_, yield, or, global_, varargin)
            % raiseAsync
            %
            % Parameters:
            %   else_ (and.continue_)
            %   return_ (and.for_)
            %   while_ (and.delPrx)
            %   yield (and.execPrx)
            %   or (and.ifPrx)
            %   global_ (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            and.continue_.ice_write(os_, else_);
            os_.writeValue(return_);
            os_.writeProxy(while_);
            os_.writeProxy(yield);
            os_.writeProxy(or);
            os_.writeInt(global_);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = and.assert.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('raise', 0, true, os_, 1, @unmarshal, and.printPrx.raise_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::print';
        end
        function r = ice_read(is)
            r = is.readProxy('and.printPrx');
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
            % Returns (and.printPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, and.printPrx.ice_staticId(), 'and.printPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (and.printPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'and.printPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        raise_ex_ = { 'and.is' }
    end
end
