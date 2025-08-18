# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class NodeState(Enum):
    """
    The node state.
    
    Enumerators:
    
    - NodeStateInactive:
        The node is inactive and awaiting an election.
    
    - NodeStateElection:
        The node is electing a leader.
    
    - NodeStateReorganization:
        The replica group is reorganizing.
    
    - NodeStateNormal:
        The replica group is active & replicating.
    """
    
    NodeStateInactive = 0
    NodeStateElection = 1
    NodeStateReorganization = 2
    NodeStateNormal = 3

_IceStormElection_NodeState_t = IcePy.defineEnum(
    "::IceStormElection::NodeState",
    NodeState,
    (),
    {
        0: NodeState.NodeStateInactive,
        1: NodeState.NodeStateElection,
        2: NodeState.NodeStateReorganization,
        3: NodeState.NodeStateNormal,
    }
)

__all__ = ["NodeState", "_IceStormElection_NodeState_t"]
