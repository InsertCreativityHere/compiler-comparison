# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.A import A

from Test.A_forward import _Test_A_t

from Test.B_forward import _Test_B_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

@dataclass(eq=False)
class B(A):
    theA: A | None = None

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
    (("theA", (), _Test_A_t, False, 0),))

setattr(B, '_ice_type', _Test_B_t)

__all__ = ["B", "_Test_B_t"]
