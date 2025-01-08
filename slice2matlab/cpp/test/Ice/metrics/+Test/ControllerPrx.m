
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef ControllerPrx < Ice.ObjectPrx
    methods
        function hold(obj, varargin)
            obj.iceInvoke('hold', 0, false, [], false, {}, varargin{:});
        end
        function r_ = holdAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('hold', 0, false, [], 0, [], {}, varargin{:});
        end
        function resume(obj, varargin)
            obj.iceInvoke('resume', 0, false, [], false, {}, varargin{:});
        end
        function r_ = resumeAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('resume', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Controller';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.ControllerPrx');
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
            % Returns (Test.ControllerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.ControllerPrx.ice_staticId(), 'Test.ControllerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.ControllerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.ControllerPrx', varargin{:});
        end
    end
end
