% SessionPrx   Summary of SessionPrx
%
% SessionPrx Methods:
%   destroySession
%   destroySessionAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Canvas.ice by slice2matlab version 3.7.9

classdef SessionPrx < Glacier2.SessionPrx
    methods
        function destroySession(obj, varargin)
            % destroySession
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('destroySession', 0, false, [], false, {}, varargin{:});
        end
        function r_ = destroySessionAsync(obj, varargin)
            % destroySessionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('destroySession', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Demo::gx::Session';
        end
        function r = ice_read(is)
            r = is.readProxy('Demo.gx.SessionPrx');
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
            % Returns (Demo.gx.SessionPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Demo.gx.SessionPrx.ice_staticId(), 'Demo.gx.SessionPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Demo.gx.SessionPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Demo.gx.SessionPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = SessionPrx(communicator, encoding, impl, bytes)
            obj = obj@Glacier2.SessionPrx(communicator, encoding, impl, bytes);
        end
    end
end
