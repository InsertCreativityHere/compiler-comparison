classdef ApplicationObserverPrx < Ice.ObjectPrx
    %APPLICATIONOBSERVERPRX Monitors applications.
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.ApplicationObserverPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ApplicationObserverPrx Methods:
    %     applicationAdded - Notifies the observer that an application was added.
    %     applicationAddedAsync - An asynchronous applicationAdded.
    %     applicationInit - Provides the initial application infos to the observer.
    %     applicationInitAsync - An asynchronous applicationInit.
    %     applicationRemoved - Notifies the observer that an application was removed.
    %     applicationRemovedAsync - An asynchronous applicationRemoved.
    %     applicationUpdated - Notifies the observer that an application was updated.
    %     applicationUpdatedAsync - An asynchronous applicationUpdated.
    %
    %   ApplicationObserverPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::ApplicationObserver.
    %     uncheckedCast - Creates a ApplicationObserverPrx from another proxy without any validation.
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function applicationInit(obj, serial, applications, context)
            %APPLICATIONINIT Provides the initial application infos to the observer.
            %
            %   Input Arguments
            %     serial - The current serial number of the registry database. This serial number allows observers to
            %       make sure that their internal state is synchronized with the registry.
            %       int32 scalar
            %     applications - The applications currently registered with the registry.
            %       IceGrid.ApplicationInfo vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ApplicationObserverPrx
                serial (1, 1) int32
                applications (1, :) IceGrid.ApplicationInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(serial);
            IceGrid.ApplicationInfoSeq.write(os_, applications);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('applicationInit', 0, false, os_, false, {}, context);
        end

        function future = applicationInitAsync(obj, serial, applications, context)
            %APPLICATIONINITASYNC Provides the initial application infos to the observer.
            %
            %   Input Arguments
            %     serial - The current serial number of the registry database. This serial number allows observers to
            %       make sure that their internal state is synchronized with the registry.
            %       int32 scalar
            %     applications - The applications currently registered with the registry.
            %       IceGrid.ApplicationInfo vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also applicationInit, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ApplicationObserverPrx
                serial (1, 1) int32
                applications (1, :) IceGrid.ApplicationInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(serial);
            IceGrid.ApplicationInfoSeq.write(os_, applications);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('applicationInit', 0, false, os_, 0, [], {}, context);
        end

        function applicationAdded(obj, serial, desc, context)
            %APPLICATIONADDED Notifies the observer that an application was added.
            %
            %   Input Arguments
            %     serial - The new serial number of the registry database.
            %       int32 scalar
            %     desc - The descriptor of the new application.
            %       IceGrid.ApplicationInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ApplicationObserverPrx
                serial (1, 1) int32
                desc (1, 1) IceGrid.ApplicationInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(serial);
            IceGrid.ApplicationInfo.ice_write(os_, desc);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('applicationAdded', 0, false, os_, false, {}, context);
        end

        function future = applicationAddedAsync(obj, serial, desc, context)
            %APPLICATIONADDEDASYNC Notifies the observer that an application was added.
            %
            %   Input Arguments
            %     serial - The new serial number of the registry database.
            %       int32 scalar
            %     desc - The descriptor of the new application.
            %       IceGrid.ApplicationInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also applicationAdded, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ApplicationObserverPrx
                serial (1, 1) int32
                desc (1, 1) IceGrid.ApplicationInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(serial);
            IceGrid.ApplicationInfo.ice_write(os_, desc);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('applicationAdded', 0, false, os_, 0, [], {}, context);
        end

        function applicationRemoved(obj, serial, name, context)
            %APPLICATIONREMOVED Notifies the observer that an application was removed.
            %
            %   Input Arguments
            %     serial - The new serial number of the registry database.
            %       int32 scalar
            %     name - The name of the application that was removed.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ApplicationObserverPrx
                serial (1, 1) int32
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(serial);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('applicationRemoved', 0, false, os_, false, {}, context);
        end

        function future = applicationRemovedAsync(obj, serial, name, context)
            %APPLICATIONREMOVEDASYNC Notifies the observer that an application was removed.
            %
            %   Input Arguments
            %     serial - The new serial number of the registry database.
            %       int32 scalar
            %     name - The name of the application that was removed.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also applicationRemoved, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ApplicationObserverPrx
                serial (1, 1) int32
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(serial);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('applicationRemoved', 0, false, os_, 0, [], {}, context);
        end

        function applicationUpdated(obj, serial, desc, context)
            %APPLICATIONUPDATED Notifies the observer that an application was updated.
            %
            %   Input Arguments
            %     serial - The new serial number of the registry database.
            %       int32 scalar
            %     desc - The descriptor of the update.
            %       IceGrid.ApplicationUpdateInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ApplicationObserverPrx
                serial (1, 1) int32
                desc (1, 1) IceGrid.ApplicationUpdateInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(serial);
            IceGrid.ApplicationUpdateInfo.ice_write(os_, desc);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('applicationUpdated', 0, false, os_, false, {}, context);
        end

        function future = applicationUpdatedAsync(obj, serial, desc, context)
            %APPLICATIONUPDATEDASYNC Notifies the observer that an application was updated.
            %
            %   Input Arguments
            %     serial - The new serial number of the registry database.
            %       int32 scalar
            %     desc - The descriptor of the update.
            %       IceGrid.ApplicationUpdateInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also applicationUpdated, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ApplicationObserverPrx
                serial (1, 1) int32
                desc (1, 1) IceGrid.ApplicationUpdateInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(serial);
            IceGrid.ApplicationUpdateInfo.ice_write(os_, desc);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('applicationUpdated', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::ApplicationObserver';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.ApplicationObserverPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::ApplicationObserver.
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
            %     r - A IceGrid.ApplicationObserverPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::ApplicationObserver; otherwise, an empty array of IceGrid.ApplicationObserverPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.ApplicationObserverPrx.ice_staticId(), 'IceGrid.ApplicationObserverPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.ApplicationObserverPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.ApplicationObserverPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.ApplicationObserverPrx', varargin{:});
        end
    end
end
