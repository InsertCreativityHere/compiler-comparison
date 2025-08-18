# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.WD_forward import _Test_WD_t

from dataclasses import dataclass

@dataclass(eq=False)
class WD(Value):
    a: int | None = 5
    s: str | None = "test"

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::WD"

_Test_WD_t = IcePy.defineValue(
    "::Test::WD",
    WD,
    -1,
    (),
    False,
    None,
    (
        ("a", (), IcePy._t_int, True, 1),
        ("s", (), IcePy._t_string, True, 2)
    ))

setattr(WD, '_ice_type', _Test_WD_t)

__all__ = ["WD", "_Test_WD_t"]
