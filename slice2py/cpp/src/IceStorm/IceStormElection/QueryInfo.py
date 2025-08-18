# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from IceStormElection.GroupInfoSeq import _IceStormElection_GroupInfoSeq_t

from IceStormElection.NodeState import NodeState
from IceStormElection.NodeState import _IceStormElection_NodeState_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Ice.ObjectPrx import ObjectPrx
    from IceStormElection.GroupInfo import GroupInfo


@dataclass
class QueryInfo:
    id: int = 0
    coord: int = 0
    group: str = ""
    replica: ObjectPrx | None = None
    state: NodeState = NodeState.NodeStateInactive
    up: list[GroupInfo] = field(default_factory=list)
    max: int = 0

_IceStormElection_QueryInfo_t = IcePy.defineStruct(
    "::IceStormElection::QueryInfo",
    QueryInfo,
    (),
    (
        ("id", (), IcePy._t_int),
        ("coord", (), IcePy._t_int),
        ("group", (), IcePy._t_string),
        ("replica", (), _Ice_ObjectPrx_t),
        ("state", (), _IceStormElection_NodeState_t),
        ("up", (), _IceStormElection_GroupInfoSeq_t),
        ("max", (), IcePy._t_int)
    ))

__all__ = ["QueryInfo", "_IceStormElection_QueryInfo_t"]
