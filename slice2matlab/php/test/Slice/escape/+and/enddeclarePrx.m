% enddeclarePrx   Summary of enddeclarePrx
%
% enddeclarePrx Methods:
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.9

classdef enddeclarePrx < and.diePrx & and.functionPrx
    methods
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::enddeclare';
        end
        function r = ice_read(is)
            r = is.readProxy('and.enddeclarePrx');
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
            % Returns (and.enddeclarePrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, and.enddeclarePrx.ice_staticId(), 'and.enddeclarePrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (and.enddeclarePrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'and.enddeclarePrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = enddeclarePrx(communicator, encoding, impl, bytes)
            obj = obj@and.diePrx(communicator, encoding, impl, bytes);
            obj = obj@and.functionPrx(communicator, encoding, impl, bytes);
        end
    end
end
