
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef diePrx < Ice.ObjectPrx
    methods
        function do(obj, varargin)
            obj.iceInvoke('do', 0, false, [], false, {}, varargin{:});
        end
        function r_ = doAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('do', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::die';
        end
        function r = ice_read(is)
            r = is.readProxy('and.diePrx');
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
            % Returns (and.diePrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, and.diePrx.ice_staticId(), 'and.diePrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (and.diePrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'and.diePrx', varargin{:});
        end
    end
end
