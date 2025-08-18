# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.A_forward import _Test_A_t

from dataclasses import dataclass

@dataclass(eq=False)
class A(Value):
    requiredA: int = 0
    ma: int | None = None
    mb: int | None = None
    mc: int | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::A"

_Test_A_t = IcePy.defineValue(
    "::Test::A",
    A,
    -1,
    (),
    False,
    None,
    (
        ("requiredA", (), IcePy._t_int, False, 0),
        ("ma", (), IcePy._t_int, True, 1),
        ("mb", (), IcePy._t_int, True, 50),
        ("mc", (), IcePy._t_int, True, 500)
    ))

setattr(A, '_ice_type', _Test_A_t)

__all__ = ["A", "_Test_A_t"]
