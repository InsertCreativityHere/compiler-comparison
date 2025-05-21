% SSLSessionManagerPrx   Summary of SSLSessionManagerPrx
%
% Represents an application-provided factory for session objects. You can configure a Glacier2 router with your
% own SSLSessionManager implementation; this router will then return the sessions created by this session manager
% to its clients.
%
% SSLSessionManagerPrx Methods:
%   create - Creates a new session object.
%   createAsync - Creates a new session object.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from Session.ice by slice2matlab version 3.8.0-alpha.0

classdef SSLSessionManagerPrx < Ice.ObjectPrx
    methods
        function result = create(obj, info, control, varargin)
            % create   Creates a new session object.
            %
            % Parameters:
            %   info (Glacier2.SSLInfo) - The SSL info.
            %   control (Glacier2.SessionControlPrx) - A proxy to the session control object. This proxy is null when `Glacier2.Server.Endpoints`
            %     is not configured.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Glacier2.SessionPrx) - A proxy to the newly created session. This proxy is never null.
            %
            % Exceptions:
            %   Glacier2.CannotCreateSessionException - Thrown when the session cannot be created.
            
            os_ = obj.iceStartWriteParams([]);
            Glacier2.SSLInfo.ice_write(os_, info);
            os_.writeProxy(control);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('create', 0, true, os_, true, Glacier2.SSLSessionManagerPrx.create_ex_, varargin{:});
            is_.startEncapsulation();
            result = Glacier2.SessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = createAsync(obj, info, control, varargin)
            % createAsync   Creates a new session object.
            %
            % Parameters:
            %   info (Glacier2.SSLInfo) - The SSL info.
            %   control (Glacier2.SessionControlPrx) - A proxy to the session control object. This proxy is null when `Glacier2.Server.Endpoints`
            %     is not configured.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   Glacier2.CannotCreateSessionException - Thrown when the session cannot be created.
            
            os_ = obj.iceStartWriteParams([]);
            Glacier2.SSLInfo.ice_write(os_, info);
            os_.writeProxy(control);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Glacier2.SessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('create', 0, true, os_, 1, @unmarshal, Glacier2.SSLSessionManagerPrx.create_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Glacier2::SSLSessionManager';
        end
        function r = ice_read(is)
            r = is.readProxy('Glacier2.SSLSessionManagerPrx');
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
            % Returns (Glacier2.SSLSessionManagerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Glacier2.SSLSessionManagerPrx.ice_staticId(), 'Glacier2.SSLSessionManagerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Glacier2.SSLSessionManagerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Glacier2.SSLSessionManagerPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        create_ex_ = { 'Glacier2.CannotCreateSessionException' }
    end
end
