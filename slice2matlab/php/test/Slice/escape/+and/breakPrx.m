
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef breakPrx < Ice.ObjectPrx
    methods
        function try_ = case_(obj, catch_, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(catch_);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('case', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            try_ = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = caseAsync(obj, catch_, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(catch_);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                try_ = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = try_;
            end
            r_ = obj.iceInvokeAsync('case', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::break';
        end
        function r = ice_read(is)
            r = is.readProxy('and.breakPrx');
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
            % Returns (and.breakPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, and.breakPrx.ice_staticId(), 'and.breakPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (and.breakPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'and.breakPrx', varargin{:});
        end
    end
end
