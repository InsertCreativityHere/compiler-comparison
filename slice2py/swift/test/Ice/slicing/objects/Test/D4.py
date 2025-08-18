# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.B import B

from Test.B_forward import _Test_B_t

from Test.D4_forward import _Test_D4_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

@dataclass(eq=False)
class D4(B):
    p1: B | None = None
    p2: B | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::D4"

_Test_D4_t = IcePy.defineValue(
    "::Test::D4",
    D4,
    -1,
    (),
    False,
    _Test_B_t,
    (
        ("p1", (), _Test_B_t, False, 0),
        ("p2", (), _Test_B_t, False, 0)
    ))

setattr(D4, '_ice_type', _Test_D4_t)

__all__ = ["D4", "_Test_D4_t"]
