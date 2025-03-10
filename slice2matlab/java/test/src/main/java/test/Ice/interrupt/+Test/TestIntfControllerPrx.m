
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfControllerPrx < Ice.ObjectPrx
    methods
        function holdAdapter(obj, varargin)
            obj.iceInvoke('holdAdapter', 0, false, [], false, {}, varargin{:});
        end
        function r_ = holdAdapterAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('holdAdapter', 0, false, [], 0, [], {}, varargin{:});
        end
        function resumeAdapter(obj, varargin)
            obj.iceInvoke('resumeAdapter', 0, false, [], false, {}, varargin{:});
        end
        function r_ = resumeAdapterAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('resumeAdapter', 0, false, [], 0, [], {}, varargin{:});
        end
        function interrupt(obj, varargin)
            obj.iceInvoke('interrupt', 0, true, [], false, Test.TestIntfControllerPrx.interrupt_ex_, varargin{:});
        end
        function r_ = interruptAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('interrupt', 0, true, [], 0, [], Test.TestIntfControllerPrx.interrupt_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::TestIntfController';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.TestIntfControllerPrx');
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
            % Returns (Test.TestIntfControllerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestIntfControllerPrx.ice_staticId(), 'Test.TestIntfControllerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.TestIntfControllerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestIntfControllerPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        interrupt_ex_ = { 'Test.CannotInterruptException' }
    end
end
