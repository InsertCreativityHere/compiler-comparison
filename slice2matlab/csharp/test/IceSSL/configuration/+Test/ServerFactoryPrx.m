
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef ServerFactoryPrx < Ice.ObjectPrx
    methods
        function result = createServer(obj, props, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.Properties.write(os_, props);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('createServer', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.ServerPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = createServerAsync(obj, props, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.Properties.write(os_, props);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.ServerPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('createServer', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function destroyServer(obj, srv, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(srv);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('destroyServer', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = destroyServerAsync(obj, srv, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(srv);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('destroyServer', 0, false, os_, 0, [], {}, varargin{:});
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
            id = '::Test::ServerFactory';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.ServerFactoryPrx');
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
            % Returns (Test.ServerFactoryPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.ServerFactoryPrx.ice_staticId(), 'Test.ServerFactoryPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.ServerFactoryPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.ServerFactoryPrx', varargin{:});
        end
    end
end
