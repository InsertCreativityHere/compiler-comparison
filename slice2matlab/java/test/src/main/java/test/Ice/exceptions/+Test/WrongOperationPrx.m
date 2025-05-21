
% Copyright (c) ZeroC, Inc.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef WrongOperationPrx < Ice.ObjectPrx
    methods
        function noSuchOperation(obj, varargin)
            obj.iceInvoke('noSuchOperation', 0, false, [], false, {}, varargin{:});
        end
        function r_ = noSuchOperationAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('noSuchOperation', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::WrongOperation';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.WrongOperationPrx');
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
            % Returns (Test.WrongOperationPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.WrongOperationPrx.ice_staticId(), 'Test.WrongOperationPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.WrongOperationPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.WrongOperationPrx', varargin{:});
        end
    end
end
