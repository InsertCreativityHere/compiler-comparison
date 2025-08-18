classdef (Sealed) QueryInfo
    %QUERYINFO
    %
    %   Creation
    %     Syntax
    %       obj = IceStormElection.QueryInfo()
    %       obj = IceStormElection.QueryInfo(id, coord, group, replica, state, up, max)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   QueryInfo Properties:
    %     id - The node id.
    %     coord - The nodes coordinator.
    %     group - The nodes group name.
    %     replica - The replica the node is managing.
    %     state - The node state.
    %     up - The sequence of nodes in this nodes group.
    %     max - The highest priority node that this node has seen.
    %
    %   Generated from Election.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The node id.
        %   int32 scalar
        id (1, 1) int32
        
        % COORD The nodes coordinator.
        %   int32 scalar
        coord (1, 1) int32
        
        % GROUP The nodes group name.
        %   character vector
        group (1, :) char
        
        % REPLICA The replica the node is managing.
        %   Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
        replica Ice.ObjectPrx {mustBeScalarOrEmpty} = Ice.ObjectPrx.empty
        
        % STATE The node state.
        %   IceStormElection.NodeState scalar
        state (1, 1) IceStormElection.NodeState
        
        % UP The sequence of nodes in this nodes group.
        %   IceStormElection.GroupInfo vector
        up (1, :) IceStormElection.GroupInfo
        
        % MAX The highest priority node that this node has seen.
        %   int32 scalar
        max (1, 1) int32
    end
    methods
        function obj = QueryInfo(id, coord, group, replica, state, up, max)
            if nargin > 0
                assert(nargin == 7, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = IceStormElection.QueryInfo();
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
