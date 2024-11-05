
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Election.ice by slice2matlab version 3.8.0-alpha.0

classdef QueryInfo
    properties
        % id - The node id.
        id int32
        % coord - The nodes coordinator.
        coord int32
        % group - The nodes group name.
        group char
        % replica - The replica the node is managing.
        replica
        % state - The node state.
        state IceStormElection.NodeState
        % up - The sequence of nodes in this nodes group.
        up
        % max - The highest priority node that this node has seen.
        max int32
    end
    methods
        function obj = QueryInfo(id, coord, group, replica, state, up, max)
            if nargin == 0
                obj.id = 0;
                obj.coord = 0;
                obj.group = '';
                obj.replica = [];
                obj.state = IceStormElection.NodeState.NodeStateInactive;
                obj.up = [];
                obj.max = 0;
            elseif ne(id, IceInternal.NoInit.Instance)
                obj.id = id;
                obj.coord = coord;
                obj.group = group;
                obj.replica = replica;
                obj.state = state;
                obj.up = up;
                obj.max = max;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = IceStormElection.QueryInfo(IceInternal.NoInit.Instance);
            r.id = is.readInt();
            r.coord = is.readInt();
            r.group = is.readString();
            r.replica = is.readProxy();
            r.state = IceStormElection.NodeState.ice_read(is);
            r.up = IceStormElection.GroupInfoSeq.read(is);
            r.max = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceStormElection.QueryInfo();
            end
            os.writeInt(v.id);
            os.writeInt(v.coord);
            os.writeString(v.group);
            os.writeProxy(v.replica);
            IceStormElection.NodeState.ice_write(os, v.state);
            IceStormElection.GroupInfoSeq.write(os, v.up);
            os.writeInt(v.max);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStormElection.QueryInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceStormElection.QueryInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
