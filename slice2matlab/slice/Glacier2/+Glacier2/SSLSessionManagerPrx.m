classdef SSLSessionManagerPrx < Ice.ObjectPrx
    %SSLSESSIONMANAGERPRX Represents an application-provided factory for session objects. You can configure a Glacier2 router with your
    %   own SSLSessionManager implementation; this router will then return the sessions created by this session manager
    %   to its clients.
    %
    %   Creation
    %     Syntax
    %       prx = Glacier2.SSLSessionManagerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   SSLSessionManagerPrx Methods:
    %     create - Creates a new session object.
    %     createAsync - An asynchronous create.
    %
    %   SSLSessionManagerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Glacier2::SSLSessionManager.
    %     uncheckedCast - Creates a SSLSessionManagerPrx from another proxy without any validation.
    %
    %   Generated from Session.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = create(obj, info, control, context)
            %CREATE Creates a new session object.
            %
            %   Input Arguments
            %     info - The SSL info.
            %       Glacier2.SSLInfo scalar
            %     control - A proxy to the session control object. This proxy is null when `Glacier2.Server.Endpoints`
            %       is not configured.
            %       Glacier2.SessionControlPrx scalar | empty array of Glacier2.SessionControlPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to the newly created session. This proxy is never null.
            %       Glacier2.SessionPrx scalar | empty array of Glacier2.SessionPrx
            %
            %   Exceptions
            %     Glacier2.CannotCreateSessionException - Thrown when the session cannot be created.
            
            arguments
                obj (1, 1) Glacier2.SSLSessionManagerPrx
                info (1, 1) Glacier2.SSLInfo
                control Glacier2.SessionControlPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Glacier2.SSLInfo.ice_write(os_, info);
            os_.writeProxy(control);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('create', 0, true, os_, true, Glacier2.SSLSessionManagerPrx.create_ex_, context);
            is_.startEncapsulation();
            returnValue = Glacier2.SessionPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = createAsync(obj, info, control, context)
            %CREATEASYNC Creates a new session object.
            %
            %   Input Arguments
            %     info - The SSL info.
            %       Glacier2.SSLInfo scalar
            %     control - A proxy to the session control object. This proxy is null when `Glacier2.Server.Endpoints`
            %       is not configured.
            %       Glacier2.SessionControlPrx scalar | empty array of Glacier2.SessionControlPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also create, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.SSLSessionManagerPrx
                info (1, 1) Glacier2.SSLInfo
                control Glacier2.SessionControlPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Glacier2.SSLInfo.ice_write(os_, info);
            os_.writeProxy(control);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Glacier2.SessionPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('create', 0, true, os_, 1, @unmarshal, Glacier2.SSLSessionManagerPrx.create_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Glacier2::SSLSessionManager';
        end

        function r = ice_read(is)
            r = is.readProxy('Glacier2.SSLSessionManagerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Glacier2::SSLSessionManager.
            %
            %   Input Arguments
            %     p - The proxy to check.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %     context - The request context (optional).
            %       dictionary(string, string) scalar
            %
            %   Output Arguments
            %     r - A Glacier2.SSLSessionManagerPrx scalar if the target object implements Slice interface 
            %       ::Glacier2::SSLSessionManager; otherwise, an empty array of Glacier2.SSLSessionManagerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Glacier2.SSLSessionManagerPrx.ice_staticId(), 'Glacier2.SSLSessionManagerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Glacier2.SSLSessionManagerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Glacier2.SSLSessionManagerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Glacier2.SSLSessionManagerPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        create_ex_ = { 'Glacier2.CannotCreateSessionException' }
    end
end
