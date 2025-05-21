% ServiceManagerPrx   Summary of ServiceManagerPrx
%
% Administers the services of an IceBox server.
%
% ServiceManagerPrx Methods:
%   startService - Starts a service.
%   startServiceAsync - Starts a service.
%   stopService - Stops a service.
%   stopServiceAsync - Stops a service.
%   addObserver - Registers a new observer with this service manager.
%   addObserverAsync - Registers a new observer with this service manager.
%   shutdown - Shuts down all services.
%   shutdownAsync - Shuts down all services.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from ServiceManager.ice by slice2matlab version 3.8.0-alpha.0

classdef ServiceManagerPrx < Ice.ObjectPrx
    methods
        function startService(obj, service, varargin)
            % startService   Starts a service.
            %
            % Parameters:
            %   service (char) - The service name.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceBox.AlreadyStartedException - Thrown when the service is already running.
            %   IceBox.NoSuchServiceException - Thrown when IceBox does not know a service named @p service.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(service);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('startService', 0, true, os_, false, IceBox.ServiceManagerPrx.startService_ex_, varargin{:});
        end
        function r_ = startServiceAsync(obj, service, varargin)
            % startServiceAsync   Starts a service.
            %
            % Parameters:
            %   service (char) - The service name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceBox.AlreadyStartedException - Thrown when the service is already running.
            %   IceBox.NoSuchServiceException - Thrown when IceBox does not know a service named @p service.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(service);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('startService', 0, true, os_, 0, [], IceBox.ServiceManagerPrx.startService_ex_, varargin{:});
        end
        function stopService(obj, service, varargin)
            % stopService   Stops a service.
            %
            % Parameters:
            %   service (char) - The service name.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceBox.AlreadyStoppedException - Thrown when the service is already stopped.
            %   IceBox.NoSuchServiceException - Thrown when IceBox does not know a service named @p service.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(service);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('stopService', 0, true, os_, false, IceBox.ServiceManagerPrx.stopService_ex_, varargin{:});
        end
        function r_ = stopServiceAsync(obj, service, varargin)
            % stopServiceAsync   Stops a service.
            %
            % Parameters:
            %   service (char) - The service name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceBox.AlreadyStoppedException - Thrown when the service is already stopped.
            %   IceBox.NoSuchServiceException - Thrown when IceBox does not know a service named @p service.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(service);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('stopService', 0, true, os_, 0, [], IceBox.ServiceManagerPrx.stopService_ex_, varargin{:});
        end
        function addObserver(obj, observer, varargin)
            % addObserver   Registers a new observer with this service manager.
            %
            % Parameters:
            %   observer (IceBox.ServiceObserverPrx) - The new observer.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(observer);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('addObserver', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = addObserverAsync(obj, observer, varargin)
            % addObserverAsync   Registers a new observer with this service manager.
            %
            % Parameters:
            %   observer (IceBox.ServiceObserverPrx) - The new observer.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(observer);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('addObserver', 0, false, os_, 0, [], {}, varargin{:});
        end
        function shutdown(obj, varargin)
            % shutdown   Shuts down all services.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            % shutdownAsync   Shuts down all services.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceBox::ServiceManager';
        end
        function r = ice_read(is)
            r = is.readProxy('IceBox.ServiceManagerPrx');
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
            % Returns (IceBox.ServiceManagerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceBox.ServiceManagerPrx.ice_staticId(), 'IceBox.ServiceManagerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceBox.ServiceManagerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceBox.ServiceManagerPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        startService_ex_ = { 'IceBox.AlreadyStartedException', 'IceBox.NoSuchServiceException' }
        stopService_ex_ = { 'IceBox.AlreadyStoppedException', 'IceBox.NoSuchServiceException' }
    end
end
