# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from IceGrid.InternalDbEnvDescriptor_forward import _IceGrid_InternalDbEnvDescriptor_t

from IceGrid.PropertyDescriptorSeq import _IceGrid_PropertyDescriptorSeq_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from IceGrid.PropertyDescriptor import PropertyDescriptor

@dataclass(eq=False)
class InternalDbEnvDescriptor(Value):
    name: str = ""
    properties: list[PropertyDescriptor] = field(default_factory=list)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::InternalDbEnvDescriptor"

_IceGrid_InternalDbEnvDescriptor_t = IcePy.defineValue(
    "::IceGrid::InternalDbEnvDescriptor",
    InternalDbEnvDescriptor,
    -1,
    (),
    False,
    None,
    (
        ("name", (), IcePy._t_string, False, 0),
        ("properties", (), _IceGrid_PropertyDescriptorSeq_t, False, 0)
    ))

setattr(InternalDbEnvDescriptor, '_ice_type', _IceGrid_InternalDbEnvDescriptor_t)

__all__ = ["InternalDbEnvDescriptor", "_IceGrid_InternalDbEnvDescriptor_t"]
