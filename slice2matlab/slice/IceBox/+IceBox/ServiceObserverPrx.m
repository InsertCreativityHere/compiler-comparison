% ServiceObserverPrx   Summary of ServiceObserverPrx
%
% An Observer interface implemented by admin clients interested in the status of services.
%
% ServiceObserverPrx Methods:
%   servicesStarted - Receives the names of the services that were started.
%   servicesStartedAsync - Receives the names of the services that were started.
%   servicesStopped - Receives the names of the services that were stopped.
%   servicesStoppedAsync - Receives the names of the services that were stopped.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also IceBox.ServiceManager

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServiceManager.ice by slice2matlab version 3.8.0-alpha.0

classdef ServiceObserverPrx < Ice.ObjectPrx
    methods
        function servicesStarted(obj, services, varargin)
            % servicesStarted   Receives the names of the services that were started.
            %
            % Parameters:
            %   services (Ice.StringSeq) - The names of the services.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(services);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('servicesStarted', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = servicesStartedAsync(obj, services, varargin)
            % servicesStartedAsync   Receives the names of the services that were started.
            %
            % Parameters:
            %   services (Ice.StringSeq) - The names of the services.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(services);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('servicesStarted', 0, false, os_, 0, [], {}, varargin{:});
        end
        function servicesStopped(obj, services, varargin)
            % servicesStopped   Receives the names of the services that were stopped.
            %
            % Parameters:
            %   services (Ice.StringSeq) - The names of the services.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(services);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('servicesStopped', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = servicesStoppedAsync(obj, services, varargin)
            % servicesStoppedAsync   Receives the names of the services that were stopped.
            %
            % Parameters:
            %   services (Ice.StringSeq) - The names of the services.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(services);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('servicesStopped', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceBox::ServiceObserver';
        end
        function r = ice_read(is)
            r = is.readProxy('IceBox.ServiceObserverPrx');
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
            % Returns (IceBox.ServiceObserverPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceBox.ServiceObserverPrx.ice_staticId(), 'IceBox.ServiceObserverPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceBox.ServiceObserverPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceBox.ServiceObserverPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = ServiceObserverPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
