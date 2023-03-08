% TestIntfPrx   Summary of TestIntfPrx
%
% TestIntfPrx Methods:
%   shutdown
%   shutdownAsync
%   getHello
%   getHelloAsync
%   getReplicatedHello
%   getReplicatedHelloAsync
%   migrateHello
%   migrateHelloAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocationTest.ice by slice2matlab version 3.7.9

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
        function result = getHello(obj, varargin)
            % getHello
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.HelloPrx)
            
            is_ = obj.iceInvoke('getHello', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.HelloPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getHelloAsync(obj, varargin)
            % getHelloAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.HelloPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getHello', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getReplicatedHello(obj, varargin)
            % getReplicatedHello
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.HelloPrx)
            
            is_ = obj.iceInvoke('getReplicatedHello', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.HelloPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getReplicatedHelloAsync(obj, varargin)
            % getReplicatedHelloAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.HelloPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getReplicatedHello', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function migrateHello(obj, varargin)
            % migrateHello
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('migrateHello', 0, false, [], false, {}, varargin{:});
        end
        function r_ = migrateHelloAsync(obj, varargin)
            % migrateHelloAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('migrateHello', 0, false, [], 0, [], {}, varargin{:});
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
