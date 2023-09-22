% SimpleClass2Prx   Summary of SimpleClass2Prx
%
% SimpleClass2Prx Methods:
%   newOp
%   newOpAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from TypesServer.ice by slice2matlab version 3.7.10

classdef SimpleClass2Prx < Ice.ObjectPrx
    methods
        function newOp(obj, varargin)
            % newOp
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('newOp', 0, false, [], false, {}, varargin{:});
        end
        function r_ = newOpAsync(obj, varargin)
            % newOpAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('newOp', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::SimpleClass2';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.SimpleClass2Prx');
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
            % Returns (Test.SimpleClass2Prx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.SimpleClass2Prx.ice_staticId(), 'Test.SimpleClass2Prx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.SimpleClass2Prx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.SimpleClass2Prx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = SimpleClass2Prx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
