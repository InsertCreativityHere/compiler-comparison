# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from WithNamespace.C1_forward import _WithNamespace_C1_t

from dataclasses import dataclass

@dataclass(eq=False)
class C1(Value):
    i: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::WithNamespace::C1"

_WithNamespace_C1_t = IcePy.defineValue(
    "::WithNamespace::C1",
    C1,
    -1,
    (),
    False,
    None,
    (("i", (), IcePy._t_int, False, 0),))

setattr(C1, '_ice_type', _WithNamespace_C1_t)

__all__ = ["C1", "_WithNamespace_C1_t"]
