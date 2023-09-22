% RemoteCommunicatorPrx   Summary of RemoteCommunicatorPrx
%
% RemoteCommunicatorPrx Methods:
%   createObjectAdapter
%   createObjectAdapterAsync
%   deactivateObjectAdapter
%   deactivateObjectAdapterAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from BindingTest.ice by slice2matlab version 3.7.10

classdef RemoteCommunicatorPrx < Ice.ObjectPrx
    methods
        function result = createObjectAdapter(obj, name, endpoints, varargin)
            % createObjectAdapter
            %
            % Parameters:
            %   name (char)
            %   endpoints (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.RemoteObjectAdapterPrx)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeString(endpoints);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('createObjectAdapter', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.RemoteObjectAdapterPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = createObjectAdapterAsync(obj, name, endpoints, varargin)
            % createObjectAdapterAsync
            %
            % Parameters:
            %   name (char)
            %   endpoints (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeString(endpoints);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.RemoteObjectAdapterPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('createObjectAdapter', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function deactivateObjectAdapter(obj, adapter, varargin)
            % deactivateObjectAdapter
            %
            % Parameters:
            %   adapter (Test.RemoteObjectAdapterPrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(adapter);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('deactivateObjectAdapter', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = deactivateObjectAdapterAsync(obj, adapter, varargin)
            % deactivateObjectAdapterAsync
            %
            % Parameters:
            %   adapter (Test.RemoteObjectAdapterPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(adapter);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('deactivateObjectAdapter', 0, false, os_, 0, [], {}, varargin{:});
        end
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
