classdef ServiceManagerPrx < Ice.ObjectPrx
    %SERVICEMANAGERPRX Administers the services of an IceBox server.
    %
    %   Creation
    %     Syntax
    %       prx = IceBox.ServiceManagerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ServiceManagerPrx Methods:
    %     addObserver - Registers a new observer with this service manager.
    %     addObserverAsync - An asynchronous addObserver.
    %     shutdown - Shuts down all services.
    %     shutdownAsync - An asynchronous shutdown.
    %     startService - Starts a service.
    %     startServiceAsync - An asynchronous startService.
    %     stopService - Stops a service.
    %     stopServiceAsync - An asynchronous stopService.
    %
    %   ServiceManagerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceBox::ServiceManager.
    %     uncheckedCast - Creates a ServiceManagerPrx from another proxy without any validation.
    %
    %   Generated from ServiceManager.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function startService(obj, service, context)
            %STARTSERVICE Starts a service.
            %
            %   Input Arguments
            %     service - The service name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceBox.AlreadyStartedException - Thrown when the service is already running.
            %     IceBox.NoSuchServiceException - Thrown when IceBox does not know a service named @p service.
            
            arguments
                obj (1, 1) IceBox.ServiceManagerPrx
                service (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(service);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('startService', 0, true, os_, false, IceBox.ServiceManagerPrx.startService_ex_, context);
        end

        function future = startServiceAsync(obj, service, context)
            %STARTSERVICEASYNC Starts a service.
            %
            %   Input Arguments
            %     service - The service name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also startService, Ice.Future.
            
            arguments
                obj (1, 1) IceBox.ServiceManagerPrx
                service (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(service);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('startService', 0, true, os_, 0, [], IceBox.ServiceManagerPrx.startService_ex_, context);
        end

        function stopService(obj, service, context)
            %STOPSERVICE Stops a service.
            %
            %   Input Arguments
            %     service - The service name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceBox.AlreadyStoppedException - Thrown when the service is already stopped.
            %     IceBox.NoSuchServiceException - Thrown when IceBox does not know a service named @p service.
            
            arguments
                obj (1, 1) IceBox.ServiceManagerPrx
                service (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(service);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('stopService', 0, true, os_, false, IceBox.ServiceManagerPrx.stopService_ex_, context);
        end

        function future = stopServiceAsync(obj, service, context)
            %STOPSERVICEASYNC Stops a service.
            %
            %   Input Arguments
            %     service - The service name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also stopService, Ice.Future.
            
            arguments
                obj (1, 1) IceBox.ServiceManagerPrx
                service (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(service);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('stopService', 0, true, os_, 0, [], IceBox.ServiceManagerPrx.stopService_ex_, context);
        end

        function addObserver(obj, observer, context)
            %ADDOBSERVER Registers a new observer with this service manager.
            %
            %   Input Arguments
            %     observer - The new observer.
            %       IceBox.ServiceObserverPrx scalar | empty array of IceBox.ServiceObserverPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceBox.ServiceManagerPrx
                observer IceBox.ServiceObserverPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(observer);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('addObserver', 0, false, os_, false, {}, context);
        end

        function future = addObserverAsync(obj, observer, context)
            %ADDOBSERVERASYNC Registers a new observer with this service manager.
            %
            %   Input Arguments
            %     observer - The new observer.
            %       IceBox.ServiceObserverPrx scalar | empty array of IceBox.ServiceObserverPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also addObserver, Ice.Future.
            
            arguments
                obj (1, 1) IceBox.ServiceManagerPrx
                observer IceBox.ServiceObserverPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(observer);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('addObserver', 0, false, os_, 0, [], {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN Shuts down all services.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceBox.ServiceManagerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('shutdown', 0, false, [], false, {}, context);
        end

        function future = shutdownAsync(obj, context)
            %SHUTDOWNASYNC Shuts down all services.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also shutdown, Ice.Future.
            
            arguments
                obj (1, 1) IceBox.ServiceManagerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceBox::ServiceManager';
        end

        function r = ice_read(is)
            r = is.readProxy('IceBox.ServiceManagerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceBox::ServiceManager.
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
            %     r - A IceBox.ServiceManagerPrx scalar if the target object implements Slice interface 
            %       ::IceBox::ServiceManager; otherwise, an empty array of IceBox.ServiceManagerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceBox.ServiceManagerPrx.ice_staticId(), 'IceBox.ServiceManagerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceBox.ServiceManagerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceBox.ServiceManagerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceBox.ServiceManagerPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        startService_ex_ = { 'IceBox.AlreadyStartedException', 'IceBox.NoSuchServiceException' }
        stopService_ex_ = { 'IceBox.AlreadyStoppedException', 'IceBox.NoSuchServiceException' }
    end
end
