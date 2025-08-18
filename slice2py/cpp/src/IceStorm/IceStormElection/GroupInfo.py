# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from IceStormElection.LogUpdate import LogUpdate
from IceStormElection.LogUpdate import _IceStormElection_LogUpdate_t

from dataclasses import dataclass
from dataclasses import field


@dataclass(order=True, unsafe_hash=True)
class GroupInfo:
    """
    The group info.
    
    Attributes
    ----------
    id : int
        The identity of the node.
    llu : LogUpdate
        The last known log update for this node.
    """
    id: int = 0
    llu: LogUpdate = field(default_factory=LogUpdate)

_IceStormElection_GroupInfo_t = IcePy.defineStruct(
    "::IceStormElection::GroupInfo",
    GroupInfo,
    (),
    (
        ("id", (), IcePy._t_int),
        ("llu", (), _IceStormElection_LogUpdate_t)
    ))

__all__ = ["GroupInfo", "_IceStormElection_GroupInfo_t"]
