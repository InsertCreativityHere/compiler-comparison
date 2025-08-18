# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test2.C1 import C1

from Test2.C1_forward import _Test2_C1_t

from Test2.C2_forward import _Test2_C2_t

from dataclasses import dataclass

@dataclass(eq=False)
class C2(C1):
    l: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test2::C2"

_Test2_C2_t = IcePy.defineValue(
    "::Test2::C2",
    C2,
    -1,
    (),
    False,
    _Test2_C1_t,
    (("l", (), IcePy._t_long, False, 0),))

setattr(C2, '_ice_type', _Test2_C2_t)

__all__ = ["C2", "_Test2_C2_t"]
