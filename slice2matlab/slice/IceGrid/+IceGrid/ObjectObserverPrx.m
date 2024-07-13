% ObjectObserverPrx   Summary of ObjectObserverPrx
%
% This interface allows applications to monitor IceGrid well-known objects.
%
% ObjectObserverPrx Methods:
%   objectInit - objectInit is called after the registration of an observer to indicate the state of the registry.
%   objectInitAsync - objectInit is called after the registration of an observer to indicate the state of the registry.
%   objectAdded - The objectAdded operation is called to notify an observer when an object was added to the Admin interface.
%   objectAddedAsync - The objectAdded operation is called to notify an observer when an object was added to the Admin interface.
%   objectUpdated - objectUpdated is called to notify an observer when an object registered with the Admin interface was updated.
%   objectUpdatedAsync - objectUpdated is called to notify an observer when an object registered with the Admin interface was updated.
%   objectRemoved - objectRemoved is called to notify an observer when an object registered with the Admin interface was removed.
%   objectRemovedAsync - objectRemoved is called to notify an observer when an object registered with the Admin interface was removed.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef ObjectObserverPrx < Ice.ObjectPrx
    methods
        function objectInit(obj, objects, varargin)
            % objectInit   objectInit is called after the registration of an observer to indicate the state of the
            % registry.
            %
            % Parameters:
            %   objects (IceGrid.ObjectInfoSeq) - The objects registered with the Admin interface (not through the deployment
            %     mechanism).
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfoSeq.write(os_, objects);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('objectInit', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = objectInitAsync(obj, objects, varargin)
            % objectInitAsync   objectInit is called after the registration of an observer to indicate the state of the
            % registry.
            %
            % Parameters:
            %   objects (IceGrid.ObjectInfoSeq) - The objects registered with the Admin interface (not through the deployment
            %     mechanism).
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfoSeq.write(os_, objects);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('objectInit', 0, false, os_, 0, [], {}, varargin{:});
        end
        function objectAdded(obj, info, varargin)
            % objectAdded   The objectAdded operation is called to notify an observer when an object was added to the
            % Admin interface.
            %
            % Parameters:
            %   info (IceGrid.ObjectInfo) - The details of the added object.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('objectAdded', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = objectAddedAsync(obj, info, varargin)
            % objectAddedAsync   The objectAdded operation is called to notify an observer when an object was added to the
            % Admin interface.
            %
            % Parameters:
            %   info (IceGrid.ObjectInfo) - The details of the added object.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('objectAdded', 0, false, os_, 0, [], {}, varargin{:});
        end
        function objectUpdated(obj, info, varargin)
            % objectUpdated   objectUpdated is called to notify an observer when an object registered with the Admin
            % interface was updated.
            %
            % Parameters:
            %   info (IceGrid.ObjectInfo) - The details of the updated object.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('objectUpdated', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = objectUpdatedAsync(obj, info, varargin)
            % objectUpdatedAsync   objectUpdated is called to notify an observer when an object registered with the Admin
            % interface was updated.
            %
            % Parameters:
            %   info (IceGrid.ObjectInfo) - The details of the updated object.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('objectUpdated', 0, false, os_, 0, [], {}, varargin{:});
        end
        function objectRemoved(obj, id, varargin)
            % objectRemoved   objectRemoved is called to notify an observer when an object registered with the Admin
            % interface was removed.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity of the removed object.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('objectRemoved', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = objectRemovedAsync(obj, id, varargin)
            % objectRemovedAsync   objectRemoved is called to notify an observer when an object registered with the Admin
            % interface was removed.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity of the removed object.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('objectRemoved', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::ObjectObserver';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.ObjectObserverPrx');
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
            % Returns (IceGrid.ObjectObserverPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.ObjectObserverPrx.ice_staticId(), 'IceGrid.ObjectObserverPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.ObjectObserverPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.ObjectObserverPrx', varargin{:});
        end
    end
end
