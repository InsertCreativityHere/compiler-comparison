% CallbackReceiverPrx   Summary of CallbackReceiverPrx
%
% CallbackReceiverPrx Methods:
%   callback
%   callbackAsync
%   callbackWithPayload
%   callbackWithPayloadAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Callback.ice by slice2matlab version 3.7.10

classdef CallbackReceiverPrx < Ice.ObjectPrx
    methods
        function callback(obj, token, varargin)
            % callback
            %
            % Parameters:
            %   token (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(token);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('callback', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = callbackAsync(obj, token, varargin)
            % callbackAsync
            %
            % Parameters:
            %   token (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(token);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('callback', 0, false, os_, 0, [], {}, varargin{:});
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
end
