# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.A import A

from Test.A_forward import _Test_A_t

from Test.B_forward import _Test_B_t

from dataclasses import dataclass

@dataclass(eq=False)
class B(A):
    requiredB: int = 0
    md: int | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::B"

_Test_B_t = IcePy.defineValue(
    "::Test::B",
    B,
    -1,
    (),
    False,
    _Test_A_t,
    (
        ("requiredB", (), IcePy._t_int, False, 0),
        ("md", (), IcePy._t_int, True, 10)
    ))

setattr(B, '_ice_type', _Test_B_t)

__all__ = ["B", "_Test_B_t"]
