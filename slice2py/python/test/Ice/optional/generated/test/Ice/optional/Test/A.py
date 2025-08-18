# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.optional.Test.A_forward import _generated_test_Ice_optional_Test_A_t

@dataclass(eq=False)
class A(Value):
    requiredA: int = 0
    ma: int | None = None
    mb: int | None = None
    mc: int | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::A"

_generated_test_Ice_optional_Test_A_t = IcePy.defineValue(
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

setattr(A, '_ice_type', _generated_test_Ice_optional_Test_A_t)

__all__ = ["A", "_generated_test_Ice_optional_Test_A_t"]
