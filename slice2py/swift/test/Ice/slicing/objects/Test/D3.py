# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.B import B

from Test.B_forward import _Test_B_t

from Test.D3_forward import _Test_D3_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

@dataclass(eq=False)
class D3(B):
    sd3: str = ""
    pd3: B | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::D3"

_Test_D3_t = IcePy.defineValue(
    "::Test::D3",
    D3,
    -1,
    (),
    False,
    _Test_B_t,
    (
        ("sd3", (), IcePy._t_string, False, 0),
        ("pd3", (), _Test_B_t, False, 0)
    ))

setattr(D3, '_ice_type', _Test_D3_t)

__all__ = ["D3", "_Test_D3_t"]
