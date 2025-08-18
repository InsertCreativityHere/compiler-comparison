# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.B import B

from Test.B_forward import _Test_B_t

from Test.C_forward import _Test_C_t

from dataclasses import dataclass

@dataclass(eq=False)
class C(B):
    ss: str = ""
    ms: str | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::C"

_Test_C_t = IcePy.defineValue(
    "::Test::C",
    C,
    -1,
    (),
    False,
    _Test_B_t,
    (
        ("ss", (), IcePy._t_string, False, 0),
        ("ms", (), IcePy._t_string, True, 890)
    ))

setattr(C, '_ice_type', _Test_C_t)

__all__ = ["C", "_Test_C_t"]
