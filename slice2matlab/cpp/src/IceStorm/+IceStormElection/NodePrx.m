classdef NodePrx < Ice.ObjectPrx
    %NODEPRX A replica node.
    %
    %   Creation
    %     Syntax
    %       prx = IceStormElection.NodePrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   NodePrx Methods:
    %     accept - Called to accept an invitation into the given group.
    %     acceptAsync - An asynchronous accept.
    %     areYouCoordinator - Determine if this node is a coordinator.
    %     areYouCoordinatorAsync - An asynchronous areYouCoordinator.
    %     areYouThere - Determine if the node is a member of the given group with the given coordinator.
    %     areYouThereAsync - An asynchronous areYouThere.
    %     invitation - Invite the node into a group with the given coordinator and group name.
    %     invitationAsync - An asynchronous invitation.
    %     nodes - Get the replication group information.
    %     nodesAsync - An asynchronous nodes.
    %     query - Get the query information for the given node.
    %     queryAsync - An asynchronous query.
    %     ready - Call from the group coordinator to a node to inform the node that the replica group is active.
    %     readyAsync - An asynchronous ready.
    %     sync - Get the sync object for the replica hosted by this node.
    %     syncAsync - An asynchronous sync.
    %
    %   NodePrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceStormElection::Node.
    %     uncheckedCast - Creates a NodePrx from another proxy without any validation.
    %
    %   Generated from Election.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function invitation(obj, j, gn, context)
            %INVITATION Invite the node into a group with the given coordinator and group name.
            %
            %   Input Arguments
            %     j - The group coordinator.
            %       int32 scalar
            %     gn - The group name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceStormElection.NodePrx
                j (1, 1) int32
                gn (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(j);
            os_.writeString(gn);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('invitation', 0, false, os_, false, {}, context);
        end

        function future = invitationAsync(obj, j, gn, context)
            %INVITATIONASYNC Invite the node into a group with the given coordinator and group name.
            %
            %   Input Arguments
            %     j - The group coordinator.
            %       int32 scalar
            %     gn - The group name.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also invitation, Ice.Future.
            
            arguments
                obj (1, 1) IceStormElection.NodePrx
                j (1, 1) int32
                gn (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(j);
            os_.writeString(gn);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('invitation', 0, false, os_, 0, [], {}, context);
        end

        function ready(obj, j, gn, coordinator, max, generation, context)
            %READY Call from the group coordinator to a node to inform the node that the replica group is active.
            %
            %   Input Arguments
            %     j - The group coordinator.
            %       int32 scalar
            %     gn - The group name.
            %       character vector
            %     coordinator - The proxy to the coordinator.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     max - The highest priority node seen by this replica group.
            %       int32 scalar
            %     generation - The current generation count.
            %       int64 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceStormElection.NodePrx
                j (1, 1) int32
                gn (1, :) char
                coordinator Ice.ObjectPrx {mustBeScalarOrEmpty}
                max (1, 1) int32
                generation (1, 1) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(j);
            os_.writeString(gn);
            os_.writeProxy(coordinator);
            os_.writeInt(max);
            os_.writeLong(generation);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('ready', 0, false, os_, false, {}, context);
        end

        function future = readyAsync(obj, j, gn, coordinator, max, generation, context)
            %READYASYNC Call from the group coordinator to a node to inform the node that the replica group is active.
            %
            %   Input Arguments
            %     j - The group coordinator.
            %       int32 scalar
            %     gn - The group name.
            %       character vector
            %     coordinator - The proxy to the coordinator.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     max - The highest priority node seen by this replica group.
            %       int32 scalar
            %     generation - The current generation count.
            %       int64 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also ready, Ice.Future.
            
            arguments
                obj (1, 1) IceStormElection.NodePrx
                j (1, 1) int32
                gn (1, :) char
                coordinator Ice.ObjectPrx {mustBeScalarOrEmpty}
                max (1, 1) int32
                generation (1, 1) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(j);
            os_.writeString(gn);
            os_.writeProxy(coordinator);
            os_.writeInt(max);
            os_.writeLong(generation);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('ready', 0, false, os_, 0, [], {}, context);
        end

        function accept(obj, j, gn, forwardedInvites, observer, llu, max, context)
            %ACCEPT Called to accept an invitation into the given group.
            %
            %   Input Arguments
            %     j - The id of the node accepting the invitation.
            %       int32 scalar
            %     gn - The group name.
            %       character vector
            %     forwardedInvites - The ids of the nodes to which invitations were forwarded.
            %       int32 vector
            %     observer - The observer.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     llu - The last log update for the given node.
            %       IceStormElection.LogUpdate scalar
            %     max - The highest priority node seen by this replica group.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceStormElection.NodePrx
                j (1, 1) int32
                gn (1, :) char
                forwardedInvites (1, :) int32
                observer Ice.ObjectPrx {mustBeScalarOrEmpty}
                llu (1, 1) IceStormElection.LogUpdate
                max (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(j);
            os_.writeString(gn);
            os_.writeIntSeq(forwardedInvites);
            os_.writeProxy(observer);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeInt(max);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('accept', 0, false, os_, false, {}, context);
        end

        function future = acceptAsync(obj, j, gn, forwardedInvites, observer, llu, max, context)
            %ACCEPTASYNC Called to accept an invitation into the given group.
            %
            %   Input Arguments
            %     j - The id of the node accepting the invitation.
            %       int32 scalar
            %     gn - The group name.
            %       character vector
            %     forwardedInvites - The ids of the nodes to which invitations were forwarded.
            %       int32 vector
            %     observer - The observer.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     llu - The last log update for the given node.
            %       IceStormElection.LogUpdate scalar
            %     max - The highest priority node seen by this replica group.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also accept, Ice.Future.
            
            arguments
                obj (1, 1) IceStormElection.NodePrx
                j (1, 1) int32
                gn (1, :) char
                forwardedInvites (1, :) int32
                observer Ice.ObjectPrx {mustBeScalarOrEmpty}
                llu (1, 1) IceStormElection.LogUpdate
                max (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(j);
            os_.writeString(gn);
            os_.writeIntSeq(forwardedInvites);
            os_.writeProxy(observer);
            IceStormElection.LogUpdate.ice_write(os_, llu);
            os_.writeInt(max);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('accept', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = areYouCoordinator(obj, context)
            %AREYOUCOORDINATOR Determine if this node is a coordinator.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - `true` if the node is a coordinator, `false` otherwise.
            %       logical scalar
            
            arguments
                obj (1, 1) IceStormElection.NodePrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('areYouCoordinator', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = areYouCoordinatorAsync(obj, context)
            %AREYOUCOORDINATORASYNC Determine if this node is a coordinator.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also areYouCoordinator, Ice.Future.
            
            arguments
                obj (1, 1) IceStormElection.NodePrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('areYouCoordinator', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = areYouThere(obj, gn, j, context)
            %AREYOUTHERE Determine if the node is a member of the given group with the given coordinator.
            %
            %   Input Arguments
            %     gn - The group name.
            %       character vector
            %     j - The group coordinator.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - `true` if the node is a member, `false` otherwise.
            %       logical scalar
            
            arguments
                obj (1, 1) IceStormElection.NodePrx
                gn (1, :) char
                j (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(gn);
            os_.writeInt(j);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('areYouThere', 2, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = areYouThereAsync(obj, gn, j, context)
            %AREYOUTHEREASYNC Determine if the node is a member of the given group with the given coordinator.
            %
            %   Input Arguments
            %     gn - The group name.
            %       character vector
            %     j - The group coordinator.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also areYouThere, Ice.Future.
            
            arguments
                obj (1, 1) IceStormElection.NodePrx
                gn (1, :) char
                j (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(gn);
            os_.writeInt(j);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('areYouThere', 2, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = sync(obj, context)
            %SYNC Get the sync object for the replica hosted by this node.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The sync object.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            
            arguments
                obj (1, 1) IceStormElection.NodePrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('sync', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readProxy();
            is_.endEncapsulation();
        end

        function future = syncAsync(obj, context)
            %SYNCASYNC Get the sync object for the replica hosted by this node.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also sync, Ice.Future.
            
            arguments
                obj (1, 1) IceStormElection.NodePrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('sync', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = nodes(obj, context)
            %NODES Get the replication group information.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The set of configured nodes and the associated priority.
            %       IceStormElection.NodeInfo vector
            
            arguments
                obj (1, 1) IceStormElection.NodePrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('nodes', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = IceStormElection.NodeInfoSeq.read(is_);
            is_.endEncapsulation();
        end

        function future = nodesAsync(obj, context)
            %NODESASYNC Get the replication group information.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also nodes, Ice.Future.
            
            arguments
                obj (1, 1) IceStormElection.NodePrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceStormElection.NodeInfoSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('nodes', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = query(obj, context)
            %QUERY Get the query information for the given node.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The query information.
            %       IceStormElection.QueryInfo scalar
            
            arguments
                obj (1, 1) IceStormElection.NodePrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('query', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = IceStormElection.QueryInfo.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = queryAsync(obj, context)
            %QUERYASYNC Get the query information for the given node.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also query, Ice.Future.
            
            arguments
                obj (1, 1) IceStormElection.NodePrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceStormElection.QueryInfo.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('query', 2, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceStormElection::Node';
        end

        function r = ice_read(is)
            r = is.readProxy('IceStormElection.NodePrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceStormElection::Node.
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
            %     r - A IceStormElection.NodePrx scalar if the target object implements Slice interface 
            %       ::IceStormElection::Node; otherwise, an empty array of IceStormElection.NodePrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStormElection.NodePrx.ice_staticId(), 'IceStormElection.NodePrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceStormElection.NodePrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceStormElection.NodePrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStormElection.NodePrx', varargin{:});
        end
    end
end
