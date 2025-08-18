# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from IceGrid.InternalNodeInfo_forward import _IceGrid_InternalNodeInfo_t

from dataclasses import dataclass

@dataclass(eq=False)
class InternalNodeInfo(Value):
    """
    Information about an IceGrid node.
    
    Attributes
    ----------
    name : str
        The name of the node.
    os : str
        The operating system name.
    hostname : str
        The network name of the host running this node (as defined in uname()).
    release : str
        The operation system release level (as defined in uname()).
    version : str
        The operation system version (as defined in uname()).
    machine : str
        The machine hardware type (as defined in uname()).
    nProcessors : int
        The number of processor threads (e.g. 8 on system with 1 quad-core CPU, with 2 threads per core)
    dataDir : str
        The path to the node data directory.
    iceSoVersion : str | None
        The Ice SO version of this node, for example 38. It is typically used to load the same version of the IceStorm
        service in IceBox.
    """
    name: str = ""
    os: str = ""
    hostname: str = ""
    release: str = ""
    version: str = ""
    machine: str = ""
    nProcessors: int = 0
    dataDir: str = ""
    iceSoVersion: str | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::InternalNodeInfo"

_IceGrid_InternalNodeInfo_t = IcePy.defineValue(
    "::IceGrid::InternalNodeInfo",
    InternalNodeInfo,
    -1,
    (),
    False,
    None,
    (
        ("name", (), IcePy._t_string, False, 0),
        ("os", (), IcePy._t_string, False, 0),
        ("hostname", (), IcePy._t_string, False, 0),
        ("release", (), IcePy._t_string, False, 0),
        ("version", (), IcePy._t_string, False, 0),
        ("machine", (), IcePy._t_string, False, 0),
        ("nProcessors", (), IcePy._t_int, False, 0),
        ("dataDir", (), IcePy._t_string, False, 0),
        ("iceSoVersion", (), IcePy._t_string, True, 1)
    ))

setattr(InternalNodeInfo, '_ice_type', _IceGrid_InternalNodeInfo_t)

__all__ = ["InternalNodeInfo", "_IceGrid_InternalNodeInfo_t"]
