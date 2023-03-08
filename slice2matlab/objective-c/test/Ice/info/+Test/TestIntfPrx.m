% TestIntfPrx   Summary of TestIntfPrx
%
% TestIntfPrx Methods:
%   shutdown
%   shutdownAsync
%   getEndpointInfoAsContext
%   getEndpointInfoAsContextAsync
%   getConnectionInfoAsContext
%   getConnectionInfoAsContextAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from InfoTest.ice by slice2matlab version 3.7.9

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function shutdown(obj, varargin)
            % shutdown
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            % shutdownAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = getEndpointInfoAsContext(obj, varargin)
            % getEndpointInfoAsContext
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (containers.Map)
            
            is_ = obj.iceInvoke('getEndpointInfoAsContext', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.Context.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getEndpointInfoAsContextAsync(obj, varargin)
            % getEndpointInfoAsContextAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Ice.Context.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getEndpointInfoAsContext', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getConnectionInfoAsContext(obj, varargin)
            % getConnectionInfoAsContext
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (containers.Map)
            
            is_ = obj.iceInvoke('getConnectionInfoAsContext', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.Context.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getConnectionInfoAsContextAsync(obj, varargin)
            % getConnectionInfoAsContextAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Ice.Context.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getConnectionInfoAsContext', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::TestIntf';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.TestIntfPrx');
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
            % Returns (Test.TestIntfPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestIntfPrx.ice_staticId(), 'Test.TestIntfPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.TestIntfPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestIntfPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = TestIntfPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
