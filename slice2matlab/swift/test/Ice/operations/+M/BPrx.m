% BPrx   Summary of BPrx
%
% BPrx Methods:
%   opB
%   opBAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef BPrx < M.IntfPrx
    methods
        function opB(obj, varargin)
            % opB
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('opB', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opBAsync(obj, varargin)
            % opBAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('opB', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::M::B';
        end
        function r = ice_read(is)
            r = is.readProxy('M.BPrx');
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
            % Returns (M.BPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, M.BPrx.ice_staticId(), 'M.BPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (M.BPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'M.BPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = BPrx(communicator, encoding, impl, bytes)
            obj = obj@M.IntfPrx(communicator, encoding, impl, bytes);
        end
    end
end
