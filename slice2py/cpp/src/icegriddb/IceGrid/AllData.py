# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from IceGrid.AdapterInfoSeq import _IceGrid_AdapterInfoSeq_t

from IceGrid.ApplicationInfoSeq import _IceGrid_ApplicationInfoSeq_t

from IceGrid.ObjectInfoSeq import _IceGrid_ObjectInfoSeq_t

from IceGrid.StringLongDict import _IceGrid_StringLongDict_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from IceGrid.AdapterInfo import AdapterInfo
    from IceGrid.ApplicationInfo import ApplicationInfo
    from IceGrid.ObjectInfo import ObjectInfo


@dataclass
class AllData:
    applications: list[ApplicationInfo] = field(default_factory=list)
    adapters: list[AdapterInfo] = field(default_factory=list)
    objects: list[ObjectInfo] = field(default_factory=list)
    internalObjects: list[ObjectInfo] = field(default_factory=list)
    serials: dict[str, int] = field(default_factory=dict)

_IceGrid_AllData_t = IcePy.defineStruct(
    "::IceGrid::AllData",
    AllData,
    (),
    (
        ("applications", (), _IceGrid_ApplicationInfoSeq_t),
        ("adapters", (), _IceGrid_AdapterInfoSeq_t),
        ("objects", (), _IceGrid_ObjectInfoSeq_t),
        ("internalObjects", (), _IceGrid_ObjectInfoSeq_t),
        ("serials", (), _IceGrid_StringLongDict_t)
    ))

__all__ = ["AllData", "_IceGrid_AllData_t"]
