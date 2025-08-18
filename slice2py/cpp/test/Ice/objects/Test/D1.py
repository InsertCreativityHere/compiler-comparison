# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.A1_forward import _Test_A1_t

from Test.B1 import B1

from Test.B1_forward import _Test_B1_t

from Test.D1_forward import _Test_D1_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.A1 import A1

@dataclass(eq=False)
class D1(B1):
    a3: A1 | None = None
    a4: A1 | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::D1"

_Test_D1_t = IcePy.defineValue(
    "::Test::D1",
    D1,
    -1,
    (),
    False,
    _Test_B1_t,
    (
        ("a3", (), _Test_A1_t, False, 0),
        ("a4", (), _Test_A1_t, False, 0)
    ))

setattr(D1, '_ice_type', _Test_D1_t)

__all__ = ["D1", "_Test_D1_t"]
