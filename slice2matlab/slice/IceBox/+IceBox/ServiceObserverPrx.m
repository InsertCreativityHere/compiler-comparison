classdef ServiceObserverPrx < Ice.ObjectPrx
    %SERVICEOBSERVERPRX Observes the status of services in an IceBox server.
    %
    %   Creation
    %     Syntax
    %       prx = IceBox.ServiceObserverPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ServiceObserverPrx Methods:
    %     servicesStarted - Receives the names of the services that were started.
    %     servicesStartedAsync - An asynchronous servicesStarted.
    %     servicesStopped - Receives the names of the services that were stopped.
    %     servicesStoppedAsync - An asynchronous servicesStopped.
    %
    %   ServiceObserverPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceBox::ServiceObserver.
    %     uncheckedCast - Creates a ServiceObserverPrx from another proxy without any validation.
    %
    %   See also IceBox.ServiceManager.addObserver
    %
    %   Remarks
    %     This interface is implemented by admin tools that monitor the IceBox server.
    %
    %   Generated from ServiceManager.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function servicesStarted(obj, services, context)
            %SERVICESSTARTED Receives the names of the services that were started.
            %
            %   Input Arguments
            %     services - The names of the services that were started.
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceBox.ServiceObserverPrx
                services (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(services);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('servicesStarted', 0, false, os_, false, {}, context);
        end

        function future = servicesStartedAsync(obj, services, context)
            %SERVICESSTARTEDASYNC Receives the names of the services that were started.
            %
            %   Input Arguments
            %     services - The names of the services that were started.
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also servicesStarted, Ice.Future.
            
            arguments
                obj (1, 1) IceBox.ServiceObserverPrx
                services (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(services);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('servicesStarted', 0, false, os_, 0, [], {}, context);
        end

        function servicesStopped(obj, services, context)
            %SERVICESSTOPPED Receives the names of the services that were stopped.
            %
            %   Input Arguments
            %     services - The names of the services that were stopped.
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceBox.ServiceObserverPrx
                services (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(services);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('servicesStopped', 0, false, os_, false, {}, context);
        end

        function future = servicesStoppedAsync(obj, services, context)
            %SERVICESSTOPPEDASYNC Receives the names of the services that were stopped.
            %
            %   Input Arguments
            %     services - The names of the services that were stopped.
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also servicesStopped, Ice.Future.
            
            arguments
                obj (1, 1) IceBox.ServiceObserverPrx
                services (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(services);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('servicesStopped', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceBox::ServiceObserver';
        end

        function r = ice_read(is)
            r = is.readProxy('IceBox.ServiceObserverPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceBox::ServiceObserver.
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
            %     r - A IceBox.ServiceObserverPrx scalar if the target object implements Slice interface 
            %       ::IceBox::ServiceObserver; otherwise, an empty array of IceBox.ServiceObserverPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceBox.ServiceObserverPrx.ice_staticId(), 'IceBox.ServiceObserverPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceBox.ServiceObserverPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceBox.ServiceObserverPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceBox.ServiceObserverPrx', varargin{:});
        end
    end
end
