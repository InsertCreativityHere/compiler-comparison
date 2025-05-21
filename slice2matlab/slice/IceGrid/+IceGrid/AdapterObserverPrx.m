% AdapterObserverPrx   Summary of AdapterObserverPrx
%
% Monitors dynamically-registered object adapters.
%
% AdapterObserverPrx Methods:
%   adapterInit - Provides the initial list of dynamically registered adapters to the observer.
%   adapterInitAsync - Provides the initial list of dynamically registered adapters to the observer.
%   adapterAdded - Notifies the observer that a dynamically-registered adapter was added.
%   adapterAddedAsync - Notifies the observer that a dynamically-registered adapter was added.
%   adapterUpdated
%   adapterUpdatedAsync
%   adapterRemoved - Notifies the observer that a dynamically-registered adapter was removed.
%   adapterRemovedAsync - Notifies the observer that a dynamically-registered adapter was removed.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef AdapterObserverPrx < Ice.ObjectPrx
    methods
        function adapterInit(obj, adpts, varargin)
            % adapterInit   Provides the initial list of dynamically registered adapters to the observer.
            %
            % Parameters:
            %   adpts (IceGrid.AdapterInfoSeq) - The adapters that were dynamically registered with the registry.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.AdapterInfoSeq.write(os_, adpts);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('adapterInit', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = adapterInitAsync(obj, adpts, varargin)
            % adapterInitAsync   Provides the initial list of dynamically registered adapters to the observer.
            %
            % Parameters:
            %   adpts (IceGrid.AdapterInfoSeq) - The adapters that were dynamically registered with the registry.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.AdapterInfoSeq.write(os_, adpts);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('adapterInit', 0, false, os_, 0, [], {}, varargin{:});
        end
        function adapterAdded(obj, info, varargin)
            % adapterAdded   Notifies the observer that a dynamically-registered adapter was added.
            %
            % Parameters:
            %   info (IceGrid.AdapterInfo) - The details of the new adapter.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.AdapterInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('adapterAdded', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = adapterAddedAsync(obj, info, varargin)
            % adapterAddedAsync   Notifies the observer that a dynamically-registered adapter was added.
            %
            % Parameters:
            %   info (IceGrid.AdapterInfo) - The details of the new adapter.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.AdapterInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('adapterAdded', 0, false, os_, 0, [], {}, varargin{:});
        end
        function adapterUpdated(obj, info, varargin)
            % adapterUpdated
            %
            % Parameters:
            %   info (IceGrid.AdapterInfo) - The details of the updated adapter.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.AdapterInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('adapterUpdated', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = adapterUpdatedAsync(obj, info, varargin)
            % adapterUpdatedAsync
            %
            % Parameters:
            %   info (IceGrid.AdapterInfo) - The details of the updated adapter.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.AdapterInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('adapterUpdated', 0, false, os_, 0, [], {}, varargin{:});
        end
        function adapterRemoved(obj, id, varargin)
            % adapterRemoved   Notifies the observer that a dynamically-registered adapter was removed.
            %
            % Parameters:
            %   id (char) - The ID of the removed adapter.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('adapterRemoved', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = adapterRemovedAsync(obj, id, varargin)
            % adapterRemovedAsync   Notifies the observer that a dynamically-registered adapter was removed.
            %
            % Parameters:
            %   id (char) - The ID of the removed adapter.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('adapterRemoved', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::AdapterObserver';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.AdapterObserverPrx');
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
            % Returns (IceGrid.AdapterObserverPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.AdapterObserverPrx.ice_staticId(), 'IceGrid.AdapterObserverPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.AdapterObserverPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.AdapterObserverPrx', varargin{:});
        end
    end
end
