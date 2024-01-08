% AdapterObserverPrx   Summary of AdapterObserverPrx
%
% This interface allows applications to monitor the state of object adapters that are registered with IceGrid.
%
% AdapterObserverPrx Methods:
%   adapterInit - adapterInit is called after registration of an observer to indicate the state of the registry.
%   adapterInitAsync - adapterInit is called after registration of an observer to indicate the state of the registry.
%   adapterAdded - The adapterAdded operation is called to notify an observer when a dynamically-registered adapter was added.
%   adapterAddedAsync - The adapterAdded operation is called to notify an observer when a dynamically-registered adapter was added.
%   adapterUpdated - The adapterUpdated operation is called to notify an observer when a dynamically-registered adapter was updated.
%   adapterUpdatedAsync - The adapterUpdated operation is called to notify an observer when a dynamically-registered adapter was updated.
%   adapterRemoved - The adapterRemoved operation is called to notify an observer when a dynamically-registered adapter was removed.
%   adapterRemovedAsync - The adapterRemoved operation is called to notify an observer when a dynamically-registered adapter was removed.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.7.10

classdef AdapterObserverPrx < Ice.ObjectPrx
    methods
        function adapterInit(obj, adpts, varargin)
            % adapterInit   adapterInit is called after registration of an observer to indicate the state of the registry.
            %
            % Parameters:
            %   adpts (IceGrid.AdapterInfoSeq) - The adapters that were dynamically registered with the registry (not through the deployment
            %     mechanism).
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.AdapterInfoSeq.write(os_, adpts);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('adapterInit', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = adapterInitAsync(obj, adpts, varargin)
            % adapterInitAsync   adapterInit is called after registration of an observer to indicate the state of the registry.
            %
            % Parameters:
            %   adpts (IceGrid.AdapterInfoSeq) - The adapters that were dynamically registered with the registry (not through the deployment
            %     mechanism).
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.AdapterInfoSeq.write(os_, adpts);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('adapterInit', 0, false, os_, 0, [], {}, varargin{:});
        end
        function adapterAdded(obj, info, varargin)
            % adapterAdded   The adapterAdded operation is called to notify an observer when a dynamically-registered adapter
            % was added.
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
            % adapterAddedAsync   The adapterAdded operation is called to notify an observer when a dynamically-registered adapter
            % was added.
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
            % adapterUpdated   The adapterUpdated operation is called to notify an observer when a dynamically-registered adapter was updated.
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
            % adapterUpdatedAsync   The adapterUpdated operation is called to notify an observer when a dynamically-registered adapter was updated.
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
            % adapterRemoved   The adapterRemoved operation is called to notify an observer when a dynamically-registered adapter was removed.
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
            % adapterRemovedAsync   The adapterRemoved operation is called to notify an observer when a dynamically-registered adapter was removed.
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
    methods(Hidden=true)
        function obj = AdapterObserverPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
