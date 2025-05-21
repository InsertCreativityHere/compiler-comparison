% ApplicationObserverPrx   Summary of ApplicationObserverPrx
%
% Monitors applications.
%
% ApplicationObserverPrx Methods:
%   applicationInit - Provides the initial application infos to the observer.
%   applicationInitAsync - Provides the initial application infos to the observer.
%   applicationAdded - Notifies the observer that an application was added.
%   applicationAddedAsync - Notifies the observer that an application was added.
%   applicationRemoved - Notifies the observer that an application was removed.
%   applicationRemovedAsync - Notifies the observer that an application was removed.
%   applicationUpdated - Notifies the observer that an application was updated.
%   applicationUpdatedAsync - Notifies the observer that an application was updated.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef ApplicationObserverPrx < Ice.ObjectPrx
    methods
        function applicationInit(obj, serial, applications, varargin)
            % applicationInit   Provides the initial application infos to the observer.
            %
            % Parameters:
            %   serial (int32) - The current serial number of the registry database. This serial number allows observers to
            %     make sure that their internal state is synchronized with the registry.
            %   applications (IceGrid.ApplicationInfoSeq) - The applications currently registered with the registry.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(serial);
            IceGrid.ApplicationInfoSeq.write(os_, applications);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('applicationInit', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = applicationInitAsync(obj, serial, applications, varargin)
            % applicationInitAsync   Provides the initial application infos to the observer.
            %
            % Parameters:
            %   serial (int32) - The current serial number of the registry database. This serial number allows observers to
            %     make sure that their internal state is synchronized with the registry.
            %   applications (IceGrid.ApplicationInfoSeq) - The applications currently registered with the registry.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(serial);
            IceGrid.ApplicationInfoSeq.write(os_, applications);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('applicationInit', 0, false, os_, 0, [], {}, varargin{:});
        end
        function applicationAdded(obj, serial, desc, varargin)
            % applicationAdded   Notifies the observer that an application was added.
            %
            % Parameters:
            %   serial (int32) - The new serial number of the registry database.
            %   desc (IceGrid.ApplicationInfo) - The descriptor of the new application.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(serial);
            IceGrid.ApplicationInfo.ice_write(os_, desc);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('applicationAdded', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = applicationAddedAsync(obj, serial, desc, varargin)
            % applicationAddedAsync   Notifies the observer that an application was added.
            %
            % Parameters:
            %   serial (int32) - The new serial number of the registry database.
            %   desc (IceGrid.ApplicationInfo) - The descriptor of the new application.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(serial);
            IceGrid.ApplicationInfo.ice_write(os_, desc);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('applicationAdded', 0, false, os_, 0, [], {}, varargin{:});
        end
        function applicationRemoved(obj, serial, name, varargin)
            % applicationRemoved   Notifies the observer that an application was removed.
            %
            % Parameters:
            %   serial (int32) - The new serial number of the registry database.
            %   name (char) - The name of the application that was removed.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(serial);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('applicationRemoved', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = applicationRemovedAsync(obj, serial, name, varargin)
            % applicationRemovedAsync   Notifies the observer that an application was removed.
            %
            % Parameters:
            %   serial (int32) - The new serial number of the registry database.
            %   name (char) - The name of the application that was removed.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(serial);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('applicationRemoved', 0, false, os_, 0, [], {}, varargin{:});
        end
        function applicationUpdated(obj, serial, desc, varargin)
            % applicationUpdated   Notifies the observer that an application was updated.
            %
            % Parameters:
            %   serial (int32) - The new serial number of the registry database.
            %   desc (IceGrid.ApplicationUpdateInfo) - The descriptor of the update.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(serial);
            IceGrid.ApplicationUpdateInfo.ice_write(os_, desc);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('applicationUpdated', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = applicationUpdatedAsync(obj, serial, desc, varargin)
            % applicationUpdatedAsync   Notifies the observer that an application was updated.
            %
            % Parameters:
            %   serial (int32) - The new serial number of the registry database.
            %   desc (IceGrid.ApplicationUpdateInfo) - The descriptor of the update.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(serial);
            IceGrid.ApplicationUpdateInfo.ice_write(os_, desc);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('applicationUpdated', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::ApplicationObserver';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.ApplicationObserverPrx');
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
            % Returns (IceGrid.ApplicationObserverPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.ApplicationObserverPrx.ice_staticId(), 'IceGrid.ApplicationObserverPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.ApplicationObserverPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.ApplicationObserverPrx', varargin{:});
        end
    end
end
