
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef enddeclarePrx < and.diePrx & and.functionPrx
    methods
        function [result, new, static] = foreach(obj, global, include, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(global);
            os_.writeProxyOpt(1, include);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('foreach', 0, true, os_, true, and.enddeclarePrx.foreach_ex_, varargin{:});
            is_.startEncapsulation();
            new = and.endfor.read(is_);
            result = and.array.ice_read(is_);
            static = and.endforeach.readOpt(is_, 2);
            is_.endEncapsulation();
        end
        function r_ = foreachAsync(obj, global, include, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(global);
            os_.writeProxyOpt(1, include);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                new = and.endfor.read(is_);
                result = and.array.ice_read(is_);
                static = and.endforeach.readOpt(is_, 2);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = new;
                varargout{3} = static;
            end
            r_ = obj.iceInvokeAsync('foreach', 0, true, os_, 3, @unmarshal, and.enddeclarePrx.foreach_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::enddeclare';
        end
        function r = ice_read(is)
            r = is.readProxy('and.enddeclarePrx');
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
            % Returns (and.enddeclarePrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, and.enddeclarePrx.ice_staticId(), 'and.enddeclarePrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (and.enddeclarePrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'and.enddeclarePrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        foreach_ex_ = { 'and.endwhile', 'and.endif' }
    end
end
