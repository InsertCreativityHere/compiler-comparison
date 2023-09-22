% NodeObserverPrx   Summary of NodeObserverPrx
%
% The node observer interface. Observers should implement this
% interface to receive information about the state of the IceGrid
% nodes.
%
% NodeObserverPrx Methods:
%   nodeInit - The nodeInit operation indicates the current state of nodes.
%   nodeInitAsync - The nodeInit operation indicates the current state of nodes.
%   nodeUp - The nodeUp operation is called to notify an observer that a node came up.
%   nodeUpAsync - The nodeUp operation is called to notify an observer that a node came up.
%   nodeDown - The nodeDown operation is called to notify an observer that a node went down.
%   nodeDownAsync - The nodeDown operation is called to notify an observer that a node went down.
%   updateServer - The updateServer operation is called to notify an observer that the state of a server changed.
%   updateServerAsync - The updateServer operation is called to notify an observer that the state of a server changed.
%   updateAdapter - The updateAdapter operation is called to notify an observer that the state of an adapter changed.
%   updateAdapterAsync - The updateAdapter operation is called to notify an observer that the state of an adapter changed.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.7.10

classdef NodeObserverPrx < Ice.ObjectPrx
    methods
        function nodeInit(obj, nodes, varargin)
            % nodeInit   The nodeInit operation indicates the current state
            % of nodes. It is called after the registration of an observer.
            %
            % Parameters:
            %   nodes (IceGrid.NodeDynamicInfoSeq) - The current state of the nodes.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.NodeDynamicInfoSeq.write(os_, nodes);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('nodeInit', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = nodeInitAsync(obj, nodes, varargin)
            % nodeInitAsync   The nodeInit operation indicates the current state
            % of nodes. It is called after the registration of an observer.
            %
            % Parameters:
            %   nodes (IceGrid.NodeDynamicInfoSeq) - The current state of the nodes.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.NodeDynamicInfoSeq.write(os_, nodes);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('nodeInit', 0, false, os_, 0, [], {}, varargin{:});
        end
        function nodeUp(obj, node, varargin)
            % nodeUp   The nodeUp operation is called to notify an observer that a node
            % came up.
            %
            % Parameters:
            %   node (IceGrid.NodeDynamicInfo) - The node state.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.NodeDynamicInfo.ice_write(os_, node);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('nodeUp', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = nodeUpAsync(obj, node, varargin)
            % nodeUpAsync   The nodeUp operation is called to notify an observer that a node
            % came up.
            %
            % Parameters:
            %   node (IceGrid.NodeDynamicInfo) - The node state.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceGrid.NodeDynamicInfo.ice_write(os_, node);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('nodeUp', 0, false, os_, 0, [], {}, varargin{:});
        end
        function nodeDown(obj, name, varargin)
            % nodeDown   The nodeDown operation is called to notify an observer that a node
            % went down.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('nodeDown', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = nodeDownAsync(obj, name, varargin)
            % nodeDownAsync   The nodeDown operation is called to notify an observer that a node
            % went down.
            %
            % Parameters:
            %   name (char) - The node name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('nodeDown', 0, false, os_, 0, [], {}, varargin{:});
        end
        function updateServer(obj, node, updatedInfo, varargin)
            % updateServer   The updateServer operation is called to notify an observer that
            % the state of a server changed.
            %
            % Parameters:
            %   node (char) - The node hosting the server.
            %   updatedInfo (IceGrid.ServerDynamicInfo) - The new server state.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(node);
            IceGrid.ServerDynamicInfo.ice_write(os_, updatedInfo);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('updateServer', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = updateServerAsync(obj, node, updatedInfo, varargin)
            % updateServerAsync   The updateServer operation is called to notify an observer that
            % the state of a server changed.
            %
            % Parameters:
            %   node (char) - The node hosting the server.
            %   updatedInfo (IceGrid.ServerDynamicInfo) - The new server state.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(node);
            IceGrid.ServerDynamicInfo.ice_write(os_, updatedInfo);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('updateServer', 0, false, os_, 0, [], {}, varargin{:});
        end
        function updateAdapter(obj, node, updatedInfo, varargin)
            % updateAdapter   The updateAdapter operation is called to notify an observer that
            % the state of an adapter changed.
            %
            % Parameters:
            %   node (char) - The node hosting the adapter.
            %   updatedInfo (IceGrid.AdapterDynamicInfo) - The new adapter state.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(node);
            IceGrid.AdapterDynamicInfo.ice_write(os_, updatedInfo);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('updateAdapter', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = updateAdapterAsync(obj, node, updatedInfo, varargin)
            % updateAdapterAsync   The updateAdapter operation is called to notify an observer that
            % the state of an adapter changed.
            %
            % Parameters:
            %   node (char) - The node hosting the adapter.
            %   updatedInfo (IceGrid.AdapterDynamicInfo) - The new adapter state.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(node);
            IceGrid.AdapterDynamicInfo.ice_write(os_, updatedInfo);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('updateAdapter', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::NodeObserver';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.NodeObserverPrx');
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
            % Returns (IceGrid.NodeObserverPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.NodeObserverPrx.ice_staticId(), 'IceGrid.NodeObserverPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.NodeObserverPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.NodeObserverPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = NodeObserverPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
