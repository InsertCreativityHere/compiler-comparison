
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef EchoPrx < Ice.ObjectPrx
    methods
        function setConnection(obj, varargin)
            obj.iceInvoke('setConnection', 0, false, [], false, {}, varargin{:});
        end
        function r_ = setConnectionAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('setConnection', 0, false, [], 0, [], {}, varargin{:});
        end
        function startBatch(obj, varargin)
            obj.iceInvoke('startBatch', 0, false, [], false, {}, varargin{:});
        end
        function r_ = startBatchAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('startBatch', 0, false, [], 0, [], {}, varargin{:});
        end
        function flushBatch(obj, varargin)
            obj.iceInvoke('flushBatch', 0, false, [], false, {}, varargin{:});
        end
        function r_ = flushBatchAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('flushBatch', 0, false, [], 0, [], {}, varargin{:});
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
            id = '::Test::Echo';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.EchoPrx');
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
            % Returns (Test.EchoPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.EchoPrx.ice_staticId(), 'Test.EchoPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.EchoPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.EchoPrx', varargin{:});
        end
    end
end
