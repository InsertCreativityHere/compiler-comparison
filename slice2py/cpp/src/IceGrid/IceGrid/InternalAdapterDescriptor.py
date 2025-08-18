# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from IceGrid.InternalAdapterDescriptor_forward import _IceGrid_InternalAdapterDescriptor_t

from dataclasses import dataclass

@dataclass(eq=False)
class InternalAdapterDescriptor(Value):
    id: str = ""
    serverLifetime: bool = False

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::InternalAdapterDescriptor"

_IceGrid_InternalAdapterDescriptor_t = IcePy.defineValue(
    "::IceGrid::InternalAdapterDescriptor",
    InternalAdapterDescriptor,
    -1,
    (),
    False,
    None,
    (
        ("id", (), IcePy._t_string, False, 0),
        ("serverLifetime", (), IcePy._t_bool, False, 0)
    ))

setattr(InternalAdapterDescriptor, '_ice_type', _IceGrid_InternalAdapterDescriptor_t)

__all__ = ["InternalAdapterDescriptor", "_IceGrid_InternalAdapterDescriptor_t"]
