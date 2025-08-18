# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from NoNamespace.C1_forward import _NoNamespace_C1_t

from dataclasses import dataclass

@dataclass(eq=False)
class C1(Value):
    i: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::NoNamespace::C1"

_NoNamespace_C1_t = IcePy.defineValue(
    "::NoNamespace::C1",
    C1,
    -1,
    (),
    False,
    None,
    (("i", (), IcePy._t_int, False, 0),))

setattr(C1, '_ice_type', _NoNamespace_C1_t)

__all__ = ["C1", "_NoNamespace_C1_t"]
