% ifPrx   Summary of ifPrx
%
% ifPrx Methods:
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.9

classdef ifPrx < and.execPrx & and.delPrx
    methods
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::if';
        end
        function r = ice_read(is)
            r = is.readProxy('and.ifPrx');
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
            % Returns (and.ifPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, and.ifPrx.ice_staticId(), 'and.ifPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (and.ifPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'and.ifPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = ifPrx(communicator, encoding, impl, bytes)
            obj = obj@and.execPrx(communicator, encoding, impl, bytes);
            obj = obj@and.delPrx(communicator, encoding, impl, bytes);
        end
    end
end
