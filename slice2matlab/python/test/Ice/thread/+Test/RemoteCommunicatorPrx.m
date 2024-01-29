% RemoteCommunicatorPrx   Summary of RemoteCommunicatorPrx
%
% RemoteCommunicatorPrx Methods:
%   getObject
%   getObjectAsync
%   getThreadStartCount
%   getThreadStartCountAsync
%   getThreadStopCount
%   getThreadStopCountAsync
%   destroy
%   destroyAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef RemoteCommunicatorPrx < Ice.ObjectPrx
    methods
        function result = getObject(obj, varargin)
            % getObject
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.TestIntfPrx)
            
            is_ = obj.iceInvoke('getObject', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.TestIntfPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getObjectAsync(obj, varargin)
            % getObjectAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.TestIntfPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getObject', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getThreadStartCount(obj, varargin)
            % getThreadStartCount
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            is_ = obj.iceInvoke('getThreadStartCount', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getThreadStartCountAsync(obj, varargin)
            % getThreadStartCountAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getThreadStartCount', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getThreadStopCount(obj, varargin)
            % getThreadStopCount
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            is_ = obj.iceInvoke('getThreadStopCount', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getThreadStopCountAsync(obj, varargin)
            % getThreadStopCountAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getThreadStopCount', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function destroy(obj, varargin)
            % destroy
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('destroy', 0, false, [], false, {}, varargin{:});
        end
        function r_ = destroyAsync(obj, varargin)
            % destroyAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('destroy', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::RemoteCommunicator';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.RemoteCommunicatorPrx');
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
            % Returns (Test.RemoteCommunicatorPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.RemoteCommunicatorPrx.ice_staticId(), 'Test.RemoteCommunicatorPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.RemoteCommunicatorPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.RemoteCommunicatorPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = RemoteCommunicatorPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
