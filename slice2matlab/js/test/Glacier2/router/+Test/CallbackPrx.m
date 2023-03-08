% CallbackPrx   Summary of CallbackPrx
%
% CallbackPrx Methods:
%   initiateCallback
%   initiateCallbackAsync
%   initiateCallbackEx
%   initiateCallbackExAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Callback.ice by slice2matlab version 3.7.9

classdef CallbackPrx < Ice.ObjectPrx
    methods
        function initiateCallback(obj, proxy, varargin)
            % initiateCallback
            %
            % Parameters:
            %   proxy (Test.CallbackReceiverPrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initiateCallback', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = initiateCallbackAsync(obj, proxy, varargin)
            % initiateCallbackAsync
            %
            % Parameters:
            %   proxy (Test.CallbackReceiverPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('initiateCallback', 0, false, os_, 0, [], {}, varargin{:});
        end
        function initiateCallbackEx(obj, proxy, varargin)
            % initiateCallbackEx
            %
            % Parameters:
            %   proxy (Test.CallbackReceiverPrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initiateCallbackEx', 0, true, os_, false, Test.CallbackPrx.initiateCallbackEx_ex_, varargin{:});
        end
        function r_ = initiateCallbackExAsync(obj, proxy, varargin)
            % initiateCallbackExAsync
            %
            % Parameters:
            %   proxy (Test.CallbackReceiverPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('initiateCallbackEx', 0, true, os_, 0, [], Test.CallbackPrx.initiateCallbackEx_ex_, varargin{:});
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
            id = '::Test::Callback';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.CallbackPrx');
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
            % Returns (Test.CallbackPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.CallbackPrx.ice_staticId(), 'Test.CallbackPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.CallbackPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.CallbackPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = CallbackPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        initiateCallbackEx_ex_ = { 'Test.CallbackException' }
    end
end
