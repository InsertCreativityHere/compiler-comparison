% WrongOperationPrx   Summary of WrongOperationPrx
%
% WrongOperationPrx Methods:
%   noSuchOperation
%   noSuchOperationAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef WrongOperationPrx < Ice.ObjectPrx
    methods
        function noSuchOperation(obj, varargin)
            % noSuchOperation
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('noSuchOperation', 0, false, [], false, {}, varargin{:});
        end
        function r_ = noSuchOperationAsync(obj, varargin)
            % noSuchOperationAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
    methods(Hidden=true)
        function obj = WrongOperationPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
