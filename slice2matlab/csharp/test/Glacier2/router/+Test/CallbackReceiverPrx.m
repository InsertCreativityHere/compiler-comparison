
% Copyright (c) ZeroC, Inc.
% Generated from Callback.ice by slice2matlab version 3.8.0-alpha.0

classdef CallbackReceiverPrx < Ice.ObjectPrx
    methods
        function callback(obj, varargin)
            obj.iceInvoke('callback', 0, false, [], false, {}, varargin{:});
        end
        function r_ = callbackAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('callback', 0, false, [], 0, [], {}, varargin{:});
        end
        function callbackEx(obj, varargin)
            obj.iceInvoke('callbackEx', 0, true, [], false, Test.CallbackReceiverPrx.callbackEx_ex_, varargin{:});
        end
        function r_ = callbackExAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('callbackEx', 0, true, [], 0, [], Test.CallbackReceiverPrx.callbackEx_ex_, varargin{:});
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
    properties(Constant,Access=private)
        callbackEx_ex_ = { 'Test.CallbackException' }
    end
end
