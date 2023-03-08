% QueryPrx   Summary of QueryPrx
%
% The IceGrid query interface. This interface is accessible to
% Ice clients who wish to look up well-known objects.
%
% QueryPrx Methods:
%   findObjectById - Find a well-known object by identity.
%   findObjectByIdAsync - Find a well-known object by identity.
%   findObjectByType - Find a well-known object by type.
%   findObjectByTypeAsync - Find a well-known object by type.
%   findObjectByTypeOnLeastLoadedNode - Find a well-known object by type on the least-loaded node.
%   findObjectByTypeOnLeastLoadedNodeAsync - Find a well-known object by type on the least-loaded node.
%   findAllObjectsByType - Find all the well-known objects with the given type.
%   findAllObjectsByTypeAsync - Find all the well-known objects with the given type.
%   findAllReplicas - Find all the object replicas associated with the given proxy.
%   findAllReplicasAsync - Find all the object replicas associated with the given proxy.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Registry.ice by slice2matlab version 3.7.9

classdef QueryPrx < Ice.ObjectPrx
    methods
        function result = findObjectById(obj, id, varargin)
            % findObjectById   Find a well-known object by identity.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - The proxy or null if no such object has been found.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('findObjectById', 1, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = findObjectByIdAsync(obj, id, varargin)
            % findObjectByIdAsync   Find a well-known object by identity.
            %
            % Parameters:
            %   id (Ice.Identity) - The identity.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('findObjectById', 1, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = findObjectByType(obj, type, varargin)
            % findObjectByType   Find a well-known object by type. If there are several objects
            % registered for the given type, the object is randomly
            % selected.
            %
            % Parameters:
            %   type (char) - The object type.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - The proxy or null, if no such object has been found.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('findObjectByType', 1, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = findObjectByTypeAsync(obj, type, varargin)
            % findObjectByTypeAsync   Find a well-known object by type. If there are several objects
            % registered for the given type, the object is randomly
            % selected.
            %
            % Parameters:
            %   type (char) - The object type.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('findObjectByType', 1, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = findObjectByTypeOnLeastLoadedNode(obj, type, sample, varargin)
            % findObjectByTypeOnLeastLoadedNode   Find a well-known object by type on the least-loaded node. If
            % the registry does not know which node hosts the object
            % (for example, because the object was registered with a direct proxy), the
            % registry assumes the object is hosted on a node that has a load
            % average of 1.0.
            %
            % Parameters:
            %   type (char) - The object type.
            %   sample (IceGrid.LoadSample) - The sampling interval.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - The proxy or null, if no such object has been found.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            IceGrid.LoadSample.ice_write(os_, sample);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('findObjectByTypeOnLeastLoadedNode', 1, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = findObjectByTypeOnLeastLoadedNodeAsync(obj, type, sample, varargin)
            % findObjectByTypeOnLeastLoadedNodeAsync   Find a well-known object by type on the least-loaded node. If
            % the registry does not know which node hosts the object
            % (for example, because the object was registered with a direct proxy), the
            % registry assumes the object is hosted on a node that has a load
            % average of 1.0.
            %
            % Parameters:
            %   type (char) - The object type.
            %   sample (IceGrid.LoadSample) - The sampling interval.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            IceGrid.LoadSample.ice_write(os_, sample);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('findObjectByTypeOnLeastLoadedNode', 1, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = findAllObjectsByType(obj, type, varargin)
            % findAllObjectsByType   Find all the well-known objects with the given type.
            %
            % Parameters:
            %   type (char) - The object type.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectProxySeq) - The proxies or an empty sequence, if no such objects
            % have been found.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('findAllObjectsByType', 1, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.ObjectProxySeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = findAllObjectsByTypeAsync(obj, type, varargin)
            % findAllObjectsByTypeAsync   Find all the well-known objects with the given type.
            %
            % Parameters:
            %   type (char) - The object type.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(type);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Ice.ObjectProxySeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('findAllObjectsByType', 1, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = findAllReplicas(obj, proxy, varargin)
            % findAllReplicas   Find all the object replicas associated with the given
            % proxy. If the given proxy is not an indirect proxy from a
            % replica group, an empty sequence is returned.
            %
            % Parameters:
            %   proxy (Ice.ObjectPrx) - The object proxy.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectProxySeq) - The proxies of each object replica or an empty sequence,
            % if the given proxy is not from a replica group.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('findAllReplicas', 2, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.ObjectProxySeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = findAllReplicasAsync(obj, proxy, varargin)
            % findAllReplicasAsync   Find all the object replicas associated with the given
            % proxy. If the given proxy is not an indirect proxy from a
            % replica group, an empty sequence is returned.
            %
            % Parameters:
            %   proxy (Ice.ObjectPrx) - The object proxy.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proxy);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Ice.ObjectProxySeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('findAllReplicas', 2, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::Query';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.QueryPrx');
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
            % Returns (IceGrid.QueryPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.QueryPrx.ice_staticId(), 'IceGrid.QueryPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.QueryPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.QueryPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = QueryPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
