% SessionPrx   Summary of SessionPrx
%
% A session object is used by IceGrid clients to allocate and release objects. Client sessions are created either
% via the Registry object or via the registry client SessionManager object.
%
% SessionPrx Methods:
%   keepAlive - Keep the session alive.
%   keepAliveAsync - Keep the session alive.
%   allocateObjectById - Allocate an object.
%   allocateObjectByIdAsync - Allocate an object.
%   allocateObjectByType - Allocate an object with the given type.
%   allocateObjectByTypeAsync - Allocate an object with the given type.
%   releaseObject - Release an object that was allocated using allocateObjectById or allocateObjectByType.
%   releaseObjectAsync - Release an object that was allocated using allocateObjectById or allocateObjectByType.
%   setAllocationTimeout - Set the allocation timeout.
%   setAllocationTimeoutAsync - Set the allocation timeout.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also Registry

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Session.ice by slice2matlab version 3.8.0-alpha.0

classdef SessionPrx < Glacier2.SessionPrx
    methods
        function keepAlive(obj, varargin)
            % keepAlive   Keep the session alive. Clients should call this operation regularly to prevent the server from reaping the
            % session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % See also Registry.getSessionTimeout
            
            obj.iceInvoke('keepAlive', 1, false, [], false, {}, varargin{:});
        end
        function r_ = keepAliveAsync(obj, varargin)
            % keepAliveAsync   Keep the session alive. Clients should call this operation regularly to prevent the server from reaping the
            % session.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % See also Registry.getSessionTimeout
            
            r_ = obj.iceInvokeAsync('keepAlive', 1, false, [], 0, [], {}, varargin{:});
        end
        function result = allocateObjectById(obj, id, varargin)
            % allocateObjectById   Allocate an object. Depending on the allocation timeout, this operation might hang until the object is
            % available or until the timeout is reached.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity of the object to allocate.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - The proxy of the allocated object. The returned proxy is never null.
            %
            % Exceptions:
            %   IceGrid.AllocationException - Raised if the object can't be allocated.
            %   IceGrid.ObjectNotRegisteredException - Raised if the object with the given identity is not registered with
            %     the registry.
            %
            % See also setAllocationTimeout, releaseObject
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('allocateObjectById', 0, true, os_, true, IceGrid.SessionPrx.allocateObjectById_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = allocateObjectByIdAsync(obj, id, varargin)
            % allocateObjectByIdAsync   Allocate an object. Depending on the allocation timeout, this operation might hang until the object is
            % available or until the timeout is reached.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity of the object to allocate.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AllocationException - Raised if the object can't be allocated.
            %   IceGrid.ObjectNotRegisteredException - Raised if the object with the given identity is not registered with
            %     the registry.
            %
            % See also setAllocationTimeout, releaseObject
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('allocateObjectById', 0, true, os_, 1, @unmarshal, IceGrid.SessionPrx.allocateObjectById_ex_, varargin{:});
        end
        function result = allocateObjectByType(obj, type, varargin)
            % allocateObjectByType   Allocate an object with the given type. Depending on the allocation timeout, this operation can block until
            % an object becomes available or until the timeout is reached.
            %
            % Parameters:
            %   type (char) - The type of the object.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - The proxy of the allocated object. The returned proxy is never null.
            %
            % Exceptions:
            %   IceGrid.AllocationException - Raised if the object could not be allocated.
            %
            % See also setAllocationTimeout, releaseObject
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('allocateObjectByType', 0, true, os_, true, IceGrid.SessionPrx.allocateObjectByType_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = allocateObjectByTypeAsync(obj, type, varargin)
            % allocateObjectByTypeAsync   Allocate an object with the given type. Depending on the allocation timeout, this operation can block until
            % an object becomes available or until the timeout is reached.
            %
            % Parameters:
            %   type (char) - The type of the object.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AllocationException - Raised if the object could not be allocated.
            %
            % See also setAllocationTimeout, releaseObject
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('allocateObjectByType', 0, true, os_, 1, @unmarshal, IceGrid.SessionPrx.allocateObjectByType_ex_, varargin{:});
        end
        function releaseObject(obj, id, varargin)
            % releaseObject   Release an object that was allocated using allocateObjectById or
            % allocateObjectByType.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity of the object to release.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceGrid.AllocationException - Raised if the given object can't be released. This might happen if the object
            %     isn't allocatable or isn't allocated by the session.
            %   IceGrid.ObjectNotRegisteredException - Raised if the object with the given identity is not registered with
            %     the registry.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('releaseObject', 0, true, os_, false, IceGrid.SessionPrx.releaseObject_ex_, varargin{:});
        end
        function r_ = releaseObjectAsync(obj, id, varargin)
            % releaseObjectAsync   Release an object that was allocated using allocateObjectById or
            % allocateObjectByType.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity of the object to release.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.AllocationException - Raised if the given object can't be released. This might happen if the object
            %     isn't allocatable or isn't allocated by the session.
            %   IceGrid.ObjectNotRegisteredException - Raised if the object with the given identity is not registered with
            %     the registry.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('releaseObject', 0, true, os_, 0, [], IceGrid.SessionPrx.releaseObject_ex_, varargin{:});
        end
        function setAllocationTimeout(obj, timeout, varargin)
            % setAllocationTimeout   Set the allocation timeout. If no objects are available for an allocation request, a call to
            % allocateObjectById or allocateObjectByType will block for the duration of this
            % timeout.
            %
            % Parameters:
            %   timeout (int32) - The timeout in milliseconds.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(timeout);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setAllocationTimeout', 1, false, os_, false, {}, varargin{:});
        end
        function r_ = setAllocationTimeoutAsync(obj, timeout, varargin)
            % setAllocationTimeoutAsync   Set the allocation timeout. If no objects are available for an allocation request, a call to
            % allocateObjectById or allocateObjectByType will block for the duration of this
            % timeout.
            %
            % Parameters:
            %   timeout (int32) - The timeout in milliseconds.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(timeout);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setAllocationTimeout', 1, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::Session';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.SessionPrx');
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
            % Returns (IceGrid.SessionPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.SessionPrx.ice_staticId(), 'IceGrid.SessionPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.SessionPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.SessionPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = SessionPrx(communicator, encoding, impl, bytes)
            obj = obj@Glacier2.SessionPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        allocateObjectById_ex_ = { 'IceGrid.ObjectNotRegisteredException', 'IceGrid.AllocationException' }
        allocateObjectByType_ex_ = { 'IceGrid.AllocationException' }
        releaseObject_ex_ = { 'IceGrid.ObjectNotRegisteredException', 'IceGrid.AllocationException' }
    end
end
