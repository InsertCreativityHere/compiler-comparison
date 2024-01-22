% MyClassPrx   Summary of MyClassPrx
%
% MyClassPrx Methods:
%   callCallback
%   callCallbackAsync
%   getCallbackCount
%   getCallbackCountAsync
%   incCounter
%   incCounterAsync
%   waitCounter
%   waitCounterAsync
%   getConnectionCount
%   getConnectionCountAsync
%   getConnectionInfo
%   getConnectionInfoAsync
%   closeConnection
%   closeConnectionAsync
%   datagram
%   datagramAsync
%   getDatagramCount
%   getDatagramCountAsync
%   callDatagramCallback
%   callDatagramCallbackAsync
%   getCallbackDatagramCount
%   getCallbackDatagramCountAsync
%   getHeartbeatCount
%   getHeartbeatCountAsync
%   enableHeartbeats
%   enableHeartbeatsAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MyClassPrx < Ice.ObjectPrx
    methods
        function callCallback(obj, varargin)
            % callCallback
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('callCallback', 0, false, [], false, {}, varargin{:});
        end
        function r_ = callCallbackAsync(obj, varargin)
            % callCallbackAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('callCallback', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = getCallbackCount(obj, varargin)
            % getCallbackCount
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            is_ = obj.iceInvoke('getCallbackCount', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getCallbackCountAsync(obj, varargin)
            % getCallbackCountAsync
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
            r_ = obj.iceInvokeAsync('getCallbackCount', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function incCounter(obj, expected, varargin)
            % incCounter
            %
            % Parameters:
            %   expected (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(expected);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('incCounter', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = incCounterAsync(obj, expected, varargin)
            % incCounterAsync
            %
            % Parameters:
            %   expected (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(expected);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('incCounter', 0, false, os_, 0, [], {}, varargin{:});
        end
        function waitCounter(obj, value, varargin)
            % waitCounter
            %
            % Parameters:
            %   value (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(value);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('waitCounter', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = waitCounterAsync(obj, value, varargin)
            % waitCounterAsync
            %
            % Parameters:
            %   value (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(value);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('waitCounter', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = getConnectionCount(obj, varargin)
            % getConnectionCount
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            is_ = obj.iceInvoke('getConnectionCount', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getConnectionCountAsync(obj, varargin)
            % getConnectionCountAsync
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
            r_ = obj.iceInvokeAsync('getConnectionCount', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getConnectionInfo(obj, varargin)
            % getConnectionInfo
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char)
            
            is_ = obj.iceInvoke('getConnectionInfo', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getConnectionInfoAsync(obj, varargin)
            % getConnectionInfoAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getConnectionInfo', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function closeConnection(obj, force, varargin)
            % closeConnection
            %
            % Parameters:
            %   force (logical)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(force);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('closeConnection', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = closeConnectionAsync(obj, force, varargin)
            % closeConnectionAsync
            %
            % Parameters:
            %   force (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(force);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('closeConnection', 0, false, os_, 0, [], {}, varargin{:});
        end
        function datagram(obj, varargin)
            % datagram
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('datagram', 0, false, [], false, {}, varargin{:});
        end
        function r_ = datagramAsync(obj, varargin)
            % datagramAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('datagram', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = getDatagramCount(obj, varargin)
            % getDatagramCount
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            is_ = obj.iceInvoke('getDatagramCount', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getDatagramCountAsync(obj, varargin)
            % getDatagramCountAsync
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
            r_ = obj.iceInvokeAsync('getDatagramCount', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function callDatagramCallback(obj, varargin)
            % callDatagramCallback
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('callDatagramCallback', 0, false, [], false, {}, varargin{:});
        end
        function r_ = callDatagramCallbackAsync(obj, varargin)
            % callDatagramCallbackAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('callDatagramCallback', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = getCallbackDatagramCount(obj, varargin)
            % getCallbackDatagramCount
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            is_ = obj.iceInvoke('getCallbackDatagramCount', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getCallbackDatagramCountAsync(obj, varargin)
            % getCallbackDatagramCountAsync
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
            r_ = obj.iceInvokeAsync('getCallbackDatagramCount', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getHeartbeatCount(obj, varargin)
            % getHeartbeatCount
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            is_ = obj.iceInvoke('getHeartbeatCount', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getHeartbeatCountAsync(obj, varargin)
            % getHeartbeatCountAsync
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
            r_ = obj.iceInvokeAsync('getHeartbeatCount', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function enableHeartbeats(obj, varargin)
            % enableHeartbeats
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('enableHeartbeats', 0, false, [], false, {}, varargin{:});
        end
        function r_ = enableHeartbeatsAsync(obj, varargin)
            % enableHeartbeatsAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('enableHeartbeats', 0, false, [], 0, [], {}, varargin{:});
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
            id = '::Test::MyClass';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.MyClassPrx');
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
            % Returns (Test.MyClassPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MyClassPrx.ice_staticId(), 'Test.MyClassPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.MyClassPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MyClassPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = MyClassPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
