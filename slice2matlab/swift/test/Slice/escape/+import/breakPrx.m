
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef breakPrx < Ice.ObjectPrx
    methods
        function try = case(obj, class, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(class);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('case', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            try = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = caseAsync(obj, class, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(class);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                try = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = try;
            end
            r_ = obj.iceInvokeAsync('case', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::import::break';
        end
        function r = ice_read(is)
            r = is.readProxy('import.breakPrx');
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
            % Returns (import.breakPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, import.breakPrx.ice_staticId(), 'import.breakPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (import.breakPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'import.breakPrx', varargin{:});
        end
    end
end
