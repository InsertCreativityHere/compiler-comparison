% SessionControlPrx   Summary of SessionControlPrx
%
% An administrative session control object, which is tied to the lifecycle of a Session.
%
% SessionControlPrx Methods:
%   categories - Access the object that manages the allowable categories for object identities for this session.
%   categoriesAsync - Access the object that manages the allowable categories for object identities for this session.
%   adapterIds - Access the object that manages the allowable adapter identities for objects for this session.
%   adapterIdsAsync - Access the object that manages the allowable adapter identities for objects for this session.
%   identities - Access the object that manages the allowable object identities for this session.
%   identitiesAsync - Access the object that manages the allowable object identities for this session.
%   getSessionTimeout - Get the session timeout.
%   getSessionTimeoutAsync - Get the session timeout.
%   destroy - Destroy the associated session.
%   destroyAsync - Destroy the associated session.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also Glacier2.Session

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Session.ice by slice2matlab version 3.8.0-alpha.0

classdef SessionControlPrx < Ice.ObjectPrx
    methods
        function result = categories(obj, varargin)
            % categories   Access the object that manages the allowable categories for object identities for this session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Glacier2.StringSetPrx) - A StringSet object. The returned proxy is never null.
            
            is_ = obj.iceInvoke('categories', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Glacier2.StringSetPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = categoriesAsync(obj, varargin)
            % categoriesAsync   Access the object that manages the allowable categories for object identities for this session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Glacier2.StringSetPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('categories', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = adapterIds(obj, varargin)
            % adapterIds   Access the object that manages the allowable adapter identities for objects for this session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Glacier2.StringSetPrx) - A StringSet object. The returned proxy is never null.
            
            is_ = obj.iceInvoke('adapterIds', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Glacier2.StringSetPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = adapterIdsAsync(obj, varargin)
            % adapterIdsAsync   Access the object that manages the allowable adapter identities for objects for this session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Glacier2.StringSetPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('adapterIds', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = identities(obj, varargin)
            % identities   Access the object that manages the allowable object identities for this session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Glacier2.IdentitySetPrx) - An IdentitySet object. The returned proxy is never null.
            
            is_ = obj.iceInvoke('identities', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Glacier2.IdentitySetPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = identitiesAsync(obj, varargin)
            % identitiesAsync   Access the object that manages the allowable object identities for this session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Glacier2.IdentitySetPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('identities', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getSessionTimeout(obj, varargin)
            % getSessionTimeout   Get the session timeout.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32) - The timeout.
            
            is_ = obj.iceInvoke('getSessionTimeout', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getSessionTimeoutAsync(obj, varargin)
            % getSessionTimeoutAsync   Get the session timeout.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getSessionTimeout', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function destroy(obj, varargin)
            % destroy   Destroy the associated session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('destroy', 0, false, [], false, {}, varargin{:});
        end
        function r_ = destroyAsync(obj, varargin)
            % destroyAsync   Destroy the associated session.
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
            id = '::Glacier2::SessionControl';
        end
        function r = ice_read(is)
            r = is.readProxy('Glacier2.SessionControlPrx');
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
            % Returns (Glacier2.SessionControlPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Glacier2.SessionControlPrx.ice_staticId(), 'Glacier2.SessionControlPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Glacier2.SessionControlPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Glacier2.SessionControlPrx', varargin{:});
        end
    end
end
