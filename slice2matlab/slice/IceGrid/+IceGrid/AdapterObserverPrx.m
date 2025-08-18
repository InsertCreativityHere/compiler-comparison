classdef AdapterObserverPrx < Ice.ObjectPrx
    %ADAPTEROBSERVERPRX Monitors dynamically-registered object adapters.
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.AdapterObserverPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   AdapterObserverPrx Methods:
    %     adapterAdded - Notifies the observer that a dynamically-registered adapter was added.
    %     adapterAddedAsync - An asynchronous adapterAdded.
    %     adapterInit - Provides the initial list of dynamically registered adapters to the observer.
    %     adapterInitAsync - An asynchronous adapterInit.
    %     adapterRemoved - Notifies the observer that a dynamically-registered adapter was removed.
    %     adapterRemovedAsync - An asynchronous adapterRemoved.
    %     adapterUpdated
    %     adapterUpdatedAsync - An asynchronous adapterUpdated.
    %
    %   AdapterObserverPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::AdapterObserver.
    %     uncheckedCast - Creates a AdapterObserverPrx from another proxy without any validation.
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function adapterInit(obj, adpts, context)
            %ADAPTERINIT Provides the initial list of dynamically registered adapters to the observer.
            %
            %   Input Arguments
            %     adpts - The adapters that were dynamically registered with the registry.
            %       IceGrid.AdapterInfo vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.AdapterObserverPrx
                adpts (1, :) IceGrid.AdapterInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.AdapterInfoSeq.write(os_, adpts);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('adapterInit', 0, false, os_, false, {}, context);
        end

        function future = adapterInitAsync(obj, adpts, context)
            %ADAPTERINITASYNC Provides the initial list of dynamically registered adapters to the observer.
            %
            %   Input Arguments
            %     adpts - The adapters that were dynamically registered with the registry.
            %       IceGrid.AdapterInfo vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also adapterInit, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdapterObserverPrx
                adpts (1, :) IceGrid.AdapterInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.AdapterInfoSeq.write(os_, adpts);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('adapterInit', 0, false, os_, 0, [], {}, context);
        end

        function adapterAdded(obj, info, context)
            %ADAPTERADDED Notifies the observer that a dynamically-registered adapter was added.
            %
            %   Input Arguments
            %     info - The details of the new adapter.
            %       IceGrid.AdapterInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.AdapterObserverPrx
                info (1, 1) IceGrid.AdapterInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.AdapterInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('adapterAdded', 0, false, os_, false, {}, context);
        end

        function future = adapterAddedAsync(obj, info, context)
            %ADAPTERADDEDASYNC Notifies the observer that a dynamically-registered adapter was added.
            %
            %   Input Arguments
            %     info - The details of the new adapter.
            %       IceGrid.AdapterInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also adapterAdded, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdapterObserverPrx
                info (1, 1) IceGrid.AdapterInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.AdapterInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('adapterAdded', 0, false, os_, 0, [], {}, context);
        end

        function adapterUpdated(obj, info, context)
            %ADAPTERUPDATED
            %
            %   Input Arguments
            %     info - The details of the updated adapter.
            %       IceGrid.AdapterInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.AdapterObserverPrx
                info (1, 1) IceGrid.AdapterInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.AdapterInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('adapterUpdated', 0, false, os_, false, {}, context);
        end

        function future = adapterUpdatedAsync(obj, info, context)
            %ADAPTERUPDATEDASYNC
            %
            %   Input Arguments
            %     info - The details of the updated adapter.
            %       IceGrid.AdapterInfo scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also adapterUpdated, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdapterObserverPrx
                info (1, 1) IceGrid.AdapterInfo
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceGrid.AdapterInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('adapterUpdated', 0, false, os_, 0, [], {}, context);
        end

        function adapterRemoved(obj, id, context)
            %ADAPTERREMOVED Notifies the observer that a dynamically-registered adapter was removed.
            %
            %   Input Arguments
            %     id - The ID of the removed adapter.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.AdapterObserverPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('adapterRemoved', 0, false, os_, false, {}, context);
        end

        function future = adapterRemovedAsync(obj, id, context)
            %ADAPTERREMOVEDASYNC Notifies the observer that a dynamically-registered adapter was removed.
            %
            %   Input Arguments
            %     id - The ID of the removed adapter.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also adapterRemoved, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.AdapterObserverPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('adapterRemoved', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::AdapterObserver';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.AdapterObserverPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::AdapterObserver.
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
            %     r - A IceGrid.AdapterObserverPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::AdapterObserver; otherwise, an empty array of IceGrid.AdapterObserverPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.AdapterObserverPrx.ice_staticId(), 'IceGrid.AdapterObserverPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.AdapterObserverPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.AdapterObserverPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.AdapterObserverPrx', varargin{:});
        end
    end
end
