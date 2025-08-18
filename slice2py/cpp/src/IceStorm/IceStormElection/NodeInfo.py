# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from IceStormElection.Node_forward import _IceStormElection_NodePrx_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from IceStormElection.Node import NodePrx


@dataclass
class NodeInfo:
    """
    All nodes in the replication group.
    
    Attributes
    ----------
    id : int
        The identity of the node.
    n : NodePrx | None
        The node proxy.
    """
    id: int = 0
    n: NodePrx | None = None

_IceStormElection_NodeInfo_t = IcePy.defineStruct(
    "::IceStormElection::NodeInfo",
    NodeInfo,
    (),
    (
        ("id", (), IcePy._t_int),
        ("n", (), _IceStormElection_NodePrx_t)
    ))

__all__ = ["NodeInfo", "_IceStormElection_NodeInfo_t"]
