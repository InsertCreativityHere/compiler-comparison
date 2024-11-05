
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef RemoteCommunicatorFactoryPrx < Ice.ObjectPrx
    methods
        function result = createCommunicator(obj, props, varargin)
            os_ = obj.iceStartWriteParams([]);
            Ice.PropertyDict.write(os_, props);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('createCommunicator', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.RemoteCommunicatorPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = createCommunicatorAsync(obj, props, varargin)
            os_ = obj.iceStartWriteParams([]);
            Ice.PropertyDict.write(os_, props);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.RemoteCommunicatorPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('createCommunicator', 0, true, os_, 1, @unmarshal, {}, varargin{:});
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
            id = '::Test::RemoteCommunicatorFactory';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.RemoteCommunicatorFactoryPrx');
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
            % Returns (Test.RemoteCommunicatorFactoryPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.RemoteCommunicatorFactoryPrx.ice_staticId(), 'Test.RemoteCommunicatorFactoryPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.RemoteCommunicatorFactoryPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.RemoteCommunicatorFactoryPrx', varargin{:});
        end
    end
end
