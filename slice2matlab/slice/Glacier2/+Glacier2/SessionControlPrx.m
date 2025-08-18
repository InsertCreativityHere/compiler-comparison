classdef SessionControlPrx < Ice.ObjectPrx
    %SESSIONCONTROLPRX Represents a router-provided object that allows an application-provided session manager to configure the
    %   routing constraints for a session.
    %
    %   Creation
    %     Syntax
    %       prx = Glacier2.SessionControlPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   SessionControlPrx Methods:
    %     adapterIds - Gets a proxy to the object that manages the allowable adapter identities for objects for this session.
    %     adapterIdsAsync - An asynchronous adapterIds.
    %     categories - Gets a proxy to the object that manages the allowable categories for object identities for this session.
    %     categoriesAsync - An asynchronous categories.
    %     destroy - Destroys the associated session.
    %     destroyAsync - An asynchronous destroy.
    %     getSessionTimeout - Gets the session timeout.
    %     getSessionTimeoutAsync - An asynchronous getSessionTimeout.
    %     identities - Gets a proxy to the object that manages the allowable object identities for this session.
    %     identitiesAsync - An asynchronous identities.
    %
    %   SessionControlPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Glacier2::SessionControl.
    %     uncheckedCast - Creates a SessionControlPrx from another proxy without any validation.
    %
    %   Generated from Session.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = categories(obj, context)
            %CATEGORIES Gets a proxy to the object that manages the allowable categories for object identities for this session.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to a StringSet object. This proxy is never null.
            %       Glacier2.StringSetPrx scalar | empty array of Glacier2.StringSetPrx
            
            arguments
                obj (1, 1) Glacier2.SessionControlPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('categories', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Glacier2.StringSetPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = categoriesAsync(obj, context)
            %CATEGORIESASYNC Gets a proxy to the object that manages the allowable categories for object identities for this session.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also categories, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.SessionControlPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Glacier2.StringSetPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('categories', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = adapterIds(obj, context)
            %ADAPTERIDS Gets a proxy to the object that manages the allowable adapter identities for objects for this session.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to StringSet object. This proxy is never null.
            %       Glacier2.StringSetPrx scalar | empty array of Glacier2.StringSetPrx
            
            arguments
                obj (1, 1) Glacier2.SessionControlPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('adapterIds', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Glacier2.StringSetPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = adapterIdsAsync(obj, context)
            %ADAPTERIDSASYNC Gets a proxy to the object that manages the allowable adapter identities for objects for this session.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also adapterIds, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.SessionControlPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Glacier2.StringSetPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('adapterIds', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = identities(obj, context)
            %IDENTITIES Gets a proxy to the object that manages the allowable object identities for this session.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to an IdentitySet object. This proxy is never null.
            %       Glacier2.IdentitySetPrx scalar | empty array of Glacier2.IdentitySetPrx
            
            arguments
                obj (1, 1) Glacier2.SessionControlPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('identities', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Glacier2.IdentitySetPrx.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = identitiesAsync(obj, context)
            %IDENTITIESASYNC Gets a proxy to the object that manages the allowable object identities for this session.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also identities, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.SessionControlPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Glacier2.IdentitySetPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('identities', 0, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getSessionTimeout(obj, context)
            %GETSESSIONTIMEOUT Gets the session timeout.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The timeout.
            %       int32 scalar
            
            arguments
                obj (1, 1) Glacier2.SessionControlPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getSessionTimeout', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getSessionTimeoutAsync(obj, context)
            %GETSESSIONTIMEOUTASYNC Gets the session timeout.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getSessionTimeout, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.SessionControlPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getSessionTimeout', 2, true, [], 1, @unmarshal, {}, context);
        end

        function destroy(obj, context)
            %DESTROY Destroys the associated session.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Glacier2.SessionControlPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('destroy', 0, false, [], false, {}, context);
        end

        function future = destroyAsync(obj, context)
            %DESTROYASYNC Destroys the associated session.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also destroy, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.SessionControlPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('destroy', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Glacier2::SessionControl';
        end

        function r = ice_read(is)
            r = is.readProxy('Glacier2.SessionControlPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Glacier2::SessionControl.
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
            %     r - A Glacier2.SessionControlPrx scalar if the target object implements Slice interface 
            %       ::Glacier2::SessionControl; otherwise, an empty array of Glacier2.SessionControlPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Glacier2.SessionControlPrx.ice_staticId(), 'Glacier2.SessionControlPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Glacier2.SessionControlPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Glacier2.SessionControlPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Glacier2.SessionControlPrx', varargin{:});
        end
    end
end
