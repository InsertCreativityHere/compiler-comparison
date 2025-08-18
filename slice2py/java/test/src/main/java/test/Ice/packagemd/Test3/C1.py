# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test3.C1_forward import _Test3_C1_t

from dataclasses import dataclass

@dataclass(eq=False)
class C1(Value):
    i: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test3::C1"

_Test3_C1_t = IcePy.defineValue(
    "::Test3::C1",
    C1,
    -1,
    (),
    False,
    None,
    (("i", (), IcePy._t_int, False, 0),))

setattr(C1, '_ice_type', _Test3_C1_t)

__all__ = ["C1", "_Test3_C1_t"]
