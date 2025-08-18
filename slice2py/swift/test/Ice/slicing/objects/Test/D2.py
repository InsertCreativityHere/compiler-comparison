# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.B import B

from Test.B_forward import _Test_B_t

from Test.D2_forward import _Test_D2_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

@dataclass(eq=False)
class D2(B):
    sd2: str = ""
    pd2: B | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::D2"

_Test_D2_t = IcePy.defineValue(
    "::Test::D2",
    D2,
    -1,
    (),
    False,
    _Test_B_t,
    (
        ("sd2", (), IcePy._t_string, False, 0),
        ("pd2", (), _Test_B_t, False, 0)
    ))

setattr(D2, '_ice_type', _Test_D2_t)

__all__ = ["D2", "_Test_D2_t"]
