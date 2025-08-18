# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.B import B

from Test.B_forward import _Test_B_t

from Test.D1_forward import _Test_D1_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

@dataclass(eq=False)
class D1(B):
    sd1: str = ""
    pd1: B | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::D1"

_Test_D1_t = IcePy.defineValue(
    "::Test::D1",
    D1,
    -1,
    (),
    False,
    _Test_B_t,
    (
        ("sd1", (), IcePy._t_string, False, 0),
        ("pd1", (), _Test_B_t, False, 0)
    ))

setattr(D1, '_ice_type', _Test_D1_t)

__all__ = ["D1", "_Test_D1_t"]
