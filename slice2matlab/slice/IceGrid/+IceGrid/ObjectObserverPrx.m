classdef ObjectObserverPrx < Ice.ObjectPrx
    %OBJECTOBSERVERPRX Monitors well-known objects that are added, updated or removed using <a href="matlab:help IceGrid.AdminPrx -displayBanner">AdminPrx</a>.
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.ObjectObserverPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ObjectObserverPrx Methods:
    %     objectAdded - Notifies the observer that a well-known object was added.
    %     objectAddedAsync - An asynchronous objectAdded.
    %     objectInit - Provides the initial list of well-known objects to the observer.
    %     objectInitAsync - An asynchronous objectInit.
    %     objectRemoved - Notifies the observer that a well-known object was removed.
    %     objectRemovedAsync - An asynchronous objectRemoved.
    %     objectUpdated - Notifies the observer that a well-known object was updated.
    %     objectUpdatedAsync - An asynchronous objectUpdated.
    %
    %   ObjectObserverPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::ObjectObserver.
    %     uncheckedCast - Creates a ObjectObserverPrx from another proxy without any validation.
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function objectInit(obj, objects, context)
            %OBJECTINIT Provides the initial list of well-known objects to the observer.
            %
            %   Input Arguments
            %     objects - The well-known objects registered using <a href="matlab:help IceGrid.AdminPrx -displayBanner">AdminPrx</a>.
            %       IceGrid.ObjectInfo vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ObjectObserverPrx
                objects (1, :) IceGrid.ObjectInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfoSeq.write(os_, objects);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('objectInit', 0, false, os_, false, {}, context);
        end

        function future = objectInitAsync(obj, objects, context)
            %OBJECTINITASYNC Provides the initial list of well-known objects to the observer.
            %
            %   Input Arguments
            %     objects - The well-known objects registered using <a href="matlab:help IceGrid.AdminPrx -displayBanner">AdminPrx</a>.
            %       IceGrid.ObjectInfo vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also objectInit, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ObjectObserverPrx
                objects (1, :) IceGrid.ObjectInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfoSeq.write(os_, objects);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('objectInit', 0, false, os_, 0, [], {}, context);
        end

        function objectAdded(obj, info, context)
            %OBJECTADDED Notifies the observer that a well-known object was added.
            %
            %   Input Arguments
            %     info - The details of the new object.
            %       IceGrid.ObjectInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ObjectObserverPrx
                info (1, 1) IceGrid.ObjectInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('objectAdded', 0, false, os_, false, {}, context);
        end

        function future = objectAddedAsync(obj, info, context)
            %OBJECTADDEDASYNC Notifies the observer that a well-known object was added.
            %
            %   Input Arguments
            %     info - The details of the new object.
            %       IceGrid.ObjectInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also objectAdded, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ObjectObserverPrx
                info (1, 1) IceGrid.ObjectInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('objectAdded', 0, false, os_, 0, [], {}, context);
        end

        function objectUpdated(obj, info, context)
            %OBJECTUPDATED Notifies the observer that a well-known object was updated.
            %
            %   Input Arguments
            %     info - The details of the updated object.
            %       IceGrid.ObjectInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ObjectObserverPrx
                info (1, 1) IceGrid.ObjectInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('objectUpdated', 0, false, os_, false, {}, context);
        end

        function future = objectUpdatedAsync(obj, info, context)
            %OBJECTUPDATEDASYNC Notifies the observer that a well-known object was updated.
            %
            %   Input Arguments
            %     info - The details of the updated object.
            %       IceGrid.ObjectInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also objectUpdated, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ObjectObserverPrx
                info (1, 1) IceGrid.ObjectInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('objectUpdated', 0, false, os_, 0, [], {}, context);
        end

        function objectRemoved(obj, id, context)
            %OBJECTREMOVED Notifies the observer that a well-known object was removed.
            %
            %   Input Arguments
            %     id - The identity of the removed object.
            %       Ice.Identity scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ObjectObserverPrx
                id (1, 1) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('objectRemoved', 0, false, os_, false, {}, context);
        end

        function future = objectRemovedAsync(obj, id, context)
            %OBJECTREMOVEDASYNC Notifies the observer that a well-known object was removed.
            %
            %   Input Arguments
            %     id - The identity of the removed object.
            %       Ice.Identity scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also objectRemoved, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ObjectObserverPrx
                id (1, 1) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('objectRemoved', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::ObjectObserver';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.ObjectObserverPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::ObjectObserver.
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
            %     r - A IceGrid.ObjectObserverPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::ObjectObserver; otherwise, an empty array of IceGrid.ObjectObserverPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.ObjectObserverPrx.ice_staticId(), 'IceGrid.ObjectObserverPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.ObjectObserverPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.ObjectObserverPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.ObjectObserverPrx', varargin{:});
        end
    end
end
