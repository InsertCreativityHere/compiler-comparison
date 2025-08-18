# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.L_forward import _Test_L_t

from dataclasses import dataclass

@dataclass(eq=False)
class L(Value):
    data: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::L"

_Test_L_t = IcePy.defineValue(
    "::Test::L",
    L,
    -1,
    (),
    False,
    None,
    (("data", (), IcePy._t_string, False, 0),))

setattr(L, '_ice_type', _Test_L_t)

__all__ = ["L", "_Test_L_t"]
