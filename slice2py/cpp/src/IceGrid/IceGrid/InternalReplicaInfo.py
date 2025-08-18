# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from IceGrid.InternalReplicaInfo_forward import _IceGrid_InternalReplicaInfo_t

from dataclasses import dataclass

@dataclass(eq=False)
class InternalReplicaInfo(Value):
    """
    Information about an IceGrid registry replica.
    
    Attributes
    ----------
    name : str
        The name of the registry.
    hostname : str
        The network name of the host running this registry (as defined in uname()).
    """
    name: str = ""
    hostname: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::InternalReplicaInfo"

_IceGrid_InternalReplicaInfo_t = IcePy.defineValue(
    "::IceGrid::InternalReplicaInfo",
    InternalReplicaInfo,
    -1,
    (),
    False,
    None,
    (
        ("name", (), IcePy._t_string, False, 0),
        ("hostname", (), IcePy._t_string, False, 0)
    ))

setattr(InternalReplicaInfo, '_ice_type', _IceGrid_InternalReplicaInfo_t)

__all__ = ["InternalReplicaInfo", "_IceGrid_InternalReplicaInfo_t"]
