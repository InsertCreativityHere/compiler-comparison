
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef ResponderPrx < Ice.ObjectPrx
    methods
        function start(obj, varargin)
            obj.iceInvoke('start', 0, false, [], false, {}, varargin{:});
        end
        function r_ = startAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('start', 0, false, [], 0, [], {}, varargin{:});
        end
        function stop(obj, varargin)
            obj.iceInvoke('stop', 0, false, [], false, {}, varargin{:});
        end
        function r_ = stopAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('stop', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = pendingResponseCount(obj, varargin)
            is_ = obj.iceInvoke('pendingResponseCount', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = pendingResponseCountAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('pendingResponseCount', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Responder';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.ResponderPrx');
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
            % Returns (Test.ResponderPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.ResponderPrx.ice_staticId(), 'Test.ResponderPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.ResponderPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.ResponderPrx', varargin{:});
        end
    end
end
