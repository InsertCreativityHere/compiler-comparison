
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef breakPrx < Ice.ObjectPrx
    methods
        function def = case(obj, clone, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(clone);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('case', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            def = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = caseAsync(obj, clone, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(clone);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                def = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = def;
            end
            r_ = obj.iceInvokeAsync('case', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = instance_variables(obj, varargin)
            is_ = obj.iceInvoke('instance_variables', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = BEGIN.END.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = instance_variablesAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = BEGIN.END.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('instance_variables', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::BEGIN::break';
        end
        function r = ice_read(is)
            r = is.readProxy('BEGIN.breakPrx');
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
            % Returns (BEGIN.breakPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, BEGIN.breakPrx.ice_staticId(), 'BEGIN.breakPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (BEGIN.breakPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'BEGIN.breakPrx', varargin{:});
        end
    end
end
