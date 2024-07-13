% SessionPrx   Summary of SessionPrx
%
% A client-visible session object, which is tied to the lifecycle of a Router.
%
% SessionPrx Methods:
%   destroy - Destroy the session.
%   destroyAsync - Destroy the session.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also Router, Glacier2.SessionManager

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Session.ice by slice2matlab version 3.8.0-alpha.0

classdef SessionPrx < Ice.ObjectPrx
    methods
        function destroy(obj, varargin)
            % destroy   Destroy the session. This is called automatically when the router is destroyed.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('destroy', 0, false, [], false, {}, varargin{:});
        end
        function r_ = destroyAsync(obj, varargin)
            % destroyAsync   Destroy the session. This is called automatically when the router is destroyed.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('destroy', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Glacier2::Session';
        end
        function r = ice_read(is)
            r = is.readProxy('Glacier2.SessionPrx');
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
            % Returns (Glacier2.SessionPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Glacier2.SessionPrx.ice_staticId(), 'Glacier2.SessionPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Glacier2.SessionPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Glacier2.SessionPrx', varargin{:});
        end
    end
end
