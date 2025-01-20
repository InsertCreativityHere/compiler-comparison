% NodeState   Summary of NodeState
%
% The node state.
%
% NodeState Properties:
%   NodeStateInactive - The node is inactive and awaiting an election.
%   NodeStateElection - The node is electing a leader.
%   NodeStateReorganization - The replica group is reorganizing.
%   NodeStateNormal - The replica group is active & replicating.

% Copyright (c) ZeroC, Inc.
% Generated from Election.ice by slice2matlab version 3.8.0-alpha.0

classdef NodeState < uint8
    enumeration% NodeStateInactive   Summary of NodeStateInactive
        %
        % The node is inactive and awaiting an election.
        
        NodeStateInactive (0)% NodeStateElection   Summary of NodeStateElection
        %
        % The node is electing a leader.
        
        NodeStateElection (1)% NodeStateReorganization   Summary of NodeStateReorganization
        %
        % The replica group is reorganizing.
        
        NodeStateReorganization (2)% NodeStateNormal   Summary of NodeStateNormal
        %
        % The replica group is active & replicating.
        
        NodeStateNormal (3)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(IceStormElection.NodeState.NodeStateInactive), 3);
            else
                os.writeEnum(int32(v), 3);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(3);
            r = IceStormElection.NodeState.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                IceStormElection.NodeState.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = IceStormElection.NodeState.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = IceStormElection.NodeState.NodeStateInactive;
                case 1
                    r = IceStormElection.NodeState.NodeStateElection;
                case 2
                    r = IceStormElection.NodeState.NodeStateReorganization;
                case 3
                    r = IceStormElection.NodeState.NodeStateNormal;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
