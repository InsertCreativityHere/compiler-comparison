# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.StringSeq import _Ice_StringSeq_t

from Ice.Value import Value

from IceGrid.InternalAdapterDescriptorSeq import _IceGrid_InternalAdapterDescriptorSeq_t

from IceGrid.InternalDbEnvDescriptorSeq import _IceGrid_InternalDbEnvDescriptorSeq_t

from IceGrid.InternalServerDescriptor_forward import _IceGrid_InternalServerDescriptor_t

from IceGrid.PropertyDescriptorSeqDict import _IceGrid_PropertyDescriptorSeqDict_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from IceGrid.InternalAdapterDescriptor import InternalAdapterDescriptor
    from IceGrid.InternalDbEnvDescriptor import InternalDbEnvDescriptor
    from IceGrid.PropertyDescriptor import PropertyDescriptor

@dataclass(eq=False)
class InternalServerDescriptor(Value):
    id: str = ""
    application: str = ""
    uuid: str = ""
    revision: int = 0
    sessionId: str = ""
    exe: str = ""
    pwd: str = ""
    user: str = ""
    activation: str = ""
    activationTimeout: str = ""
    deactivationTimeout: str = ""
    processRegistered: bool = False
    options: list[str] = field(default_factory=list)
    envs: list[str] = field(default_factory=list)
    logs: list[str] = field(default_factory=list)
    adapters: list[InternalAdapterDescriptor | None] = field(default_factory=list)
    dbEnvs: list[InternalDbEnvDescriptor | None] = field(default_factory=list)
    properties: dict[str, list[PropertyDescriptor]] = field(default_factory=dict)
    services: list[str] | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::InternalServerDescriptor"

_IceGrid_InternalServerDescriptor_t = IcePy.defineValue(
    "::IceGrid::InternalServerDescriptor",
    InternalServerDescriptor,
    -1,
    (),
    False,
    None,
    (
        ("id", (), IcePy._t_string, False, 0),
        ("application", (), IcePy._t_string, False, 0),
        ("uuid", (), IcePy._t_string, False, 0),
        ("revision", (), IcePy._t_int, False, 0),
        ("sessionId", (), IcePy._t_string, False, 0),
        ("exe", (), IcePy._t_string, False, 0),
        ("pwd", (), IcePy._t_string, False, 0),
        ("user", (), IcePy._t_string, False, 0),
        ("activation", (), IcePy._t_string, False, 0),
        ("activationTimeout", (), IcePy._t_string, False, 0),
        ("deactivationTimeout", (), IcePy._t_string, False, 0),
        ("processRegistered", (), IcePy._t_bool, False, 0),
        ("options", (), _Ice_StringSeq_t, False, 0),
        ("envs", (), _Ice_StringSeq_t, False, 0),
        ("logs", (), _Ice_StringSeq_t, False, 0),
        ("adapters", (), _IceGrid_InternalAdapterDescriptorSeq_t, False, 0),
        ("dbEnvs", (), _IceGrid_InternalDbEnvDescriptorSeq_t, False, 0),
        ("properties", (), _IceGrid_PropertyDescriptorSeqDict_t, False, 0),
        ("services", (), _Ice_StringSeq_t, True, 1)
    ))

setattr(InternalServerDescriptor, '_ice_type', _IceGrid_InternalServerDescriptor_t)

__all__ = ["InternalServerDescriptor", "_IceGrid_InternalServerDescriptor_t"]
