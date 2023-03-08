% CallbackReceiverPrx   Summary of CallbackReceiverPrx
%
% CallbackReceiverPrx Methods:
%   callback
%   callbackAsync
%   callbackEx
%   callbackExAsync
%   concurrentCallback
%   concurrentCallbackAsync
%   waitCallback
%   waitCallbackAsync
%   callbackWithPayload
%   callbackWithPayloadAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Callback.ice by slice2matlab version 3.7.9

classdef CallbackReceiverPrx < Ice.ObjectPrx
    methods
        function callback(obj, varargin)
            % callback
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('callback', 0, false, [], false, {}, varargin{:});
        end
        function r_ = callbackAsync(obj, varargin)
            % callbackAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('callback', 0, false, [], 0, [], {}, varargin{:});
        end
        function callbackEx(obj, varargin)
            % callbackEx
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('callbackEx', 0, true, [], false, Test.CallbackReceiverPrx.callbackEx_ex_, varargin{:});
        end
        function r_ = callbackExAsync(obj, varargin)
            % callbackExAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('callbackEx', 0, true, [], 0, [], Test.CallbackReceiverPrx.callbackEx_ex_, varargin{:});
        end
        function result = concurrentCallback(obj, number, varargin)
            % concurrentCallback
            %
            % Parameters:
            %   number (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(number);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('concurrentCallback', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = concurrentCallbackAsync(obj, number, varargin)
            % concurrentCallbackAsync
            %
            % Parameters:
            %   number (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(number);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('concurrentCallback', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function waitCallback(obj, varargin)
            % waitCallback
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('waitCallback', 0, false, [], false, {}, varargin{:});
        end
        function r_ = waitCallbackAsync(obj, varargin)
            % waitCallbackAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('waitCallback', 0, false, [], 0, [], {}, varargin{:});
        end
        function callbackWithPayload(obj, payload, varargin)
            % callbackWithPayload
            %
            % Parameters:
            %   payload (Ice.ByteSeq)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(payload);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('callbackWithPayload', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = callbackWithPayloadAsync(obj, payload, varargin)
            % callbackWithPayloadAsync
            %
            % Parameters:
            %   payload (Ice.ByteSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(payload);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('callbackWithPayload', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::CallbackReceiver';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.CallbackReceiverPrx');
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
            % Returns (Test.CallbackReceiverPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.CallbackReceiverPrx.ice_staticId(), 'Test.CallbackReceiverPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.CallbackReceiverPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.CallbackReceiverPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = CallbackReceiverPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        callbackEx_ex_ = { 'Test.CallbackException' }
    end
end
