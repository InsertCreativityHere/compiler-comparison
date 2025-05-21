% ObjectObserverPrx   Summary of ObjectObserverPrx
%
% Monitors well-known objects that are added, updated or removed using Admin.
%
% ObjectObserverPrx Methods:
%   objectInit - Provides the initial list of well-known objects to the observer.
%   objectInitAsync - Provides the initial list of well-known objects to the observer.
%   objectAdded - Notifies the observer that a well-known object was added.
%   objectAddedAsync - Notifies the observer that a well-known object was added.
%   objectUpdated - Notifies the observer that a well-known object was updated.
%   objectUpdatedAsync - Notifies the observer that a well-known object was updated.
%   objectRemoved - Notifies the observer that a well-known object was removed.
%   objectRemovedAsync - Notifies the observer that a well-known object was removed.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef ObjectObserverPrx < Ice.ObjectPrx
    methods
        function objectInit(obj, objects, varargin)
            % objectInit   Provides the initial list of well-known objects to the observer.
            %
            % Parameters:
            %   objects (IceGrid.ObjectInfoSeq) - The well-known objects registered using Admin.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfoSeq.write(os_, objects);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('objectInit', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = objectInitAsync(obj, objects, varargin)
            % objectInitAsync   Provides the initial list of well-known objects to the observer.
            %
            % Parameters:
            %   objects (IceGrid.ObjectInfoSeq) - The well-known objects registered using Admin.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfoSeq.write(os_, objects);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('objectInit', 0, false, os_, 0, [], {}, varargin{:});
        end
        function objectAdded(obj, info, varargin)
            % objectAdded   Notifies the observer that a well-known object was added.
            %
            % Parameters:
            %   info (IceGrid.ObjectInfo) - The details of the new object.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('objectAdded', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = objectAddedAsync(obj, info, varargin)
            % objectAddedAsync   Notifies the observer that a well-known object was added.
            %
            % Parameters:
            %   info (IceGrid.ObjectInfo) - The details of the new object.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.ObjectInfo.ice_write(os_, info);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('objectAdded', 0, false, os_, 0, [], {}, varargin{:});
        end
        function objectUpdated(obj, info, varargin)
            % objectUpdated   Notifies the observer that a well-known object was updated.
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
            % objectUpdatedAsync   Notifies the observer that a well-known object was updated.
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
            % objectRemoved   Notifies the observer that a well-known object was removed.
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
            % objectRemovedAsync   Notifies the observer that a well-known object was removed.
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
