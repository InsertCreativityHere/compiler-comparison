% NodePrx   Summary of NodePrx
%
% A replica node.
%
% NodePrx Methods:
%   invitation - Invite the node into a group with the given coordinator and group name.
%   invitationAsync - Invite the node into a group with the given coordinator and group name.
%   ready - Call from the group coordinator to a node to inform the node that the replica group is active.
%   readyAsync - Call from the group coordinator to a node to inform the node that the replica group is active.
%   accept - Called to accept an invitation into the given group.
%   acceptAsync - Called to accept an invitation into the given group.
%   areYouCoordinator - Determine if this node is a coordinator.
%   areYouCoordinatorAsync - Determine if this node is a coordinator.
%   areYouThere - Determine if the node is a member of the given group with the given coordinator.
%   areYouThereAsync - Determine if the node is a member of the given group with the given coordinator.
%   sync - Get the sync object for the replica hosted by this node.
%   syncAsync - Get the sync object for the replica hosted by this node.
%   nodes - Get the replication group information.
%   nodesAsync - Get the replication group information.
%   query - Get the query information for the given node.
%   queryAsync - Get the query information for the given node.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Election.ice by slice2matlab version 3.8.0-alpha.0

classdef NodePrx < Ice.ObjectPrx
    methods
        function invitation(obj, j, gn, varargin)
            % invitation   Invite the node into a group with the given coordinator and group name.
            %
            % Parameters:
            %   j (int32) - The group coordinator.
            %   gn (char) - The group name.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(j);
            os_.writeString(gn);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('invitation', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = invitationAsync(obj, j, gn, varargin)
            % invitationAsync   Invite the node into a group with the given coordinator and group name.
            %
            % Parameters:
            %   j (int32) - The group coordinator.
            %   gn (char) - The group name.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(j);
            os_.writeString(gn);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('invitation', 0, false, os_, 0, [], {}, varargin{:});
        end
        function ready(obj, j, gn, coordinator, max, generation, varargin)
            % ready   Call from the group coordinator to a node to inform the node that the replica group is active.
            %
            % Parameters:
            %   j (int32) - The group coordinator.
            %   gn (char) - The group name.
            %   coordinator (Ice.ObjectPrx) - The proxy to the coordinator.
            %   max (int32) - The highest priority node seen by this replica group.
            %   generation (int64) - The current generation count.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(j);
            os_.writeString(gn);
            os_.writeProxy(coordinator);
            os_.writeInt(max);
            os_.writeLong(generation);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('ready', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = readyAsync(obj, j, gn, coordinator, max, generation, varargin)
            % readyAsync   Call from the group coordinator to a node to inform the node that the replica group is active.
            %
            % Parameters:
            %   j (int32) - The group coordinator.
            %   gn (char) - The group name.
            %   coordinator (Ice.ObjectPrx) - The proxy to the coordinator.
            %   max (int32) - The highest priority node seen by this replica group.
            %   generation (int64) - The current generation count.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(j);
            os_.writeString(gn);
            os_.writeProxy(coordinator);
            os_.writeInt(max);
            os_.writeLong(generation);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('ready', 0, false, os_, 0, [], {}, varargin{:});
        end
        function accept(obj, j, gn, forwardedInvites, observer, llu, max, varargin)
            % accept   Called to accept an invitation into the given group.
            %
            % Parameters:
            %   j (int32) - The id of the node accepting the invitation.
            %   gn (char) - The group name.
            %   forwardedInvites (Ice.IntSeq) - The ids of the nodes to which invitations were forwarded.
            %   observer (Ice.ObjectPrx) - The observer.
            %   llu (IceStormElection.LogUpdate) - The last log update for the given node.
            %   max (int32) - The highest priority node seen by this replica group.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(j);
            os_.writeString(gn);
            os_.writeIntSeq(forwardedInvites);
            os_.writeProxy(observer);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeInt(max);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('accept', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = acceptAsync(obj, j, gn, forwardedInvites, observer, llu, max, varargin)
            % acceptAsync   Called to accept an invitation into the given group.
            %
            % Parameters:
            %   j (int32) - The id of the node accepting the invitation.
            %   gn (char) - The group name.
            %   forwardedInvites (Ice.IntSeq) - The ids of the nodes to which invitations were forwarded.
            %   observer (Ice.ObjectPrx) - The observer.
            %   llu (IceStormElection.LogUpdate) - The last log update for the given node.
            %   max (int32) - The highest priority node seen by this replica group.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(j);
            os_.writeString(gn);
            os_.writeIntSeq(forwardedInvites);
            os_.writeProxy(observer);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeInt(max);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('accept', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = areYouCoordinator(obj, varargin)
            % areYouCoordinator   Determine if this node is a coordinator.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (logical) - True if the node is a coordinator, false otherwise.
            
            is_ = obj.iceInvoke('areYouCoordinator', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = areYouCoordinatorAsync(obj, varargin)
            % areYouCoordinatorAsync   Determine if this node is a coordinator.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('areYouCoordinator', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = areYouThere(obj, gn, j, varargin)
            % areYouThere   Determine if the node is a member of the given group with the given coordinator.
            %
            % Parameters:
            %   gn (char) - The group name.
            %   j (int32) - The group coordinator.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (logical) - True if the node is a member, false otherwise.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(gn);
            os_.writeInt(j);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('areYouThere', 2, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = areYouThereAsync(obj, gn, j, varargin)
            % areYouThereAsync   Determine if the node is a member of the given group with the given coordinator.
            %
            % Parameters:
            %   gn (char) - The group name.
            %   j (int32) - The group coordinator.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(gn);
            os_.writeInt(j);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('areYouThere', 2, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = sync(obj, varargin)
            % sync   Get the sync object for the replica hosted by this node.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx) - The sync object.
            
            is_ = obj.iceInvoke('sync', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = syncAsync(obj, varargin)
            % syncAsync   Get the sync object for the replica hosted by this node.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('sync', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = nodes(obj, varargin)
            % nodes   Get the replication group information.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceStormElection.NodeInfoSeq) - The set of configured nodes and the associated priority.
            
            is_ = obj.iceInvoke('nodes', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceStormElection.NodeInfoSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = nodesAsync(obj, varargin)
            % nodesAsync   Get the replication group information.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceStormElection.NodeInfoSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('nodes', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = query(obj, varargin)
            % query   Get the query information for the given node.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceStormElection.QueryInfo) - The query information.
            
            is_ = obj.iceInvoke('query', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceStormElection.QueryInfo.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = queryAsync(obj, varargin)
            % queryAsync   Get the query information for the given node.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceStormElection.QueryInfo.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('query', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceStormElection::Node';
        end
        function r = ice_read(is)
            r = is.readProxy('IceStormElection.NodePrx');
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
            % Returns (IceStormElection.NodePrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStormElection.NodePrx.ice_staticId(), 'IceStormElection.NodePrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceStormElection.NodePrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStormElection.NodePrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = NodePrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
