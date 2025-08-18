classdef SessionPrx < Glacier2.SessionPrx
    %SESSIONPRX Represents a session object used by IceGrid clients to allocate and release objects. Client sessions are created
    %   either via the <a href="matlab:help IceGrid.RegistryPrx -displayBanner">RegistryPrx</a> object or via the registry client `SessionManager` object.
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.SessionPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   SessionPrx Methods:
    %     allocateObjectById - Allocates an object.
    %     allocateObjectByIdAsync - An asynchronous allocateObjectById.
    %     allocateObjectByType - Allocates an object with the given type.
    %     allocateObjectByTypeAsync - An asynchronous allocateObjectByType.
    %     keepAlive - Keeps the session alive.
    %     keepAliveAsync - An asynchronous keepAlive.
    %     releaseObject - Releases an object that was allocated using <a href="matlab:help IceGrid.SessionPrx/allocateObjectById -displayBanner">allocateObjectById</a> or <a href="matlab:help IceGrid.SessionPrx/allocateObjectByType -displayBanner">allocateObjectByType</a>.
    %     releaseObjectAsync - An asynchronous releaseObject.
    %     setAllocationTimeout - Sets the allocation timeout.
    %     setAllocationTimeoutAsync - An asynchronous setAllocationTimeout.
    %
    %   SessionPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::Session.
    %     uncheckedCast - Creates a SessionPrx from another proxy without any validation.
    %
    %   Generated from Session.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function keepAlive(obj, context)
            %KEEPALIVE Keeps the session alive.
            %
            %   Deprecated: As of Ice 3.8, there is no need to call this operation, and its implementation does nothing.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.SessionPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('keepAlive', 2, false, [], false, {}, context);
        end

        function future = keepAliveAsync(obj, context)
            %KEEPALIVEASYNC Keeps the session alive.
            %
            %   Deprecated: As of Ice 3.8, there is no need to call this operation, and its implementation does nothing.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also keepAlive, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.SessionPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('keepAlive', 2, false, [], 0, [], {}, context);
        end

        function returnValue = allocateObjectById(obj, id, context)
            %ALLOCATEOBJECTBYID Allocates an object.
            %
            %   Input Arguments
            %     id - The identity of the object to allocate.
            %       Ice.Identity scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to the allocated object. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %
            %   Exceptions
            %     IceGrid.ObjectNotRegisteredException - Thrown when an object with the given identity is not registered with
            %       the registry.
            %     IceGrid.AllocationException - Thrown when the allocation fails.
            %
            %   See also setAllocationTimeout, releaseObject
            
            arguments
                obj (1, 1) IceGrid.SessionPrx
                id (1, 1) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('allocateObjectById', 0, true, os_, true, IceGrid.SessionPrx.allocateObjectById_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = allocateObjectByIdAsync(obj, id, context)
            %ALLOCATEOBJECTBYIDASYNC Allocates an object.
            %
            %   Input Arguments
            %     id - The identity of the object to allocate.
            %       Ice.Identity scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also allocateObjectById, Ice.Future.
            %
            %   See also setAllocationTimeout, releaseObject
            
            arguments
                obj (1, 1) IceGrid.SessionPrx
                id (1, 1) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('allocateObjectById', 0, true, os_, 1, @unmarshal, IceGrid.SessionPrx.allocateObjectById_ex_, context);
        end

        function returnValue = allocateObjectByType(obj, type, context)
            %ALLOCATEOBJECTBYTYPE Allocates an object with the given type.
            %
            %   Input Arguments
            %     type - The type of the object.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - A proxy to the allocated object. This proxy is never null.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %
            %   Exceptions
            %     IceGrid.AllocationException - Thrown when the allocation fails.
            %
            %   See also setAllocationTimeout, releaseObject
            
            arguments
                obj (1, 1) IceGrid.SessionPrx
                type (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('allocateObjectByType', 0, true, os_, true, IceGrid.SessionPrx.allocateObjectByType_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = allocateObjectByTypeAsync(obj, type, context)
            %ALLOCATEOBJECTBYTYPEASYNC Allocates an object with the given type.
            %
            %   Input Arguments
            %     type - The type of the object.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also allocateObjectByType, Ice.Future.
            %
            %   See also setAllocationTimeout, releaseObject
            
            arguments
                obj (1, 1) IceGrid.SessionPrx
                type (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('allocateObjectByType', 0, true, os_, 1, @unmarshal, IceGrid.SessionPrx.allocateObjectByType_ex_, context);
        end

        function releaseObject(obj, id, context)
            %RELEASEOBJECT Releases an object that was allocated using <a href="matlab:help IceGrid.SessionPrx/allocateObjectById -displayBanner">allocateObjectById</a> or <a href="matlab:help IceGrid.SessionPrx/allocateObjectByType -displayBanner">allocateObjectByType</a>.
            %
            %   Input Arguments
            %     id - The identity of the object to release.
            %       Ice.Identity scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.ObjectNotRegisteredException - Thrown when an object with the given identity is not registered with
            %       the registry.
            %     IceGrid.AllocationException - Thrown when the object can't be released. This can happen when the object is not
            %       allocatable or is not allocated by this session.
            
            arguments
                obj (1, 1) IceGrid.SessionPrx
                id (1, 1) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('releaseObject', 0, true, os_, false, IceGrid.SessionPrx.releaseObject_ex_, context);
        end

        function future = releaseObjectAsync(obj, id, context)
            %RELEASEOBJECTASYNC Releases an object that was allocated using <a href="matlab:help IceGrid.SessionPrx/allocateObjectById -displayBanner">allocateObjectById</a> or <a href="matlab:help IceGrid.SessionPrx/allocateObjectByType -displayBanner">allocateObjectByType</a>.
            %
            %   Input Arguments
            %     id - The identity of the object to release.
            %       Ice.Identity scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also releaseObject, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.SessionPrx
                id (1, 1) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('releaseObject', 0, true, os_, 0, [], IceGrid.SessionPrx.releaseObject_ex_, context);
        end

        function setAllocationTimeout(obj, timeout, context)
            %SETALLOCATIONTIMEOUT Sets the allocation timeout. When no object is immediately available for an allocation request, the
            %   implementation of <a href="matlab:help IceGrid.SessionPrx/allocateObjectById -displayBanner">allocateObjectById</a> and <a href="matlab:help IceGrid.SessionPrx/allocateObjectByType -displayBanner">allocateObjectByType</a> waits for the duration of
            %   this timeout.
            %
            %   Input Arguments
            %     timeout - The timeout in milliseconds.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.SessionPrx
                timeout (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(timeout);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setAllocationTimeout', 2, false, os_, false, {}, context);
        end

        function future = setAllocationTimeoutAsync(obj, timeout, context)
            %SETALLOCATIONTIMEOUTASYNC Sets the allocation timeout. When no object is immediately available for an allocation request, the
            %   implementation of <a href="matlab:help IceGrid.SessionPrx/allocateObjectById -displayBanner">allocateObjectById</a> and <a href="matlab:help IceGrid.SessionPrx/allocateObjectByType -displayBanner">allocateObjectByType</a> waits for the duration of
            %   this timeout.
            %
            %   Input Arguments
            %     timeout - The timeout in milliseconds.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setAllocationTimeout, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.SessionPrx
                timeout (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(timeout);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setAllocationTimeout', 2, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::Session';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.SessionPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::Session.
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
            %     r - A IceGrid.SessionPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::Session; otherwise, an empty array of IceGrid.SessionPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.SessionPrx.ice_staticId(), 'IceGrid.SessionPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.SessionPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.SessionPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.SessionPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        allocateObjectById_ex_ = { 'IceGrid.ObjectNotRegisteredException', 'IceGrid.AllocationException' }
        allocateObjectByType_ex_ = { 'IceGrid.AllocationException' }
        releaseObject_ex_ = { 'IceGrid.ObjectNotRegisteredException', 'IceGrid.AllocationException' }
    end
end
