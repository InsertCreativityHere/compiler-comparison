# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from WithNamespace.C1 import C1

from WithNamespace.C1_forward import _WithNamespace_C1_t

from WithNamespace.C2_forward import _WithNamespace_C2_t

from dataclasses import dataclass

@dataclass(eq=False)
class C2(C1):
    l: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::WithNamespace::C2"

_WithNamespace_C2_t = IcePy.defineValue(
    "::WithNamespace::C2",
    C2,
    -1,
    (),
    False,
    _WithNamespace_C1_t,
    (("l", (), IcePy._t_long, False, 0),))

setattr(C2, '_ice_type', _WithNamespace_C2_t)

__all__ = ["C2", "_WithNamespace_C2_t"]
